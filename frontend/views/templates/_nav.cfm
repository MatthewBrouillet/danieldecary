<cfoutput>
	<CFIF URL.lang EQ "fr">
		<div class="header-row">
			<div class="header-nav header-nav-line header-nav-bottom-line header-nav-dropdowns-dark header-nav-light-text order-2 order-lg-1">
				<div class="header-nav-main header-nav-main-mobile-dark header-nav-main-square header-nav-main-dropdown-no-borders header-nav-main-effect-2 header-nav-main-sub-effect-1">
					<nav class="collapse">
						<ul class="nav nav-pills" id="mainNav">
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "home">active</CFIF>" href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a>
							</li>
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "about">active</CFIF>" href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'about')#">À propos</a>
							</li>
							<!--- <li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "services">active</CFIF>" href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'services')#">Services</a>
							</li> --->
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.module EQ "services">active</CFIF>" href="#viewbag.helper.getUrlFr('fr', 'services', '', 'counselling')#">Services</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#viewbag.helper.getUrlFr('fr', 'services', '', 'counselling')#">Counselling / Web Thérapie</a></li>
									<li><a class="dropdown-item" href="#viewbag.helper.getUrlFr('fr', 'services', '', 'conferences')#">Conférences / Retraites</a></li>
									<li><a class="dropdown-item" href="#viewbag.helper.getUrlFr('fr', 'services', '', 'training')#">Formation en relation d'aide</a></li>
									<li><a class="dropdown-item" href="#viewbag.helper.getUrlFr('fr', 'services', '', 'birkman')#">Méthode Birkman</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "contact">active</CFIF>" href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'contact')#">Contact</a>
							</li>
							<li><a class="dropdown-item " href=#viewbag.helper.getUrl('en', URL.module, URL.section, URL.action, URL.param)#>EN</a></li>

						</ul>
					</nav>
				</div>
				<!--- <ul class="header-social-icons social-icons d-none d-sm-block">
					<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
					<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
				</ul> --->
				<button class="btn header-btn-collapse-nav" data-bs-toggle="collapse" data-bs-target=".header-nav-main nav">
					<i class="fas fa-bars"></i>
				</button>
			</div>
			<!--- <div class="header-nav-features order-1 order-lg-2">
			<div class="header-nav-feature header-nav-features-social-icons d-inline-flex">
				<ul class="header-social-icons social-icons d-none d-sm-block social-icons-clean ms-0">
					<li class="social-icons-facebook"><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'shop')#"><i class="fas fa-cart-plus text-4 text-color-light"></i></a></li>
					<!--- <li class="social-icons-facebook"><a href="https://www.facebook.com/CIDSUO" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
					<li class="social-icons-twitter"><a href="https://www.linkedin.com/company/clinique-interdisciplinaire-en-droit-social-social-rights-interdisciplinary-clinic/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li> --->
				</ul>
			</div> --->
		</div>
	<CFELSE>
		<div class="header-row">
			<div class="header-nav header-nav-line header-nav-bottom-line header-nav-dropdowns-dark header-nav-light-text order-2 order-lg-1">
				<div class="header-nav-main header-nav-main-mobile-dark header-nav-main-square header-nav-main-dropdown-no-borders header-nav-main-effect-2 header-nav-main-sub-effect-1">
					<nav class="collapse">
						<ul class="nav nav-pills" id="mainNav">
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "home">active</CFIF>" href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a>
							</li>
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "about">active</CFIF>" href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'about')#">About</a>
							</li>
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.module EQ "services">active</CFIF>" href="#viewbag.helper.getUrl('en', 'services', '', 'counselling')#">Services</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="#viewbag.helper.getUrl('en', 'services', '', 'counselling')#">Counselling / Web Therapy</a></li>
									<li><a class="dropdown-item" href="#viewbag.helper.getUrl('en', 'services', '', 'conferences')#">Conferences / Retreats</a></li>
									<li><a class="dropdown-item" href="#viewbag.helper.getUrl('en', 'services', '', 'training')#">Counselling Training</a></li>
									<li><a class="dropdown-item" href="#viewbag.helper.getUrl('en', 'services', '', 'birkman')#">Birkman Method</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a class="dropdown-item dropdown-toggle <CFIF URL.action EQ "contact">active</CFIF>" href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#">Contact</a>
							</li>
							<li><a class="dropdown-item " href=#viewbag.helper.getUrlFr('fr', URL.module, URL.section, URL.action, URL.param)#>FR</a></li>
						</ul>
					</nav>
				</div>
				<!--- <ul class="header-social-icons social-icons d-none d-sm-block">
					<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
					<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li>
				</ul> --->
				<button class="btn header-btn-collapse-nav" data-bs-toggle="collapse" data-bs-target=".header-nav-main nav">
					<i class="fas fa-bars"></i>
				</button>
			</div>
			<!--- <div class="header-nav-features order-1 order-lg-2">
			<div class="header-nav-feature header-nav-features-social-icons d-inline-flex">
				<ul class="header-social-icons social-icons d-none d-sm-block social-icons-clean ms-0">
					<li class="social-icons-facebook"><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'shop')#"><i class="fas fa-cart-plus text-4 text-color-light"></i></a></li>
					<!--- <li class="social-icons-facebook"><a href="https://www.facebook.com/CIDSUO" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
					<li class="social-icons-twitter"><a href="https://www.linkedin.com/company/clinique-interdisciplinaire-en-droit-social-social-rights-interdisciplinary-clinic/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a></li> --->
				</ul>
			</div> --->
		</div>
	</CFIF>
</cfoutput>