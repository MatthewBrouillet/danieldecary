<CFSET message="">
	
<cfparam name="form.nom" type="string" default="" />
<cfparam name="form.courriel" type="string" default="" />
<cfparam name="form.subject" type="string" default="" />
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
<CFIF URL.lang EQ "fr">
    <CFSET lang = "fr">
<CFELSE>
    <CFSET lang = "en">
</CFIF>

<CFIF StructKeyExists(Form,'soumettre_formulaire')>
    <cfif IsDefined('resp') and resp.success>

        <!--- <cfinvoke component="#viewbag.cfc.correspondants#" method = "correspondanceAjout" returnvariable ="acceptation">
            <cfinvokeargument name="adresseIP" value="#CGI.REMOTE_ADDR#">
            <cfinvokeargument name="courriel" value="#Form.courriel#">
            <cfinvokeargument name="langue" value="#URL.langue#">
            <cfinvokeargument name="nom" value="#Form.nom#">
            <cfinvokeargument name="message" value="#Form.message#">
            <!--- <cfinvokeargument name="service" value="#Form.service#"> --->
            <!--- <cfinvokeargument name="telephone" value="#Form.telephone#"> --->
        </cfinvoke>
        
        <cfinvoke component="#viewbag.cfc.correspondants#" method = "service" returnvariable ="service">	
            <cfinvokeargument name="langue" value="#URL.langue#">
            <cfinvokeargument name="serviceID" value="#Form.service#">
        </cfinvoke> --->
        
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
        
        <CFIF URL.lang EQ "fr">
            <CFSET message = "Nous avons bien reçu votre message. Nous y ferons suite dans les plus brefs délais. Merci de votre intérêt.">
        <CFELSE>
            <CFSET message = "We have received your message. We will follow up as soon as possible. Thanks for your interest..">
        </CFIF>

        <CFSET Form.nom = "">
        <CFSET Form.courriel = "">
        <CFSET Form.subject = "">
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
    
   
   
    <cfoutput>   
        <div role="main" class="main">
            <!--- PAGE TITLE ---> 
            <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/slides/contact_us2.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                            <h1 class="text-light"><CFIF URL.lang EQ "en">Contact Us<CFELSE>Contactez-nous</CFIF></h1>
                        </div>
                        <div class="col-md-4 order-1 order-md-2 align-self-center">
                            <ul class="breadcrumb d-block text-md-end">
                                <CFIF URL.lang EQ "en">
                                    <li><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a></li>
                                    <li class="active">Contact Us</li>
                                <CFELSE>
                                    <li><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a></li>
                                    <li class="active">Contactez-nous</li>
                                </CFIF>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <!--- END OF PAGE TITLE ---> 

            <!--- BEGINNING OF CONTENT --->
            <!-- Google Maps - Go to the bottom of the page to change settings and map location. -->
            <!--- <div id="googlemaps" class="google-map mt-0" style="height: 500px;"></div> --->

            <div class="container">

                <div class="row py-4">
                    <div class="col-lg-12">

                        <h2 class="font-weight-bold text-8 mt-2 mb-0"><CFIF URL.lang EQ "en">Contact Us<CFELSE>Contactez-nous</CFIF></h2>
                        <p class="mb-4"><CFIF URL.lang EQ "en">Feel free to ask for details, don't save any questions!<CFELSE></CFIF></p>

                        <form class="contact-form" action="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#" method="POST">
                            <div class="contact-form-success alert alert-success d-none mt-4">
                                <CFIF URL.lang EQ "en">
                                    <strong>Success!</strong> Your message has been sent to us.
                                <CFELSE>
                                    <strong>Succès!</strong> Votre message a bien été envoyé.
                                </CFIF>
                            </div>

                            <div class="contact-form-error alert alert-danger d-none mt-4">
                                <CFIF URL.lang EQ "en">
                                    <strong>Error!</strong> There was an error sending your message.
                                <CFELSE>
                                    <strong>Erreur!</strong> Il y a eu une erreur lors de l'envoi de votre message.
                                </CFIF>
                                <span class="mail-error-message text-1 d-block"></span>
                            </div>

                            <div class="row">
                                <div class="form-group col-lg-6">
                                    <label class="form-label mb-1 text-2"><CFIF URL.lang EQ "en">Name<CFELSE>Nom</CFIF></label>
                                    <input type="text" value="<cfoutput>#Form.nom#</cfoutput>" data-msg-required="Please enter your last name." maxlength="100" class="form-control text-3 h-auto py-2" data-name="nom" id="nom" name="nom" required pattern="[a-zA-Z0-9áàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ._-\s]+" oninvalid="setCustomValidity('Veuillez inscrire votre nom')" onchange="try{setCustomValidity('')}catch(e){}"/>
                                </div>
                                <div class="form-group col-lg-6">
                                    <label class="form-label mb-1 text-2"><CFIF URL.lang EQ "en">Email Address<CFELSE>Addresse courriel</CFIF></label>
                                    <input type="email" value="<cfoutput>#Form.courriel#</cfoutput>" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control text-3 h-auto py-2" id="courriel" name="courriel" required pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" oninvalid="setCustomValidity('Veuillez entrer une adresse courriel valide.')" onchange="try{setCustomValidity('')}catch(e){}" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col">
                                    <label class="form-label mb-1 text-2"><CFIF URL.lang EQ "en">Subject<CFELSE>Sujet</CFIF></label>
                                    <input type="text" value="" data-msg-required="Please enter the subject." maxlength="100" class="form-control text-3 h-auto py-2" name="subject" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col">
                                    <label class="form-label mb-1 text-2"><CFIF URL.lang EQ "en">Message<CFELSE>Message</CFIF></label>
                                    <textarea maxlength="5000" data-msg-required="Please enter your message." rows="8" class="form-control text-3 h-auto py-2" name="message" required></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col">
                                    <input type="submit" value="Send Message" class="btn btn-primary btn-modern" data-loading-text="Loading...">
                                </div>
                            </div>
                        </form>

                    </div>

                    <!--- <div class="col-lg-6">
                        <div class="container py-2 text-center pt-4">
                            <div class="card border-width-3 border-radius-0 border-color-hover-dark" data-plugin-sticky="" data-plugin-options="{'minWidth': 991, 'containerSelector': '.row', 'padding': {'top': 85}}" style="width: 100%;">
                                <div class="card-body text-center">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="fbox-icon">
                                            <i class="icon-paypal text-6 text-primary"></i>
                                        </div>
                                        <h2>Paiement en ligne</h2>
                                        <form name="consultation" action="https://www.paypal.com/cgi-bin/webscr" method="post" onsubmit="return validateDollar(document.consultation.amount)" class="nobottommargin">
                                        <input type="hidden" name="cmd" value="_xclick">
                                        <input type="hidden" name="business" value="ddecary@gmail.com">
                                        <input type="hidden" name="item_name" value="">
                                        <input type="hidden" name="item_number" value="1">
                                        <input type="text" name="amount" value="" placeholder="Entrer le montant" class="sm-form-control" style="width:200px;display:inline;"><br><br>
                                        <input type="hidden" name="no_shipping" value="0">
                                        <input type="hidden" name="no_note" value="1">
                                        <input type="hidden" name="currency_code" value="CAD">
                                        <input type="hidden" name="lc" value="AU">
                                        <input type="hidden" name="bn" value="PP-BuyNowBF">
                                        <input type="image" src="https://www.danieldecary.ca/images/shop/paypal_secure.png" border="0" name="submit" alt="PayPal - la solution de paiement en ligne la plus simple et la plus sécurisée !">
                                        <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div> --->
                </div>

            </div>
            <!--- END OF CONTENT ---> 

        </div>
    </cfoutput>
    