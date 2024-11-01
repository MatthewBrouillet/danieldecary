<cfcomponent output="false">
	<!--- TEMPLATE PORTO 
            themeforest-f3s8UiVf-porto-responsive-html5-template --->
	<cfprocessingdirective pageencoding="utf-8" />

	<cfset THIS.Name = "danieldecary">
	<cfset THIS.ApplicationTimeout = CreateTimeSpan(0, 2, 00, 0)>
	<cfset THIS.SessionManagement = "Yes">
	<cfset THIS.SessionTimeout = CreateTimeSpan(0, 2, 00, 0)>
	<cfset THIS.ClientManagement = "No">
	<cfset this.mappings['/model'] = ExpandPath("./model") />
	<cfset this.mappings['/views'] = ExpandPath("./views") />
	<cfset application.DSN="decary">


	<cfsetting
		requesttimeout="20"
		showdebugoutput="true"
		enablecfoutputonly="false"
		/>

	<cffunction
		name="OnApplicationStart"
		access="public"
		returntype="boolean"
		output="false">		
		<cfreturn true />
	</cffunction>

	<cffunction
		name="OnSessionStart"
		access="public"
		returntype="void"
		output="false"
		hint="I initialize the session.">
		
	</cffunction>

	<cffunction
		name="OnRequestStart"
		access="public"
		returntype="boolean" 
		output="false"
		hint="I initialize the page request.">

		<!--- DEFINING ARGUMENTS --->
		<cfargument
			name="Page"
			type="string"
			required="true"
			hint="Page requested by visitor."
			/>

		<cfinclude template="config/env.cfm">
		
		<cfif StructKeyExists(URL, 'lang')>
			<cfset SESSION.lang = URL.lang EQ "fr" ? "fr" : "en">
		<cfelse>
			<cfset SESSION.lang = "en">
			<cfset URL.lang = "en">
		</cfif>

		<!--- DATABASE VARIABLES --->
		<cfset APPLICATION.DSN="decary">
		<cfset APPLICATION.BD_usager="">
		<cfset APPLICATION.BD_mdp="">

	
		<!--- URLS AND PATHS --->
		<!--- <cfif CGI.HTTP_HOST EQ '127.0.0.1'>
			<cfset APPLICATION.Root		=	"http://127.0.0.1/decary">
			<cfset APPLICATION.Path		=	"C:\dev\decary">
			<cfset APPLICATION.TITLE	=	"Daniel Decary">
			<!--- <cfset APPLICATION.cfcClients 	=	"decary.cfc.clients"> --->
			<!--- <cfset APPLICATION.cfcCorrespondants 	=	"decary.cfc.correspondants"> --->
		<!--- <cfelse> --->
		<cfelseif CGI.HTTP_HOST EQ 'danieldecary.com' OR CGI.HTTP_HOST EQ 'www.danieldecary.com' OR CGI.HTTP_HOST EQ 'danieldecary.ca' OR CGI.HTTP_HOST EQ 'www.danieldecary.ca'>
			<cfset APPLICATION.Root		=	"https://beta.danieldecary.ca">
			<cfset APPLICATION.Path		=	"C:\sites\decary">
			<cfset APPLICATION.TITLE	=	"Daniel Decary">
			<!--- <cfset APPLICATION.cfcClients 	=	"cfc.clients"> --->
			<!--- <cfset APPLICATION.cfcCorrespondants 	=	"cfc.correspondants"> --->
		</cfif> --->
		
		<!--- <cfset APPLICATION.PathCFC			=	"#APPLICATION.Path#\cfc">
		<cfset APPLICATION.EmailDeveloppeur	=	"francois@creationstouche.com">
		<cfset APPLICATION.EmailEnvoi		=	"ddecary@gmail.com"> --->
		

		<!--- TO REINITIALIZE PAGE --->
		<cfif StructKeyExists(URL, 'restart')> 
			<cfset THIS.OnApplicationStart()>
		</cfif>
		
		<!--- DECONNEXION --->
		<cfif StructKeyExists(URL, 'logout')>
			<cfset StructClear(SESSION) />
		</cfif>
		
		<cfreturn true />
	</cffunction>

</cfcomponent>

