	<cfsetting showDebugOutput = "yes">

	<CFIF URL.langue EQ "fr">
		<cfset SetLocale("French (Canadian)")>
	<CFELSE>
		<cfset SetLocale("English (Canadian)")>
	</CFIF>

	<CFSET file_name_en = "#APPLICATION.Root#/en/contact">
	<CFSET page_name_en = "Daniel D&eacute;cary - Counseling, Web Therapy, Training, Birkman Consultant  ">
	<CFSET file_name_fr = "#APPLICATION.Root#/fr/contact">
	<CFSET page_name_fr = "Daniel D&eacute;cary - Counseling, Web th&eacute;rapie, Formation, Consultant Birkman">
	
	<CFSET message="">
	
	<cfparam name="form.nom" type="string" default="" />
	<cfparam name="form.courriel" type="string" default="" />
	<cfparam name="form.telephone" type="string" default="" />
	<cfparam name="form.service" type="string" default="" />
	<cfparam name="form.message" type="string" default="" />
	
	<cfscript>
	/**
	 * Sample CFML code to use reCAPTCHA V2.
	 *
	 * @copyright Copyright (c) 2014, Stephen J. Withington, Jr.
	 * @link      https://github.com/stevewithington/ReCAPTCHA
	 * 
	 * Permission is hereby granted, free of charge, to any person obtaining a copy
	 * of this software and associated documentation files (the "Software"), to deal
	 * in the Software without restriction, including without limitation the rights
	 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	 * copies of the Software, and to permit persons to whom the Software is
	 * furnished to do so, subject to the following conditions:
	 *
	 * The above copyright notice and this permission notice shall be included in
	 * all copies or substantial portions of the Software.
	 *
	 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	 * THE SOFTWARE.
	 */
	try {
	  creds = DeserializeJSON(FileRead(ExpandPath('creds.json')));
	} catch(any e) {
	  creds = {'siteKey'='6Lc3em8UAAAAABqDfp2md8YGowaZBYVW0sE3M0iX', 'secret'='6Lc3em8UAAAAAGmFSnoO7v2hG8bVNN8aWvgx0fhU'};
	}
	
	if ( StructKeyExists(form, 'g-recaptcha-response') ) {
	  reCaptcha = new cfc.recaptcha(creds.secret);
	  resp = reCaptcha.verifyResponse(response=form['g-recaptcha-response'], remoteip=cgi.remote_addr);
	}
	</cfscript>
	<CFIF URL.langue EQ "fr">
		<CFSET lang = "fr">
	<CFELSE>
		<CFSET lang = "en">
	</CFIF>
	
	<CFIF StructKeyExists(Form,'soumettre_formulaire')>
		<cfif IsDefined('resp') and resp.success>

			<cfinvoke component="#APPLICATION.cfccorrespondants#" method = "correspondanceAjout" returnvariable ="acceptation">
				<cfinvokeargument name="adresseIP" value="#CGI.REMOTE_ADDR#">
				<cfinvokeargument name="courriel" value="#Form.courriel#">
				<cfinvokeargument name="langue" value="#URL.langue#">
				<cfinvokeargument name="nom" value="#Form.nom#">
				<cfinvokeargument name="message" value="#Form.message#">
				<cfinvokeargument name="service" value="#Form.service#">
				<cfinvokeargument name="telephone" value="#Form.telephone#">
			</cfinvoke>
			
			<cfinvoke component="#APPLICATION.cfccorrespondants#" method = "service" returnvariable ="service">	
				<cfinvokeargument name="langue" value="#URL.langue#">
				<cfinvokeargument name="serviceID" value="#Form.service#">
			</cfinvoke>
			
			<!--- ------------------------------------ --->
			<!---            ENVOI COURRIEL            --->
			<!--- ------------------------------------ --->
			<!--- <CFMAIL TO="ddecary@gmail.com" FROM="#Form.courriel#" SUBJECT="#service#"   TYPE="HTML">
				<CFINCLUDE template="_email_contact.cfm">
			</CFMAIL> --->
			
			<CFMAIL 
				to="#APPLICATION.EmailEnvoi#" 
				from="#APPLICATION.emailAttributes.from#"  
				port="#APPLICATION.emailAttributes.port#"
				server="#APPLICATION.emailAttributes.server#" 
				subject="#service#"  
				type="HTML"
				useTLS="#APPLICATION.emailAttributes.useTLS#"
				username="#APPLICATION.emailAttributes.username#"
				password="#APPLICATION.emailAttributes.password#"> 
				<CFINCLUDE template="_email_contact.cfm">
			</CFMAIL>
			
			<!--- ------------------------------------ --->
			<!---        FIN ENVOI COURRIEL            --->
			<!--- ------------------------------------ --->
			
			<CFIF URL.langue EQ "fr">
				<CFSET message = "Nous avons bien reçu votre message. Nous y ferons suite dans les plus brefs délais. Merci de votre intérêt.">
			<CFELSE>
				<CFSET message = "We have received your message. We will follow up as soon as possible. Thanks for your interest..">
			</CFIF>

			<CFSET Form.nom = "">
			<CFSET Form.courriel = "">
			<CFSET Form.telephone = "">
			<CFSET Form.service = "">
			<CFSET Form.message = "">

		<CFELSE>
			<CFSET messageType = "warning">
			<CFIF URL.langue EQ "fr">
				<CFSET message = "Veuillez cocher la case indiquant que vous n'êtes pas un robot.">
			<CFELSE>
				<CFSET message = "Please check the box indicating that you are not a robot.">
			</CFIF>
		</CFIF>
	</CFIF>

	
	<cfinvoke component="#APPLICATION.cfccorrespondants#" method = "services" returnvariable ="services">	
		<cfinvokeargument name="langue" value="#URL.langue#">
	</cfinvoke>
	
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
	<CFINCLUDE template="_head.cfm">
</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="full-header" >

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<CFINCLUDE template="_logo.cfm">

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu" class="dark">

						<CFINCLUDE template="_menu.cfm">
					</nav><!-- #primary-menu end -->

				</div>

			</div>

		</header><!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">
			<CFIF URL.langue EQ "fr">
				<div class="container clearfix">
					<h1>Inviter Daniel </h1>
					<span>Contacter Daniel pour obtenir plus d'informations sur les diff&eacute;rents services offerts</span>
				</div>
			<CFELSE>
				<div class="container clearfix">
					<h1>Invite Daniel </h1>
					<span>Contact Daniel for more information on the different services offered</span>
				</div>
			</CFIF>
		

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap"  style="padding:10px 0;">

				<div class="container clearfix">
				
					<div class="col_two_fifth nobottommargin">
						<img src="<cfoutput>#APPLICATION.Root#</cfoutput>/images/photos/daniel2_600x720.jpg" alt="Daniel">	
					</div>

					<div class="col_three_fifth nobottommargin col_last">

						<!--- <div class="heading-block">
							<h2>Daniel D&eacute;cary</h2>
						</div> --->
						
						<cfoutput><p style="color:red;font-size:12pt;">#message#</cfoutput>
						
						<CFIF URL.langue EQ "fr">
						
							<h5>Inviter Daniel d&egrave;s maintenant &agrave; votre &eacute;glise pour l&rsquo;aider &agrave; 
							cro&icirc;tre dans les domaines de la vie les plus importants. La gu&eacute;rison et le 
							bien-&ecirc;tre permet &agrave; Dieu d&rsquo;utiliser chaque membre de son &eacute;glise pour 
							l&rsquo;&eacute;lever et pour faire rayonner son nom partout sur la terre.</h5>

							<!-- Postcontent
							============================================= -->
							<div class="postcontent nobottommargin" style="width:100%">

								<!--- <h3>Send us an Email</h3> --->

								<!--- <div class="contact-widget"> --->

								<!--- <div class="contact-form-result"></div> --->

								<form class="nobottommargin" id="template-contactform" name="template-contactform" action="<cfoutput>#file_name_fr#</cfoutput>" method="post">

									<div class="form-process"></div>

									<div class="col_one_third">
										<label for="template-contactform-name">Nom <small>*</small></label>
										<input type="text" data-name="nom" id="nom" name="nom" value="<cfoutput>#Form.nom#</cfoutput>" class="sm-form-control" required="" pattern="[a-zA-Z0-9áàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ._-\s]+" oninvalid="setCustomValidity('Veuillez inscrire votre nom')" onchange="try{setCustomValidity('')}catch(e){}"/>
									</div>

									<div class="col_one_third">
										<label for="template-contactform-email">Courriel <small>*</small></label>
										<input type="email" data-name="courriel" id="courriel" name="courriel" value="<cfoutput>#Form.courriel#</cfoutput>" class="sm-form-control" required="" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" oninvalid="setCustomValidity('Veuillez entrer une adresse courriel valide.')" onchange="try{setCustomValidity('')}catch(e){}" />
									</div>

									<div class="col_one_third col_last">
										<label for="template-contactform-phone">T&eacute;l&eacute;phone</label>
										<input type="text" id="telephone" name="telephone" value="<cfoutput>#Form.telephone#</cfoutput>" class="sm-form-control" />
									</div>

									<div class="clear"></div>

									<div class="col_two_third">
										<label for="template-contactform-service">Services <small>*</small></label>
										<select id="service" name="service" class="sm-form-control" required=:"" oninvalid="setCustomValidity('Veuillez s&eacute;lectionner un service')" onchange="try{setCustomValidity('')}catch(e){}" >
											<option value="">-- S&eacute;lectionner --</option>
											<cfoutput query="services" ><option value="#serviceID#" <cfif serviceID EQ Form.service>SELECTED</CFIF>>#service#</option></cfoutput>
					
										</select>
									</div>

									<div class="clear"></div>

									<div class="col_full">
										<label for="template-contactform-message">Message <small>*</small></label>
										<textarea class="sm-form-control" id="message" name="message" rows="4" cols="30"  required="" pattern="[a-zA-Z0-9áàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ._-\s]+" oninvalid="setCustomValidity('Veuillez inscrire votre message')" onchange="try{setCustomValidity('')}catch(e){}"><cfoutput>#Form.message#</cfoutput></textarea>
									</div>
									
									<div class="col_full">
										<div class="g-recaptcha" data-sitekey="<cfoutput>#creds.siteKey#</cfoutput>"></div>
											<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?hl=<cfoutput>#lang#</cfoutput>"></script>
										<button class="button button-3d nomargin" type="submit" id="soumettre_formulaire" name="soumettre_formulaire" value="submit">Envoyer</button>
									</div>
								</form>
								<!--- </div> --->

							</div><!-- .postcontent end -->
						<CFELSE>
							<h5>We invite you to consider having Daniel come to your church community to speak or teach on a variety of topics (as outlined on the website ) with the goal of providing help and healing for individuals, couples and church groups and to aid them in better serving and demonstrating Gods light and love in their families, communities and beyond. And TO LIVE LIFE!</h5>

							<!-- Postcontent
							============================================= -->
							<div class="postcontent nobottommargin" style="width:100%">

								<!--- <h3>Send us an Email</h3> --->

								<!--- <div class="contact-widget"> --->

								<!--- <div class="contact-form-result"></div> --->

								<form class="nobottommargin" id="template-contactform" name="template-contactform" action="<cfoutput>#file_name_en#</cfoutput>" method="post">

									<div class="form-process"></div>

									<div class="col_one_third">
										<label for="template-contactform-name">Name <small>*</small></label>
										<input type="text" data-name="nom" id="nom" name="nom" value="<cfoutput>#Form.nom#</cfoutput>" class="sm-form-control" required="" pattern="[a-zA-Z0-9áàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ._-\s]+" oninvalid="setCustomValidity('Enter your name')" onchange="try{setCustomValidity('')}catch(e){}"/>
									</div>

									<div class="col_one_third">
										<label for="template-contactform-email">Email <small>*</small></label>
										<input type="email" data-name="courriel" id="courriel" name="courriel" value="<cfoutput>#Form.courriel#</cfoutput>" class="sm-form-control" required="" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" oninvalid="setCustomValidity('Enter a valid email address')" onchange="try{setCustomValidity('')}catch(e){}" />
									</div>

									<div class="col_one_third col_last">
										<label for="template-contactform-phone">Telephone</label>
										<input type="text" id="telephone" name="telephone" value="<cfoutput>#Form.telephone#</cfoutput>" class="sm-form-control" />
									</div>

									<div class="clear"></div>

									<div class="col_two_third">
										<label for="template-contactform-service">Services offered<small>*</small></label>
										<select id="service" name="service" class="sm-form-control" required=:"" oninvalid="setCustomValidity('Select one of the services offered')" onchange="try{setCustomValidity('')}catch(e){}" >
											<option value="">-- Select --</option>
											<cfoutput query="services" ><option value="#serviceID#" <cfif serviceID EQ Form.service>SELECTED</CFIF>>#service#</option></cfoutput>
					
										</select>
									</div>

									<div class="clear"></div>

									<div class="col_full">
										<label for="template-contactform-message">Message <small>*</small></label>
										<textarea class="sm-form-control" id="message" name="message" rows="4" cols="30"  required="" pattern="[a-zA-Z0-9áàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ._-\s]+" oninvalid="setCustomValidity('Enter your message')" onchange="try{setCustomValidity('')}catch(e){}"><cfoutput>#Form.message#</cfoutput></textarea>
									</div>
									
									<div class="col_full">
										<div class="g-recaptcha" data-sitekey="<cfoutput>#creds.siteKey#</cfoutput>"></div>
											<script type="text/javascript" src="https://www.google.com/recaptcha/api.js?hl=<cfoutput>#lang#</cfoutput>"></script>
										<button class="button button-3d nomargin" type="submit" id="soumettre_formulaire" name="soumettre_formulaire" value="submit">Send</button>
									</div>
								</form>
								<!--- </div> --->

							</div><!-- .postcontent end -->

						</CFIF>
					</div>
				</div>
			</div>
		</section><!-- #content end -->
		
		
		<section id="content">

			<div class="content-wrap" style="padding:10px 0;">

				<div class="container clearfix">

					
					
					<!-- Contact Info
					============================================= -->
					<div class="row clear-bottommargin">

						<!--- <div class="col-lg-3 col-md-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-map-marker2"></i></a>
								</div>
								<h3>Our Headquarters<span class="subtitle">Melbourne, Australia</span></h3>
							</div>
						</div> --->
						
						<div class="col-lg-6 col-md-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-phone3"></i></a>
								</div>
								<h3><!--- Appelez-nous ---><span class="subtitle">(514) 265-8115</span></h3>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-envelope2"></i></a>
								</div>
								<h3><!--- Make a Video Call ---><span class="subtitle"><cfoutput>#APPLICATION.EmailEnvoi#</cfoutput></span></h3>
							</div>
						</div>

						<!--- <div class="col-lg-3 col-md-6 bottommargin clearfix">
							<div class="feature-box fbox-center fbox-bg fbox-plain">
								<div class="fbox-icon">
									<a href="#"><i class="icon-twitter2"></i></a>
								</div>
								<h3>Follow on Twitter<span class="subtitle">2.3M Followers</span></h3>
							</div>
						</div> --->

					</div><!-- Contact Info End -->

				</div>

			</div>

		</section><!-- #content end -->
		
		<CFINCLUDE template="_footer.cfm">

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="<cfoutput>#APPLICATION.Root#</cfoutput>/js/jquery.js"></script>
	<script src="<cfoutput>#APPLICATION.Root#</cfoutput>/js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="<cfoutput>#APPLICATION.Root#</cfoutput>/js/functions.js"></script>

</body>
</html>