<cfoutput>
    <div role="main" class="main">
        <!--- BEGINNING OF SLIDER --->
        <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-2" style="background-image: url(#request.root#/img/slides/preaching1.jpg); height:710px; background-size: cover; background-position: center;">
            <div class="container">
                <!--- <div class="row mt-5">
                    <div class="col-md-12 align-self-center p-static order-2 text-center">
                        <h1>Background <strong>Transparent</strong></h1>
                    </div>
                    <div class="col-md-12 align-self-center order-1">
                        <ul class="breadcrumb breadcrumb-light d-block text-center">
                            <li><a href="##">Home</a></li>
                            <li class="active">Features</li>
                        </ul>
                    </div>
                </div> --->
            </div>
        </section>

        <div class="container py-4">

            <div class="card box-shadow-2 mt-2 mb-2">
                <div class="row g-0">
                    <div class="col-lg-5">
                        <img src="#request.root#/img/daniel1.jpg" style="width:100%;" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-lg-7">
                        <div class="card-body">
                            <CFIF URL.lang EQ "fr">
                                <h4 class="card-title mb-3 text-8 font-weight-bold">À PROPOS DE DANIEL</h4>
                                <p class="card-text mb-2">Ayant obtenu un baccalauréat en psychologie en 1986 et en théologie en 1992, ainsi qu’une maitrise en counseling pastorale en 2006, le pasteur et psychothérapeute d’expérience qu’est devenu Daniel désire marier ses 2 passions pour :</p>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Guérir</span> les blessures du passé<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Adresser</span> l’épuisement et les fausses croyances qui mènent à la désillusion<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Faire renaître</span> l’envie de vivre pleinement<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Amener</span> des solutions concrètes aux problèmes de la vie
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Réduire la détresse</span> psychologique et émotionnelle<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Former</span> les leaders d’églises en relation d’aide<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Explorer</span> la quête de sens et d’absolu dans la vie, si le client le souhaite
                                    </div>
                                </div>
                                <a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'about')#" class="btn btn-outline btn-primary mb-1 mt-3">En savoir plus</a>
                            <CFELSE>
                                <h4 class="card-title mb-3 text-8 font-weight-bold">ABOUT DANIEL</h4>
                                <p class="card-text mb-2">After receiving a Bachelor Degree in Psychology in 1986 and in Theology in 1992, as well as, a Master`s Degree in Pastoral Counseling in 2006, Daniel decided to unite those passions and create a ministry to provide counseling services to:</p>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">To LIVE LIFE</span><br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Help</span> in the healing of emotional, psychological and spiritual wounds<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Address</span> false hope and delusion<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Ignite</span> a desire to live life to its fullest by giving concrete solutions to help deal with difficult life problems<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Help</span> in dealing with emotional and psychological stress
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Explore and develop</span> a sense of purpose and /or faith and spirituality should it be requested to do so by the client<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Provide</span> Training for Pastors and Church Leaders in pastoral counselling<br>
                                        <i class="fas fa-caret-right text-primary" style="padding-left:5px;"></i> <span class="text-primary font-weight-bold">Do</span> Conferences and Retreat covering a variety of topics
                                    </div>
                                </div>
                                <a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'about')#" class="btn btn-outline btn-primary mb-1 mt-3">Read More</a>
                            </CFIF>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <section class="section section-default bg-color-light-scale-1 mt-5 py-4 mb-5 px-3"<!---  style="background-color: ##dff1f7;" --->>
            <!--- <div class="container"> --->
                <div class="row pt-4">
                    <div class="col-lg-3 col-sm-12 pb-3">
                        <div class="card border-radius-0 bg-color-light border-0 box-shadow-3">
                            <div class="card">
                                <CFIF URL.lang EQ "fr">
                                    <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'counselling')#">
                                <CFELSE>
                                    <a href="#viewbag.helper.getUrl('en', 'services', '', 'counselling')#">
                                </CFIF>
                                    <img class="card-img-top" src="#request.root#/img/counselling.jpg" alt="Counselling">
                                </a>
                                <div class="card-body">
                                    <CFIF URL.lang EQ "fr">
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'counselling')#">Counselling / Web Thérapie</a></h4>
                                        <p class="card-text mb-2 pb-1">Counseling pastoral, individuel ou en couple, pour toute personne présentant un besoin d’aide sur le plan émotionnel ou spirituel (en ligne seulement).</p>
                                        <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'counselling')#" class="read-more text-color-primary font-weight-semibold text-2">En savoir plus <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    <CFELSE>
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrl('en', 'services', '', 'counselling')#">Couselling / Web Therapy</a></h4>
                                        <p class="card-text mb-2 pb-1">Pastoral Counselling for individuals or couples focusing on emotional, psychological and faith issues. Sessions are done online only.</p>
                                        <a href="#viewbag.helper.getUrl('en', 'services', '', 'counselling')#" class="read-more text-color-primary font-weight-semibold text-2">Read More <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-12 pb-3">
                        <div class="card border-radius-0 bg-color-light border-0 box-shadow-3">
                            <div class="card">
                                <CFIF URL.lang EQ "fr">
                                    <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'conferences')#">
                                <CFELSE>
                                    <a href="#viewbag.helper.getUrl('en', 'services', '', 'conferences')#">
                                </CFIF>
                                    <img class="card-img-top" src="#request.root#/img/conferences.jpg" alt="Conferences">
                                </a>
                                <div class="card-body">
                                    <CFIF URL.lang EQ "fr">
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'conferences')#">Conférences / Retraites</a></h4>
                                        <p class="card-text mb-2 pb-1">Conférences visant la transformation et le renouvèlement des cœurs utilisant une approche thérapeutique pastorale approfondie et traitant de plusieurs sujets pertinents à la vie au 21e siècle.</p>
                                        <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'conferences')#" class="read-more text-color-primary font-weight-semibold text-2">En savoir plus <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    <CFELSE>
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrl('en', 'services', '', 'conferences')#">Conferences / Retreats</a></h4>
                                        <p class="card-text mb-2 pb-1">Daniel is available for Conferences and Retreats covering a variety of topics addressing many pertinent issues of the 21st century with an emphasis on a pastoral counseling approach to bring renewing and transformation of the heart.</p>
                                        <a href="#viewbag.helper.getUrl('en', 'services', '', 'conferences')#" class="read-more text-color-primary font-weight-semibold text-2">Read More <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-12 pb-3">
                        <div class="card border-radius-0 bg-color-light border-0 box-shadow-3">
                            <div class="card">
                                <CFIF URL.lang EQ "fr">
                                    <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'training')#">
                                <CFELSE>
                                    <a href="#viewbag.helper.getUrl('en', 'services', '', 'training')#">
                                </CFIF>
                                    <img class="card-img-top" src="#request.root#/img/daniel_predi1.jpg" alt="Training">
                                </a>
                                <div class="card-body">
                                    <CFIF URL.lang EQ "fr">
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'training')#">Formation en relation d'aide</a></h4>
                                        <p class="card-text mb-2 pb-1">Vise le développement des leaders, pasteurs et responsables d’église pour mieux aider vos membres dans leur cheminement de vie. Le but est d’outiller vos responsables pour propager l’amour de Christ par la transformation des vies.</p>
                                        <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'daniel_predi1')#" class="read-more text-color-primary font-weight-semibold text-2">En savoir plus <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    <CFELSE>
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrl('en', 'services', '', 'training')#">Counselling Training</a></h4>
                                        <p class="card-text mb-2 pb-1">Focuses on training pastors, leaders and others in position of leadership to counsel and help those in their churches and community. The goal is to equip and provide tools to help pastors and leaders demonstrate Christ's love and power to transform lives through pastoral care.</p>
                                        <a href="#viewbag.helper.getUrl('en', 'services', '', 'training')#" class="read-more text-color-primary font-weight-semibold text-2">Read More <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-12 pb-3">
                        <div class="card border-radius-0 bg-color-light border-0 box-shadow-3">
                            <div class="card">
                                <CFIF URL.lang EQ "fr">
                                    <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'birkman')#">
                                <CFELSE>
                                    <a href="#viewbag.helper.getUrl('en', 'services', '', 'birkman')#">
                                </CFIF>
                                    <img class="card-img-top" src="#request.root#/img/birkman.png" alt="Birkman">
                                </a>
                                <div class="card-body">
                                    <CFIF URL.lang EQ "fr">
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrlFr('fr', 'resources', '', 'birkman')#">Méthode Birkman</a></h4>
                                        <p class="card-text mb-2 pb-1">Développez votre plein potentiel, individuellement ou pour une équipe, afin d’identifier vos passions, comportements, motivations et intérêts.</p>
                                        <a href="#viewbag.helper.getUrlFr('fr', 'services', '', 'birkman')#" class="read-more text-color-primary font-weight-semibold text-2">En savoir plus <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    <CFELSE>
                                        <h4 class="card-title mb-1 text-5 font-weight-bold text-color-primary"><a href="#viewbag.helper.getUrl('en', 'resources', '', 'birkman')#">Birkman Method</a></h4>
                                        <p class="card-text mb-2 pb-1">Develop your full potential, individually or as a team, to identify your passions, behaviours, motivations and interests.</p>
                                        <a href="#viewbag.helper.getUrl('en', 'services', '', 'birkman')#" class="read-more text-color-primary font-weight-semibold text-2">Read More <i class="fas fa-angle-right position-relative top-1 ms-1"></i></a>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>	
            <!--- </div> --->
        </section>
        
        <div class="container py-2 text-center">
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
                        <input type="hidden" name="item_name" value="Ruisseaux de vie">
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

</cfoutput>