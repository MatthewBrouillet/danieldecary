<cfoutput>
<div role="main" class="main">
    <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/training2.jpg);">
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 align-self-center p-static order-2 text-center">
                    <h1> <strong><CFIF URL.lang EQ "en">Counselling Training<CFELSE>Formation en relation d'aide</CFIF></strong></h1>
                </div>
                <div class="col-md-12 align-self-center order-1">
                    <ul class="breadcrumb breadcrumb-light d-block text-center">
                        <CFIF URL.lang EQ "en">
                            <li><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a></li>
                            <li class="active">Counselling Training</li>
                        <CFELSE>
                            <li><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a></li>
                            <li class="active">Formation en relation d'aide</li>
                        </CFIF>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-2">
        <CFIF URL.lang EQ "fr">
            <p class="mb-4">L'objectif est de former les pasteurs, les responsables et les autres personnes en position de leadership à conseiller et à aider les membres de leurs églises et de leurs communautés. L'objectif est d'équiper et de fournir des outils pour aider les pasteurs et les responsables à démontrer l'amour et la puissance du Christ pour transformer les vies à travers les soins pastoraux.</p>
            <div class="heading heading-border heading-middle-border pt-3 mb-3">
                <h3 class="font-weight-normal">ÉQUIPPEZ-VOUS POUR <strong class="font-weight-extra-bold">MIEUX SERVIR</strong></h3>
            </div>
            <p>Voici la liste des conférences ou retraites qui sont offertes sur des sujets d’actualité au 21e siècle, comme le stress, la dépression, le suicide et plus encore :</p>
        <CFELSE>
            <p class="mb-4">Focuses on training pastors, leaders and others in position of leadership to counsel and help those in their churches and community. The goal is to equip and provide tools to help pastors and leaders demonstrate Christ's love and power to transform lives through pastoral care.</p>
            <div class="heading heading-border heading-middle-border pt-2 mb-3">
                <h3 class="font-weight-normal">EQUIPPING TO <strong class="font-weight-extra-bold">BETTER SERVE</strong></h3>
            </div>
            <p>Training Topics include:</p>
        </CFIF>

        <div class="row mt-2 text-primary font-weight-semibold mb-5">
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">How to aid those who have suffered abuse<CFELSE>Comment s'y prendre avec les gens qui ont souffert d'abus ?</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">How to accompany someone needing long term counselling<CFELSE>Comment accompagner une personne à long terme ?</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">How to help those through the grieving process<CFELSE>Comment accompagner une personne durant un deuil ?</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">How to train and develop others in the local church to do lay counselling<CFELSE>Comment former et mentorer  des intervenants dans l'église locale ?</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">And other topics that may be pertinent to your particular church leadership<CFELSE>Et d'autres sujets qui peuvent être pertinents pour les responsables de votre église.</CFIF></li>
                </ul>
            </div>
        </div>

        <div class="text-center py-2 pt-2 mt-2">
        
            <CFIF URL.lang EQ "en">
                <a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-4 btn-arrow-effect-1 ">Contact Daniel for more details</a>
            <CFELSE>
                <a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-4 btn-arrow-effect-1 ">Écrire à Daniel pour plus de détails</a>
            </CFIF>

        </div>
    </div>
    

</div>
</cfoutput>