<cfoutput>
<div role="main" class="main">
    <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/slides/counselling_bg.jpg);">
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 align-self-center p-static order-2 text-center">
                    <h1> <strong><CFIF URL.lang EQ "en">Counselling / Web Therapy<CFELSE>Counseling / Web Thérapie</CFIF></strong></h1>
                </div>
                <div class="col-md-12 align-self-center order-1">
                    <ul class="breadcrumb breadcrumb-light d-block text-center">
                        <CFIF URL.lang EQ "en">
                            <li><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a></li>
                            <li class="active">Counselling / Web Therapy</li>
                        <CFELSE>
                            <li><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a></li>
                            <li class="active">Counseling / Web Thérapie</li>
                        </CFIF>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-2">
        <CFIF URL.lang EQ "fr">
            <p>Le counseling pastoral est une approche psychothérapeutique qui a pour but de réduire la détresse psychologique et émotionnelle, ainsi que d’améliorer la capacité à résoudre des problèmes personnels et interpersonnels en tenant compte des dimensions psychologiques et spirituelles de la personne. La dimension pastorale intègre la recherche spirituelle ou religieuse, soit la quête de sens et d’absolu dans la vie d’un individu. Cette dernière dimension n’est abordée que si le client ou la cliente s’ouvre à cette dimension.</p>
            <p>Voici quelques problématiques sur lesquelles Daniel peut vous aider :</p>
        <CFELSE>
            <p>Pastoral Counselling is a psychotherapeutic approach that helps a client to explore and deal with the emotional and psychological stresses of life, through the process of resolving personal and interpersonal difficulties and challenges, with an emphasis placed on the emotional, psychological and spiritual dimension.</p>
            <p>The pastoral aspect includes a spiritual or religious dimension which focuses on an individual’s sense of purpose and well-being, if the client wishes to go in that direction.</p>
            <p>Other areas of expertise: </p>
        </CFIF>

        <div class="row mt-2 text-primary font-weight-semibold">
            <div class="col-lg-4">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Insomnia<CFELSE>Insomnie</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Depression<CFELSE>Dépression</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Anxiety<CFELSE>Anxiété</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Grief<CFELSE>Vivre le deuil</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Spiritual Abuse<CFELSE>Abus spirituel</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Physical Abuse<CFELSE>Abus physique</CFIF></li>
                </ul>
            </div>
        </div>

    </div>

    <section class="section section-height-3 border-0 mt-4 mb-5 pb-0 ">
        <div class="container container-xl-custom">
            <div class="row align-items-center">
                <div class="col-lg-6 fluid-col-lg-6" style="min-height: 33vw;">
                    <div class="fluid-col fluid-col-left">
                        <img src="#request.root#/img/zoom.jpg" class="img-fluid px-3" alt="" />
                    </div>
                </div>
                <div class="col-lg-6 mb-5">
                    <div class="pe-3">
                        <h2 class="mb-3 font-weight-semibold">Services</h2>
                        <h5 class="text-primary"><CFIF URL.lang EQ "en">Web Therapy<CFELSE>Web thérapie</CFIF></h5>
                        <CFIF URL.lang EQ "en">
                            <p class="mb-3"><strong>Web therapy</strong> is the possibility of therapeutic encounters via the Internet. Thus, through technology (with programs such as Zoom) it is possible to have counselling meetings, no matter where and how far away we are.</p>
                            <a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-2 btn-arrow-effect-1">Contact Daniel for more details</a>
                        <CFELSE>
                            <p class="mb-3">La <strong>"web thérapie"</strong> est la possibilité de rencontre thérapeutique par Internet. Ainsi, par le biais de la technologie (avec les programmes tel que Zoom) il est possible d'avoir des rencontres de relation d'aide, peu importe le lieu et la distance qui nous sépare. </p>
                            <a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-2 btn-arrow-effect-1">Écrire à Daniel pour plus de détails</a>
                        </CFIF>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                    <input type="hidden" name="item_name" value="Consultation">
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