<cfparam  name="URL.section" default="">
<cfparam  name="URL.param" default="">

<!DOCTYPE html>
<html>
	<head>
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />

		<title>Daniel Décary</title>	

		<!-- Favicon -->
		<!--- <link rel="shortcut icon" href="<cfoutput>#request.root#</cfoutput>/img/favicon.ico" type="image/x-icon" />
		<link rel="apple-touch-icon" href="<cfoutput>#request.root#</cfoutput>/img/apple-touch-icon.png"> --->


		<link rel="apple-touch-icon" sizes="180x180" href="<cfoutput>#request.root#</cfoutput>/img/favicon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="<cfoutput>#request.root#</cfoutput>/img/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="<cfoutput>#request.root#</cfoutput>/img/favicon/favicon-16x16.png">
		<link rel="manifest" href="<cfoutput>#request.root#</cfoutput>/img/favicon/site.webmanifest">
		<link rel="mask-icon" href="<cfoutput>#request.root#</cfoutput>/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
		<meta name="msapplication-TileColor" content="#da532c">
		<meta name="theme-color" content="#ffffff">



		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1.0, shrink-to-fit=no">

		<!-- Web Fonts  -->
		<link id="googleFonts" href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800%7CShadows+Into+Light&display=swap" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/fontawesome-free/css/all.min.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/animate/animate.compat.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/css/theme.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/css/theme-elements.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/css/theme-blog.css">
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/css/theme-shop.css">

		<!-- Current Page CSS -->
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/vendor/circle-flip-slideshow/css/component.css">

		<!-- Skin CSS -->
		<link id="skinCSS" rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/css/skins/default.css">

		<link rel="apple-touch-icon" sizes="180x180" href="<cfoutput>#request.Root#</cfoutput>/img/favicon/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="<cfoutput>#request.Root#</cfoutput>/img/favicon/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="<cfoutput>#request.Root#</cfoutput>/img/favicon/favicon-16x16.png">
		<link rel="manifest" href="<cfoutput>#request.Root#</cfoutput>/img/favicon/site.webmanifest">

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="<cfoutput>#request.root#</cfoutput>/css/custom.css">

		<!-- Head Libs -->
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/modernizr/modernizr.min.js"></script>

	</head>

	<body data-plugin-page-transition>
		<div class="body">
			<header id="header" class="header-transparent header-effect-shrink header-no-border-bottom" data-plugin-options="{'stickyEnabled': true, 'stickyEffect': 'shrink', 'stickyEnableOnBoxed': true, 'stickyEnableOnMobile': false, 'stickyChangeLogo': true, 'stickyStartAt': 30, 'stickyHeaderContainerHeight': 70}" style="height: 100px;">
				<div class="header-body border-top-0 bg-dark box-shadow-none" style="position: fixed; top: 0px;">
					<div class="header-container container" style="height: 100px; min-height: 0px;">
						<div class="header-row">
							<div class="header-column">
								<div class="header-row">
									<div class="header-logo" <!--- style="width: 100px; height: 48px;" --->>
										<CFIF URL.lang EQ "en">
											<a href="<cfoutput>#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#</cfoutput>">
												<img alt="Porto" width="100" height="70" data-sticky-width="86" data-sticky-height="58" src="<cfoutput>#request.root#</cfoutput>/img/logos/logoDD_en-dark.png" <!--- style="top: 0px; width: 100px; height: 48px;" --->>
											</a>
										<CFELSE>
											<a href="<cfoutput>#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#</cfoutput>">
												<img alt="Porto" width="100" height="70" data-sticky-width="86" data-sticky-height="58" src="<cfoutput>#request.root#</cfoutput>/img/logos/logoDD_fr-dark.png" <!--- style="top: 0px; width: 100px; height: 48px;" --->>
											</a>
										</CFIF>
									</div>
								</div>
							</div>
							<div class="header-column justify-content-end">
								
								<cfinclude template="_nav.cfm">

							</div>
						</div>
					</div>
				</div>
			</header>

		<cfif isDefined("mainContent")>
			<cfoutput> #mainContent#</cfoutput>
		<cfelse>
			Undefined main content
		</cfif>

		<cfinclude template="_footer.cfm">

    </div>

		<!-- Vendor -->
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery/jquery.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery.appear/jquery.appear.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery.easing/jquery.easing.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery.cookie/jquery.cookie.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery.validation/jquery.validate.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/jquery.gmap/jquery.gmap.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/lazysizes/lazysizes.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/isotope/jquery.isotope.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/owl.carousel/owl.carousel.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/vide/jquery.vide.min.js"></script>
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/vivus/vivus.min.js"></script>

		<!-- Theme Base, Components and Settings -->
		<script src="<cfoutput>#request.root#</cfoutput>/js/theme.js"></script>

		<!-- Circle Flip Slideshow Script -->
		<script src="<cfoutput>#request.root#</cfoutput>/vendor/circle-flip-slideshow/js/jquery.flipshow.min.js"></script>
		<!-- Current Page Views -->
		<script src="<cfoutput>#request.root#</cfoutput>/js/views/view.home.js"></script>

		<!-- Theme Custom -->
		<script src="<cfoutput>#request.root#</cfoutput>/js/custom.js"></script>

		<!-- Theme Initialization Files -->
		<script src="<cfoutput>#request.root#</cfoutput>/js/theme.init.js"></script>

	</body>
</html>