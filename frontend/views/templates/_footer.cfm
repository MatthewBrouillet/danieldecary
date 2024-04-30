	<cfoutput>
		<footer id="footer" style="background-color: ##2c2e35;">
			<div class="container my-1">
				<div class="row py-5">
					<div class="col-md-4 col-lg-4 mb-5 mb-lg-0">
						<CFIF URL.lang EQ "en">
							<img src="#request.root#/img/logos/logoDD_en-dark.png">
						<CFELSE>
							<img src="#request.root#/img/logos/logoDD_fr-dark.png">
						</CFIF>

						<p class="text-5 mb-1 pt-2"><a href="tel:5142658115" class="text-decoration-none">(514) 265-8115</a></p>
						<p class="text-5 mb-0"><a href="mailto:info@porto.com">ddecary@gmail.com</a></p>
					</div>
					<div class="col-md-5 col-lg-5 mb-5 mb-lg-0">
						<CFIF URL.lang EQ "en">
							<h5 class="text-6 text-transform-none font-weight-semibold text-color-light mb-4">Navigation</h5>
							<div class="row">
								<div class="col-12">
									<p class="mb-1"><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#" class="text-4 link-hover-style-1">Home</a></p>
									<p class="mb-1"><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'about')#" class="text-4 link-hover-style-1">About</a></p>
									<p class="mb-1"><a href="#viewbag.helper.getUrl('en', 'services', '', 'counselling')#" class="text-4 link-hover-style-1">Services</a></p>
									<p class="mb-1"><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#" class="text-4 link-hover-style-1">Contact</a></p>
								</div>
							</div>
						<CFELSE>
							<h5 class="text-6 text-transform-none font-weight-semibold text-color-light mb-4">Naviguation</h5>
							<div class="row">
								<div class="col-12">
									<p class="mb-1"><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#" class="text-4 link-hover-style-1">Accueil</a></p>
									<p class="mb-1"><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'about')#" class="text-4 link-hover-style-1">À propos</a></p>
									<p class="mb-1"><a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'counselling')#" class="text-4 link-hover-style-1">Services</a></p>
									<p class="mb-1"><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'contact')#" class="text-4 link-hover-style-1">Contact</a></p>
								</div>
							</div>
						</CFIF>
					</div>
					<div class="col-lg-3">
						<h5 class="text-6 text-transform-none font-weight-semibold text-color-light mb-4"><CFIF URL.lang EQ "en">Social Media<CFELSE>Médias sociaux</CFIF></h5>
						<ul class="footer-social-icons social-icons m-0">
							<li class="social-icons-facebook"><a href="https://www.facebook.com/daniel.decary.1" target="_blank" title="Facebook"><i class="fab fa-facebook-f text-2"></i></a></li>
							<!--- <li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter text-2"></i></a></li>
							<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fab fa-linkedin-in text-2"></i></a></li> --->
						</ul>
					</div>
				</div>
			<div class="container">
				<div class="footer-copyright footer-copyright-style-2 pb-0 " style="background-color: ##2c2e35;">
					<div class="py-2">
						<div class="row py-1">
							<div class="col d-flex align-items-center justify-content-center mb-4 mb-lg-0">
								<p style="color: white;">© Copyright #DatePart("yyyy",Now())#. <CFIF URL.lang EQ "fr">Tous droits réservés.<CFELSE>All rights reserved.</CFIF></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>





	</cfoutput>