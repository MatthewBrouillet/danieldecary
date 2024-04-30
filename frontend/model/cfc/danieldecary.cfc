<cfcomponent displayname="danieldecary" >
	<cfset This.dsn = REQUEST.config.dsn>
	<cfset SetLocale("French (Canadian)")>
	
	<cffunction name="PROJECTQUERY" access="remote" returntype="query" >
		<cfargument name="lang" required="true">
		<CFQUERY NAME="PROJECTQUERY" DATASOURCE="#This.DSN#">
		SELECT projectID
        FROM PROJECTTABLE
		
		</CFQUERY>
		<CFRETURN PROJECTQUERY>
	</cffunction>

	

</cfcomponent>