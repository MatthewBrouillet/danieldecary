<!--- add to url ?refreshApp to make the config settings take effect. --->

<cfscript>
	///////////////////////////
	// Local env for Matthew //
	//////////////////////////
	
	/* REQUEST.config = {
		dsn: 'decary',
		env: 'dev'
	}

	REQUEST.root = "http://localhost:8500/danieldecary";
	REQUEST.rootPub = "http://localhost:8500/danieldecary";
	REQUEST.backend = "http://localhost:8500/danieldecary/backend/?lang=fr&module=danieldecary&action=intranet_login";
	REQUEST.path = "C:\Users\matth\Documents\GitHub\danieldecary"; */
	


	////////////////////////////
	// Local env for Francois //
	///////////////////////////
	
	/* REQUEST.config = {
		dsn: 'cidso',
		env: 'dev'
	}
	
	REQUEST.root = "http://localhost:8501/cidso";
	REQUEST.rootPub = "http://localhost:8501/cidso";
	REQUEST.backend = "http://localhost:8501/cidso/backend/?lang=en&module=cidso&action=intranet_login";
	REQUEST.path = "C:\dev\github\cidso";  */


	//////////////
	// Beta env //
	//////////////
	
	/* REQUEST.config = {
		dsn: 'decary',
		env: 'beta'
	}
	REQUEST.root = "https://beta.danieldecary.ca";
	REQUEST.rootPub = "https://beta.danieldecary.ca";
	REQUEST.backend	=	"https://beta.danieldecary.org/backend/en/danieldecary/intranet_login";
	REQUEST.path = "D:\home\danieldecary.ca\wwwroot"; */
	

	//////////////
	// Live env //
	//////////////
	REQUEST.config = {
		dsn: 'decary',
		env: 'prod'
	}
	REQUEST.root = "https://www.danieldecary.ca";
	REQUEST.rootPub = "https://www.danieldecary.ca";
	REQUEST.backend	=	"https://www.danieldecary.org/backend/en/danieldecary/intranet_login";
	REQUEST.path = "D:\home\danieldecary.ca\wwwroot";
</cfscript>