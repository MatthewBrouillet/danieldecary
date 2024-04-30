
    <cfoutput>   
        <div role="main" class="main">
            <!--- PAGE TITLE ---> 
            <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/slides/contact.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 order-2 order-md-1 align-self-center p-static">
                            <h1 class="text-dark"><CFIF URL.lang EQ "en">Contact Us<CFELSE>Contactez-nous</CFIF></h1>
                        </div>
                        <div class="col-md-4 order-1 order-md-2 align-self-center">
                            <ul class="breadcrumb d-block text-md-end">
                                <CFIF URL.lang EQ "en">
                                    <li><a href="#viewbag.helper.getUrl('en', 'PROJECT', '', 'home')#">Home</a></li>
                                    <li class="active">Contact Us</li>
                                <CFELSE>
                                    <li><a href="#viewbag.helper.getUrlFr('fr', 'PROJECT', '', 'home')#">Accueil</a></li>
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
                    <div class="col-lg-6">

                        <h2 class="font-weight-bold text-8 mt-2 mb-0"><CFIF URL.lang EQ "en">Contact Us<CFELSE>Contactez-nous</CFIF></h2>
                        <p class="mb-4"><CFIF URL.lang EQ "en">Feel free to ask for details, don't save any questions!<CFELSE></CFIF></p>

                        <form class="contact-form" action="php/contact-form.php" method="POST">
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
                                    <label class="form-label mb-1 text-2"><CFIF URL.lang EQ "en">Full Name<CFELSE>Prénom et nom</CFIF></label>
                                    <input type="text" value="" data-msg-required="Please enter your name." maxlength="100" class="form-control text-3 h-auto py-2" name="name" required>
                                </div>
                                <div class="form-group col-lg-6">
                                    <label class="form-label mb-1 text-2"><CFIF URL.lang EQ "en">Email Address<CFELSE>Addresse courriel</CFIF></label>
                                    <input type="email" value="" data-msg-required="Please enter your email address." data-msg-email="Please enter a valid email address." maxlength="100" class="form-control text-3 h-auto py-2" name="email" required>
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

                    <div class="col-lg-6">
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
                    </div>
                </div>

            </div>
            <!--- END OF CONTENT ---> 

        </div>
    </cfoutput>
    