component extends="Controller" {

	public struct function birkmanAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	public struct function conferencesAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	public struct function counsellingAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	public struct function trainingAction() {
		var viewbag = initViewbag();
		viewbag.cfc = this.cfc;
		return viewbag;
	}

	
}
