<cfset mydatabase = REQUEST.config.dsn>

<!--- section is optional, but module and action are required --->
<cfif not StructKeyExists(url, "module") and not StructKeyExists(form, "module")>
	<cfset activeModule = "">
<cfelse>
	<cfset activeModule = trim(StructKeyExists(url,"module")?url.module:form.module)>
</cfif>

<cfif not StructKeyExists(url, "section") and not StructKeyExists(form,"section")>
	<cfset activeSection = "">
<cfelse>
	<cfset activeSection = trim(StructKeyExists(url,"section")?url.section:form.section)>
</cfif>

<cfif not StructKeyExists(url, "action") and not StructKeyExists(form,"action")>
	<cfset activeAction = "">
<cfelse>
	<cfset activeAction = trim(StructKeyExists(url,"action")?url.action:form.action)>
</cfif>

<cfif activeAction eq "" or activeModule eq "">
	<!--- redirect to 404 page if module or action undefined --->
	<cfset activeModule = "danieldecary">
	<cfset activeSection = "">
	<cfset activeAction = "p404">
</cfif>

<cfset activeControllerPath = "./controllers/#activeModule#Controller.cfc">
<cfif not fileExists(expandPath(activeControllerPath))>
	<!--- Unregistered Module: redirect to 404 page --->
	<cfset activeModule = "danieldecary">
	<cfset activeSection = "">
	<cfset activeAction = "p404">
</cfif>

<!--- language setting --->
<cfset activeLang = StructKeyExists(url,"lang") ? url.lang : "fr">

<!--- cache the mvc objects in application scope, except dev environment or manually refresh app --->
<!--- <cfif not structKeyExists(application, "mvc") or env eq "dev" or structKeyExists(url, "refreshApp")> --->
<!--- disabled mvc objects caching for beta server --->
<cfif true>
	<cfset application.mvc = {
		"controllers": {},
		"views": {}
	}>
</cfif>

<!--- get active controller --->
<cfif not structKeyExists(application.mvc.controllers, "#activeModule#Controller")>
	<cfset application.mvc.controllers["#activeModule#Controller"] = createObject("component", "controllers.#activeModule#Controller").init(REQUEST.config.env, REQUEST.config.dsn, activeLang)>
</cfif>
<cfset activeController = application.mvc.controllers["#activeModule#Controller"]>


<cfif not structKeyExists(activeController, "#activeSection##activeAction#Action")>
	<!--- Unknown action: redirect to 404 page --->
	<cfset activeModule = "danieldecary">
	<cfset activeSection = "">
	<cfset activeAction = "p404">
</cfif>

<!--- call the active method --->
<cfinvoke  
    component="#activeController#"  
    method="#activeSection##activeAction#Action"
    returnVariable="viewbag"> 

<cfif isStruct(viewbag)>
	<cfset viewbag.module = activeModule>
	<cfset viewbag.env = REQUEST.config.env>
	<cfset viewbag.db = REQUEST.config.dsn>
</cfif>

<!--- renderer the page --->
<cfset pageType = isDefined("viewbag.pageType") ? viewbag.pageType : "normal">
<cfif structKeyExists(url,"ajax") or structKeyExists(form,"ajax")>
	<cfset pageType = "ajax">
</cfif>

<cfif structKeyExists(url,"dump")>
	<cfdump var="#viewbag#">
	<cfabort>
</cfif>

<!--- CMS UPDATE --->
<CFIF StructKeyExists(FORM, 'cmsUpdate')>
	<cfinvoke component="#viewbag.cfc.cms#" method = "cmsUpdate">
		<cfinvokeargument name="cmsID" value="#form.cmsID#"> 
		<cfinvokeargument name="content_en" value="#form.content_en#">
		<cfinvokeargument name="content_fr" value="#form.content_fr#">
		<cfinvokeargument name="display" value="#Form.display#">
		<cfinvokeargument name="picture" value="#form.picture#">
		<cfinvokeargument name="subTitle_en" value="#form.subTitle_en#">
		<cfinvokeargument name="subTitle_fr" value="#form.subTitle_fr#">
		<cfinvokeargument name="title_en" value="#form.title_en#">
		<cfinvokeargument name="title_fr" value="#form.title_fr#">
	</cfinvoke>

	<CFIF Len(Form.picture) GT 4>
		<CFFILE ACTION="UPLOAD" FILEFIELD="picture" DESTINATION="#request.path#\temp" NAMECONFLICT="OVERWRITE" >
		<cfset document1 = "#request.Path#\temp\#file.serverfile#">
		<cfset document2 = "#request.Path#\images\cms\#URL.module#_#URL.action#_#Form.cmsID#.#File.ClientFileExt#">
		<cffile action="COPY" source=#document1# destination=#document2#>
		<cffile action="DELETE" file=#document1#> 
		<CFSET message = "Picture has been updated successfully">
	</CFIF>

</CFIF>

<cfswitch expression="#pageType#">
	<cfcase value="normal">
		<cfset page = isDefined("viewbag.page") ? viewbag.page : activeAction>
		<cfif activeSection eq "">
			<cfset pageFile = "views/pages/#activeModule#/#page#View.cfm">
		<cfelse>
			<cfset pageFile = "views/pages/#activeModule#/#activeSection#/#page#View.cfm">
		</cfif>

		<cfsavecontent variable="mainContent">
			<cfif structKeyExists(application.mvc.views, page)>
				<cfinclude template="#application.mvc.views[page]#">
			<cfelse>
				<cfif not fileExists(expandPath(pageFile))>
					<cfoutput>Warning! Can not find view page: #pageFile#</cfoutput>
				<cfelse>
					<cfset application.mvc.views[page] = pageFile>
					<cfinclude template="#application.mvc.views[page]#">
				</cfif>
			</cfif>					
		</cfsavecontent>

		<cfset template = isDefined("viewbag.template") ? viewbag.template : "default">
		<cfinclude template="views/templates/#template#.cfm">
	</cfcase>

	<cfcase value="ajax">
		<cfswitch expression="#viewbag.dataType#">
			<cfcase value="page">
				<cfinclude template="views/pages/#activeModule#/#activeAction#AjaxView.cfm">
			</cfcase>
			<cfcase value="html">
				<cfoutput>#viewbag.data#</cfoutput>
			</cfcase>
			<cfcase value="json">
				<cfoutput>#serializeJSON(viewbag.data)#</cfoutput>
			</cfcase>
			<cfdefaultcase>
				<cfoutput>#viewbag.data#</cfoutput>
			</cfdefaultcase>
		</cfswitch>
	</cfcase>

	<cfcase value="file">
		<cfheader name="Content-Disposition" value="attachment; filename=#viewbag.fileName#">
		<cfcontent type="#viewbag.contentType#; charset=utf-8" file="#viewbag.filePath#">	
	</cfcase>

	<cfdefaultcase>
		<cfoutput>Unknown page type #pageType#</cfoutput>
	</cfdefaultcase>
</cfswitch>