<cfoutput>
<div role="main" class="main">
    <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/slides/services.jpg);">
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 align-self-center p-static order-2 text-center">
                    <h1> <strong><CFIF URL.lang EQ "en">Conferences / Retreats<CFELSE>Conférences / Retraites</CFIF></strong></h1>
                </div>
                <div class="col-md-12 align-self-center order-1">
                    <ul class="breadcrumb breadcrumb-light d-block text-center">
                        <CFIF URL.lang EQ "en">
                            <li><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a></li>
                            <li class="active">Conferences / Retreats</li>
                        <CFELSE>
                            <li><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a></li>
                            <li class="active">Conférences / Retraites</li>
                        </CFIF>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-2">
        <CFIF URL.lang EQ "fr">
            <p class="mb-4">Daniel vous offre plusieurs thèmes de conférences et de retraites. Ce sont les fruits de plus d’une trentaine d’années d’expérience dans le domaine pastoral ainsi que d’une solide formation académique en théologie et en counseling.</p>
            <div class="heading heading-border heading-middle-border pt-2 mb-3">
                <h3 class="font-weight-normal">THÉMATIQUES DE <strong class="font-weight-extra-bold">CONFÉRENCES ET RETRAITES</strong></h3>
            </div>
            <p>Voici la liste des conférences ou retraites qui sont offertes sur des sujets d’actualité au 21e siècle, comme le stress, la dépression, le suicide et plus encore.</p>
        <CFELSE>
            <p class="mb-4">With Academic expertise in Theology and Counselling and more than 30 years of pastoral experience, Daniel offers many different themes and subjects (that are pertinent to the 21st century) for Conferences and Retreats, covering a wide range of themes.</p>
            <div class="heading heading-border heading-middle-border pt-2 mb-3">
                <h3 class="font-weight-normal"><strong class="font-weight-extra-bold">CONFERENCE AND RETREAT</strong> THEMES</h3>
            </div>
            <p>Here's a list of conferences and retreats focused on current issues in the 21st century, such as stress, depression, suicide and more. </p>
        </CFIF>

        <div class="row mt-2 text-primary font-weight-semibold mb-5">
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Stress, Depression and Burnout - a pastoral care approach<CFELSE>Stress, dépression, épuisement</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Marriage and Family Enrichment<CFELSE>Réussir son mariage et sa famille</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">How to discover and maximize your God given gifts and talents and use them to serve Christ<CFELSE>Comment découvrir et maximiser ses talents pour Christ</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Healing of Passed Wounds<CFELSE>Guérir les blessures du passé</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Suicide - how to deal with suicidal thoughts<CFELSE>Le suicide...comment se sortir de ces pensées ?</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">Surviving Adolescence: Raising your adolescent to love and serve God and to be successful in life<CFELSE>Comment survivre à son ado et lui donner envie d'aimer Dieu ?</CFIF></li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> <CFIF URL.lang EQ "en">And other topics that would be pertinent to the needs of your church community<CFELSE>Bien vivre son adolescence</CFIF></li>
                </ul>
            </div>
        </div>
    </div>

    <section class="section section-height-3 border-0 mt-0 mb-0 pb-2 ">
        <div class="container">

            <CFIF URL.lang EQ "fr">
                <div class="heading heading-border heading-middle-border mb-3" >
                    <h3 class="font-weight-normal" style="background:##f7f7f7;">TYPES DE <strong class="font-weight-extra-bold">CONFÉRENCES ET RETRAITES</strong></h3>
                </div>
            <CFELSE>
                <div class="heading heading-border heading-middle-border  mb-3">
                    <h3 class="font-weight-normal" style="background:##f7f7f7;">TYPES OF <strong class="font-weight-extra-bold">CONFERENCES & RETREATS</strong></h3>
                </div>
            </CFIF>
            <div class="row pt-2 pb-4">
                <div class="col-lg-6">
                    <CFIF URL.lang EQ "fr"><h4>Les couples</h4><CFELSE><h4>Couples</h4></CFIF>
                    <blockquote class="blockquote-primary">
                        <CFIF URL.lang EQ "fr">
                            <p>Renouer, réparer, encourager, motiver, rajeunir l’amour entre maris et femmes par le biais d’une retraite inoubliable. Revivre sa lune de miel à nouveau, c’est possible.</p>
                        <CFELSE>
                            <p>Renewing, Repairing and Rejuvenating married love through an unforgettable retreat for married couples. “Live the honeymoon again – it's possible”.</p>
                        </CFIF>
                    </blockquote>
                </div>
                <div class="col-lg-6">
                    <CFIF URL.lang EQ "fr"><h4>Les parents</h4><CFELSE><h4>Parents</h4></CFIF>
                    <blockquote class="blockquote-primary">
                        <CFIF URL.lang EQ "fr">    
                            <p>Les défis quotidiens que les parents soulèvent sont quelque peu épuisants parfois. Découvrez quelques conseils précieux pour vous aider dans votre vie parentale avec vos enfants et adolescents.</p>
                        <CFELSE>
                            <p>Today's parents face numerous challenges and difficulties raising their children that often leave them exhausted and defeated. This conference (or retreat) offers real life solutions for parents raising children in the 21st century.</p>
                        </CFIF>
                    </blockquote>
                </div>
                <div class="col-lg-6">
                    <CFIF URL.lang EQ "fr"><h4>Les hommes</h4><CFELSE><h4>Men</h4></CFIF>
                    <blockquote class="blockquote-primary">
                        <CFIF URL.lang EQ "fr">    
                            <p>Redéfinir le rôle de l'homme dans la société d'aujourd'hui et son identité. Que ce soit comme époux, père, ami ou collègue de travail, revoir les valeurs à prioriser.</p>
                        <CFELSE>
                            <p>This conference offers great advice for men on subjects such as: Redefining your role and identity as a man, and /or husband. Facing and winning today’s challenges faced by men. What are the values to prioritize?</p>
                        </CFIF>
                    </blockquote>
                </div>
                <div class="col-lg-6">
                    <CFIF URL.lang EQ "fr"><h4>La jeunesse</h4><CFELSE><h4>Youth</h4></CFIF>
                    <blockquote class="blockquote-primary">
                        <CFIF URL.lang EQ "fr">    
                            <p>Quoi de mieux qu’une retraite de jeunesse pour adresser les sujets qui leur sont importants tels que les fréquentations, la pression sociale, l’estime de soi, ainsi que plusieurs autres points essentiels à leur croissance.</p>
                        <CFELSE>
                            <p>What is better than a youth retreat to address such subjects as: social pressure, dating, self-esteem and many other subjects pertinent to growing up in the 21st century?</p>
                        </CFIF>
                    </blockquote>
                </div>
                <div class="col-lg-6">
                    <CFIF URL.lang EQ "fr"><h4>Les pasteurs</h4><CFELSE><h4>Pastors & Church Leaders</h4></CFIF>
                    <blockquote class="blockquote-primary">
                        <CFIF URL.lang EQ "fr">    
                            <p>Lors d’une retraite ou d’une conférence, prenez le temps de vous ressourcer et de vivre des moments de restauration.</p>
                        <CFELSE>
                            <p>A retreat or conference to help renew and restore pastors and church leaders spiritually and emotionally.</p>
                        </CFIF>
                    </blockquote>
                </div>
                <div class="col-lg-6">
                    <CFIF URL.lang EQ "fr"><h4>Pour tous</h4><CFELSE><h4>For all</h4></CFIF>
                    <blockquote class="blockquote-primary">
                        <CFIF URL.lang EQ "fr">    
                            <p>Consultez la liste des thématiques que Daniel peut aborder ci-dessus qui touchent plusieurs d’entre nous ou de l’un de nos proches et qui méritent d’être approfondies afin de vivre une vie comblée.</p>
                        <CFELSE>
                            <p>Conferences and retreats covering a wide variety of subjects that would be pertinent to your congregation to help renew, excite and deepen their faith and fullness of life.</p>
                        </CFIF>
                    </blockquote>
                </div>
            </div>
        </div>
    </section>

    <div class="container text-center py-2 pt-4 mt-4">
        
        <CFIF URL.lang EQ "en">
            <a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-4 btn-arrow-effect-1 ">Contact Daniel for more details</a>
        <CFELSE>
            <a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-4 btn-arrow-effect-1 ">Écrire à Daniel pour plus de détails</a>
        </CFIF>

    </div>


</div>
</cfoutput>