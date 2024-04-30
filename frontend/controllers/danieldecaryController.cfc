component extends="Controller" {

	public struct function homeAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	public struct function aboutAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	public struct function contactAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	public struct function shopAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}
	

	public struct function intranet_loginAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		if (structKeyExists(form, "login")) {
			viewbag.message = this.cfc.intranet.login(trim(form.email), trim(form.pwd));
		} 
		else if (structKeyExists(URL, "logout")) {
			structDelete(session, "user");
			viewbag.message = "You have been successfully logged out.";
		}
		return viewbag;
	}
	
}
