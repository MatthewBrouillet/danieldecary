component {
	property name="env" type="string";
	property name="lang" type="string";

	public component function init(required string env, required string lang){
		this.env = arguments.env;
		this.lang = arguments.lang;
		return this;
	}

	public string function getAssetRoot() {
		return request.assetRoot
	}

	public string function getUrlRoot() {
		return request.root
	}
	
	public string function getPath() {
		return request.path
	}

	public string function getUrl(required string lang, required string module, string section = "", required string action,  string param="") {
		var url = getUrlRoot()
		url &= this.env eq "dev" ? "/frontend/?lang=#lang#" : "/#lang#"
		url &= this.env eq "dev" ? "&module=#module#" : "/#module#"
		if (section neq "") {
			url &= this.env eq "dev" ? "&section=#section#" : "/#section#"
		}
		url &= this.env eq "dev" ? "&action=#action#" : "/#action#"
		if (param neq "") {
			url &= this.env eq "dev" ? "&param=#param#" : "/#param#"
		}
		return url
	}

	public string function getUrlFr(required string lang, required string module, string section = "", required string action,  string param="") {
		var url = getUrlRoot()
		url &= this.env eq "dev" ? "/frontend/?lang=#lang#" : "/#lang#"
		if (module eq "danieldecary") {
			url &= this.env eq "dev" ? "&module=#module#" : "/danieldecary"
		}
		else if (module eq "services") {
			url &= this.env eq "dev" ? "&module=#module#" : "/services"
		}
		else {
			url &= this.env eq "dev" ? "&module=#module#" : "/#module#"
		}
		if (section neq "") {
			url &= this.env eq "dev" ? "&section=#section#" : "/#section#"
		}
		/* module danieldecary */
		if (action eq "home") {
			url &= this.env eq "dev" ? "&action=#action#" : "/accueil"
		}
		else if (action eq "contact") {
			url &= this.env eq "dev" ? "&action=#action#" : "/contact"
		}
		else if (action eq "about") {
			url &= this.env eq "dev" ? "&action=#action#" : "/a-propos"
		}
		else if (action eq "shop") {
			url &= this.env eq "dev" ? "&action=#action#" : "/boutique"
		}
		/* module services */
		else if (action eq "birkman") {
			url &= this.env eq "dev" ? "&action=#action#" : "/birkman"
		}
		else if (action eq "conferences") {
			url &= this.env eq "dev" ? "&action=#action#" : "/conferences"
		}
		else if (action eq "counselling") {
			url &= this.env eq "dev" ? "&action=#action#" : "/counselling"
		}
		else if (action eq "training") {
			url &= this.env eq "dev" ? "&action=#action#" : "/formation"
		}
		else {
			url &= this.env eq "dev" ? "&action=#action#" : "/#action#"
		}
		if (param neq "") {
			url &= this.env eq "dev" ? "&param=#param#" : "/#param#"
		}
		return url
	}


	public string function getBackendConnexionUrl() {
		var url = getUrl("connexion", "accueil");
		url = replace(url, "backend", "backend");
		return url;
	}


	public array function convertQuery2Array(required query q) {
		var a = []
		for(row in q) {
			var temp = {}
			for (column in q.columnList) {
				temp[lcase(column)] = q[column][q.currentRow]
			}
			arrayAppend(a, temp)
		}
		return a
	}


	public struct function convertQuery2Struct(required query q, required string key, required string value) {
		var s = {}
		for(row in q) {
			s[row[arguments.key]] = row[arguments.value]
		}
		return s
	}


	public struct function convertQuery2StructEnhanced(required query q, required string key, required string keyList) {
		var s = {}
		var arrKeys = listToArray(arguments.keyList)
		for(row in q) {
			for (key2 in arrKeys) {
				s[row[arguments.key]][key2] = row[key2]
			}			
		}
		return s
	}


	public string function getPagination(required urlbase, required page, required total, required numberPerPage) {
		if (arguments.total == 0) {
			return "";
		}
		var pagination = "";
		var totalPage = ceiling(arguments.total / arguments.numberPerPage);

		if (arguments.page != 1) {
			pagination &= '<span><a href="#arguments.urlbase#&page=#max(1, arguments.page - 10)#"><<</a></span>'
		}

		if (totalPage <= 20) {
			for (var i = 1; i <= totalPage; i++) {
				pagination &= '<span><a href="#arguments.urlbase#&page=#i#">#(arguments.page eq i ? "<b>#i#</b>" : i)#</a></span>'
			}
		} else {
			for (var i = 1; i <= 5; i++) {
				pagination &= '<span><a href="#arguments.urlbase#&page=#i#">#(arguments.page eq i ? "<b>#i#</b>" : i)#</a></span>';
			}

			if (arguments.page + 2 > 5 and arguments.page - 2 < totalPage - 4) {
				if (max(6, arguments.page - 2) > 6) {
					pagination &= "...";
				}

				for (var i = max(6, arguments.page - 2); i <= min(totalPage - 5, arguments.page + 2); i++) {
					pagination &= '<span><a href="#arguments.urlbase#&page=#i#">#(arguments.page eq i ? "<b>#i#</b>" : i)#</a></span>';
				}

				if (min(totalPage - 5, arguments.page + 2) lt totalPage - 5) {
					pagination &= " ...";
				}
			} else {
				if (arguments.page lte 5 or arguments.page gte totalPage - 4) {
					pagination &= " ...";
				}
			}

			for (var i = totalPage - 4; i <= totalPage; i++) {
				pagination &= '<span><a href="#arguments.urlbase#&page=#i#">#(arguments.page eq i ? "<b>#i#</b>" : i)#</a></span>';
			}
		}

		if (arguments.page != totalPage) {
			pagination &= '<span><a href="#arguments.urlbase#&page=#min(totalPage, arguments.page + 10)#">>></a></span>'
		}

		pagination &= "<br>Showing #(page-1) * numberPerPage + 1# to #min(page * numberPerPage, total)# of #total# entries";

		return pagination;
	}


	public string function formValueKeeper(required fieldName, optionValue = '', fieldType = 'text'){
		var str = ''
		if (structKeyExists(FORM, arguments.fieldName) OR structKeyExists(URL, arguments.fieldName)) {
			var fieldValue = structKeyExists(URL, arguments.fieldName) ? URL[arguments.fieldName] : FORM[arguments.fieldName]
			switch (arguments.fieldType) {
				case 'radio':
				case 'checkbox':
					if (fieldValue == arguments.optionValue) {
						str = 'checked'
					}
					break
				case 'select':
					if (fieldValue == arguments.optionValue) {
						str = 'selected'
					}
					break
				case 'selectMultiple':
					if (listFindNoCase(fieldValue, arguments.optionValue)) {
						str = 'selected'
					}
					break
				default:
					str = fieldValue
					break
			}
		}
		return str
	}


	public string function getBreadcrumb(required string currentLabel, array data = []) {
		var items = ''
		for (item in data) {
			items &= '
				<li>
					<a href="#item.link#">#item.label#</a>
					<i class="fa fa-angle-right"></i>
				</li>
			'
		}
		var str = '
			<ul class="page-breadcrumb">
				<li>
					<i class="fa fa-home"></i>
					<a href="#getUrl('dashboard')#">Home</a>
					<i class="fa fa-angle-right"></i>
				</li>
				#items#
				<li>
					<a href="##">#currentLabel#</a>
				</li>
			</ul>
		'
		return str
	}


	public string function getSortImage (struct sorts, string key) {
		var imageName = "sort_both.png"
		if (structKeyExists(arguments.sorts, key)) {
			imageName = "sort_#lCase(sorts[key])#.png"
		}
		return imageName
	}

}