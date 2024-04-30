<cfoutput>
<div role="main" class="main">
    <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/method_birkman.jpg);">
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 align-self-center p-static order-2 text-center">
                    <h1> <strong><CFIF URL.lang EQ "en">Birkman Method<CFELSE>Méthode Birkman</CFIF></strong></h1>
                </div>
                <div class="col-md-12 align-self-center order-1">
                    <ul class="breadcrumb breadcrumb-light d-block text-center">
                        <CFIF URL.lang EQ "en">
                            <li><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a></li>
                            <li class="active">Birkman Method</li>
                        <CFELSE>
                            <li><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a></li>
                            <li class="active">Méthode Birkman</li>
                        </CFIF>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-2 pb-4">
        <CFIF URL.lang EQ "fr">
            <p class="mb-4 font-weight-bold">Découvrir son appel ou son choix de carrière à l’aide d’un questionnaire d’évaluation de la personnalité en ligne.</p>
            <p>Apprendre à reconnaître ses dons et ses forces est essentiel dans tous les aspects de la vie au quotidien, pour vous-mêmes, dans la sélection d’une carrière et dans le développement de son ministère à l’église.</p>
            <p>La méthode Birkman est un outil éprouvé d’évaluation de la personnalité qui est utilisé surtout dans un contexte professionnel, mais qui sert également au développement de l’église et de votre vie personnelle. À l’aide d’un questionnaire en ligne, une analyse complète de votre personnalité est effectuée. Les questions mesurent les aspects suivants :</p>
        <CFELSE>
            <p class="mb-4 font-weight-bold">Discover your call or career choice with an online personality assessment questionnaire.</p>
            <p>Learning to recognize your gifts and strengths is essential in all aspects of daily life, for yourself, in the selection of a career and in the development of your church ministry.</p>
            <p>The Birkman method is a proven personality assessment tool that is used primarily in a professional context, but is also used to develop the church and your personal life. Using an online questionnaire, a complete analysis of your personality is carried out. The questions measure the following aspects:</p>
        </CFIF>

        <div class="row mt-2 text-primary font-weight-semibold mb-4">
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> 
                        <CFIF URL.lang EQ "en">
                            <span class="text-primary font-weight-extra-bold">Interests</span> – activities that you enjoy and that motivate you in your work, church and personal life.
                        <CFELSE>
                           <span class="text-primary font-weight-extra-bold">Intérêts</span> - activités que vous aimez et qui vous motivent dans votre travail, votre église et dans votre vie personnelle.
                        </CFIF>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> 
                        <CFIF URL.lang EQ "en">
                            <span class="text-primary font-weight-extra-bold">Usual behaviour</span> - how you perform tasks and how you interact with others.
                        <CFELSE>
                           <span class="text-primary font-weight-extra-bold">Comportement habituel</span> - votre façon d’effectuer des tâches et votre façon de vous comporter avec les autres.
                        </CFIF>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> 
                        <CFIF URL.lang EQ "en">
                            <span class="text-primary font-weight-extra-bold">Needs</span> - how you would like people and your environment to treat you.
                        <CFELSE>
                           <span class="text-primary font-weight-extra-bold">Besoins</span> - comment vous aimeriez que les gens et votre environnement vous traitent.
                        </CFIF>
                    </li>
                </ul>
            </div>
            <div class="col-lg-6">
                <ul class="list list-icons list-icons-style-3">
                    <li><i class="fas fa-check"></i> 
                        <CFIF URL.lang EQ "en">
                            <span class="text-primary font-weight-extra-bold">Stress Behaviour</span> - how you behave when your needs are not met.
                        <CFELSE>
                           <span class="text-primary font-weight-extra-bold">Comportement vis à vis du stress</span> - comment vous vous comportez lorsque vos besoins ne sont pas rencontrés.
                        </CFIF>
                    </li>
                </ul>
            </div>
        </div>

        <CFIF URL.lang EQ "fr">
            <div class="heading pt-3 mb-3">
                <h3 class="font-weight-normal">AVEC LES RÉSULTATS DE LA <strong class="font-weight-extra-bold">MÉTHODE BIRKMAN</strong>, VOUS POURREZ  :</h3>
            </div>
        <CFELSE>
            <div class="heading heading-border heading-middle-border pt-3 mb-3">
                <h3 class="font-weight-normal">WITH THE RESULTS OF THE <strong class="font-weight-extra-bold">BIRKMAN METHOD</strong>, YOU CAN:</h3>
            </div>
        </CFIF>

        <div class="card border-radius-0 bg-color-light border-0 box-shadow-2 mb-4">
			<div class="card-body">
                <div class="row mt-2 text-primary font-weight-semibold mb-4">
                    <div class="col-lg-6">
                        <img src="#request.root#/img/birkman3.jpeg" style="width:100%;">
                    </div>
                    <div class="col-lg-6">
                        <ul class="list list-icons list-icons-style-3">
                            <li><i class="fas fa-check"></i> 
                                <CFIF URL.lang EQ "en">
                                    Achieve higher work performance and reduce stress levels.
                                <CFELSE>
                                    Atteindre un rendement de travail plus élevé et réduire le niveau de stress.
                                </CFIF>
                            </li>
                            <li><i class="fas fa-check"></i> 
                                <CFIF URL.lang EQ "en">
                                    Know how and why you lead, learn, think, decide and relate to others.
                                <CFELSE>
                                    Savoir comment et pourquoi vous dirigez, apprenez, pensez, décidez et établissez des rapports avec les autres.
                                </CFIF>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <CFIF URL.lang EQ "fr">
            <div class="heading  pt-5 mb-3">
                <h3 class="font-weight-normal">COMMENT UTILISER LA <strong class="font-weight-extra-bold">MÉTHODE BIRKMAN</strong> POUR VOUS ET VOTRE ÉGLISE ?</h3>
            </div>
        <CFELSE>
            <div class="heading pt-5 mb-3">
                <h3 class="font-weight-normal">HOW TO USE THE <strong class="font-weight-extra-bold">BIRKMAN METHOD</strong> FOR YOU AND YOUR CHURCH?</h3>
            </div>
        </CFIF>

        <CFIF URL.lang EQ "fr">
            <p class="mb-4 font-weight-bold subtitle">Découvrir son appel ou son choix de carrière à l’aide d’un questionnaire d’évaluation de la personnalité en ligne.</p>
        <CFELSE>
            <p class="mb-4 font-weight-bold subtitle">Discover your call or career choice with an online personality assessment questionnaire.</p>
        </CFIF>

        <div class="row mb-4">
            <div class="col-md-6 col-lg-6">
                <div class="card border-radius-0 bg-color-light box-shadow-1 box-shadow-1-hover">
                    <CFIF URL.lang EQ "en">
                        <div class="card-body">
                            <h3 class="card-title mb-3 text-6 font-weight-bold">Birkman <span class="text-primary">for individuals</span></h3>
                            <p>Awareness and self-management are the foundation of effective leadership. Knowing yourself is the starting point for every leader. The Birkman® method provides an excellent description of an individual's interests, habitual behaviour, needs and stress levels, as well as an overview of his or her perception filters, management style and interest in the organization. For any leader or organization seriously considering training leaders capable of self-management, the Birkman® method is an invaluable tool. The Birkman® questionnaire can be completed online. The test results are recorded in a comprehensive report and communicated to the participant.</p>
                            <ul class="list list-icons">
                                <li><i class="fas fa-check"></i> Student who wishes to orient himself for a graduate program</li>
                                <li><i class="fas fa-check"></i> Person who would like to change careers</li>
                                <li><i class="fas fa-check"></i> Person who wants to discover his affinities, strengths, talents and gifts</li>
                                <li><i class="fas fa-check"></i> For an executive, a company or an organization that wishes to hire a person who matches the desired profile.</li>
                            </ul>
                        </div>
                    <CFELSE>
                        <div class="card-body">
                            <h3 class="card-title mb-3 text-6 font-weight-bold">Birkman <span class="text-primary">pour individus</span></h3>
                            <p>La prise de conscience et l’autogestion sont à la base du leadership efficace. Se connaître soi-même constitue le point de départ de chaque dirigeant. La méthode Birkman® fournit une excellente description des centres d’intérêt d’une personne, de son comportement habituel, de ses besoins et de son niveau de stress, ainsi qu’un aperçu de ses filtres de perception, de son style de gestion et de son intérêt à l’égard de l’organisation. Pour tout dirigeant ou toute organisation qui songe sérieusement à former des dirigeants capables de s’autogérer, la méthode Birkman® est un outil inestimable. On peut remplir le questionnaire Birkman® en ligne. Les résultats du test sont consignés dans un rapport exhaustif, et communiqués au participant.</p>
                            <ul class="list list-icons">
                                <li><i class="fas fa-check"></i> Étudiant qui désire s’orienter pour un programme d’études supérieures</li>
                                <li><i class="fas fa-check"></i> Personne qui aimerait changer de carrière</li>
                                <li><i class="fas fa-check"></i> Personne qui veut découvrir ses affinités, forces, talents et dons</li>
                                <li><i class="fas fa-check"></i> Pour un dirigeant, une entreprise ou une organisation qui désire faire l’embauche d’une personne qui concorde bien au profil recherché.</li>
                            </ul>
                        </div>
                    </CFIF>
                </div>
            </div>
            <div class="col-md-6 col-lg-6">
                <div class="card border-radius-0 bg-color-light box-shadow-1 box-shadow-1-hover">
                    <CFIF URL.lang EQ "en">
                        <div class="card-body">
                            <h3 class="card-title mb-3 text-6 font-weight-bold">Birkman <span class="text-primary">for group</span></h3>
                            <p>Understanding team members and their respective roles is essential to team effectiveness. The team is then able to provide its members with a stimulating and dynamic work environment. The mutual strengths, understanding and perspectives of each other are the foundation of an effective team. I will examine the nature, strengths and weaknesses of the team. The evaluation will indicate what the team expects from the senior manager and vice versa. A team's report takes about 90 minutes. However, we can spend several days building your team by including the Birkman® method among our tools.</p>
                            <p>Company, organization, church, team or group that:</p>
                            <ul class="list list-icons">
                                <li><i class="fas fa-check"></i> Desires to foster a respectful work environment</li>
                                <li><i class="fas fa-check"></i> Must manage personality differences and conflicts within their group</li>
                                <li><i class="fas fa-check"></i> Wants to improve teamwork based on individual strengths and weaknesses in order to maximize team profitability or success.</li>
                            </ul>
                        </div>
                    <CFELSE>
                        <div class="card-body">
                            <h3 class="card-title mb-3 text-6 font-weight-bold">Birkman <span class="text-primary">pour un groupe</span></h3>
                            <p>La compréhension des membres d’une équipe et de leurs rôles respectifs est essentielle à l’efficacité de celle-ci. L’équipe est alors en mesure de fournir à ses membres un cadre de travail stimulant et dynamique. Les forces, la compréhension et les perspectives réciproques de chacun des membres constituent le fondement d’une équipe efficace. J'examinerai la nature, les forces et les lacunes de l’équipe. L’évaluation indiquera ce que l’équipe attend du cadre supérieur et inversement. Le compte rendu d’une équipe prend environ 90 minutes. Nous pouvons toutefois consacrer plusieurs jours à la constitution de votre équipe en incluant la méthode Birkman® parmi nos outils.</p>
                            <p>Entreprise, organisme, église, équipe ou groupe qui :</p>
                            <ul class="list list-icons">
                                <li><i class="fas fa-check"></i> Désire favoriser un environnement de travail respectueux</li>
                                <li><i class="fas fa-check"></i> Doit faire la gestion des différences de personnalités et conflits au sein de leur groupe</li>
                                <li><i class="fas fa-check"></i> Veut améliorer le travailler en équipe selon les forces et faiblesses de chacun dans le but de maximiser la rentabilité ou le succès de l’équipe.</li>
                            </ul>
                        </div>
                    </CFIF>
                </div>
            </div>
        </div>

        <div class="text-center py-2 pt-2 my-4">
        
            <CFIF URL.lang EQ "en">
                <a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-4 btn-arrow-effect-1 ">Contact Daniel for more details</a>
            <CFELSE>
                <a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'contact')#" class="btn btn-modern btn-primary btn-outline text-4 btn-arrow-effect-1 ">Écrire à Daniel pour plus de détails</a>
            </CFIF>

        </div>

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
                        <input type="hidden" name="item_name" value="Birkman">
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
</cfoutput>