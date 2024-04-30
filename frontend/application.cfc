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
	<cfset application.DSN="danieldecary">


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

