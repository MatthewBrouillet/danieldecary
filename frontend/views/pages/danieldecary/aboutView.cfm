<cfoutput>
<div role="main" class="main">
    <section class="page-header page-header-modern page-header-background page-header-background-md overlay overlay-color-dark overlay-show overlay-op-7" style="background-image: url(#request.root#/img/slides/preaching2.jpg);">
        <div class="container">
            <div class="row mt-5">
                <div class="col-md-12 align-self-center p-static order-2 text-center">
                    <h1> <strong><CFIF URL.lang EQ "en">About<CFELSE>À propos</CFIF></strong></h1>
                </div>
                <div class="col-md-12 align-self-center order-1">
                    <ul class="breadcrumb breadcrumb-light d-block text-center">
                        <CFIF URL.lang EQ "en">
                            <li><a href="#viewbag.helper.getUrl('en', 'danieldecary', '', 'home')#">Home</a></li>
                            <li class="active">About</li>
                        <CFELSE>
                            <li><a href="#viewbag.helper.getUrlFr('fr', 'danieldecary', '', 'home')#">Accueil</a></li>
                            <li class="active">À propos</li>
                        </CFIF>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-2 mb-4">

        <div class="row mb-2">
            <div class="col">
                <CFIF URL.lang EQ "fr">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <img class="box-shadow-2 img-fluid" src="#request.root#/img/about2.jpg" alt="About Daniel">
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <p>Originaire de Montréal, je me suis converti au christianisme en 1983 à l'âge de 22 ans. La jeune femme qui m'a conduit au Seigneur est devenue mon épouse en 1984. À ce moment, je travaillais à l'hôpital psychiatrique Douglas où j'étais éducateur spécialisé. Je travaillais principalement avec des délinquants juvéniles. Suite à mon mariage, j'ai ressenti l'appel du Seigneur pour le ministère. J'ai donc débuté mes études bibliques pour graduer en 1988. J'ai accepté mon premier pastorat la même année.</p>
                            <p>En 2006, après plus de 20 ans de pastorats dans 3 églises différentes au Québec, j'ai fondé le ministère de relation d'aide Ruisseaux de Vie après avoir obtenu une Maîtrise de l'université de Sherbrooke en Counseling Pastoral. En janvier 2007, j'ai joint l'équipe pastorale de l'église Nouvelle Vie de Longueuil où je suis maintenant le responsable du département des soins pastoraux.</p>
                            <p>Je détiens un permis de Psychothérapeute de l'Ordre des Psychologues du Québec. Je suis membre de l'Association Canadienne des Intervenants Psychospirituels (ACIP). Je suis également membre du corps enseignant de l'ITF à Longueuil et professeur associé de l'université Laval.</p>
                            <p>Je détiens un D.E.C. en Éducation Spécialisée, un B.A.C. en Théologie, un B.A.C. en Psychologie, et une M.A. en Counseling Pastoral à l'université de Sherbrooke.</p>
                            <p>Mon épouse Cynthia et moi avons deux enfants et deux petits-enfants.</p>
                        </div>
                    </div>
                    
                <CFELSE>
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-12">
                            <img class="box-shadow-2 img-fluid" src="#request.root#/img/about1.jpg" alt="About Daniel">
                        </div>
                        <div class="col-lg-7 col-md-7 col-sm-12">
                            <p>Originally from Montreal, I converted to Christianity in 1983 at the age of 22. The young woman who led me to the Lord became my wife in 1984. At that time, I was working at the Douglas Psychiatric Hospital where I was a specialized educator. I worked mainly with juvenile offenders. Following my marriage, I felt the Lord's call for ministry. So I started my Bible studies to graduate in 1988. I accepted my first pastorate the same year.</p>
                            <p>In 2006, after more than 20 years of pastorate in 3 different churches in Quebec, I founded the Ruisseaux de Vie ministry of assistance after obtaining a Master's degree in Pastoral Counseling from the University of Sherbrooke. In January 2007, I joined the pastoral team at Nouvelle Vie de Longueuil Church where I am now the head of the pastoral care department.</p>
                            <p>I hold a Psychotherapist's license from the Ordre des Psychologues du Québec. I am a member of the Canadian Association of Psychospiritual Workers (CAPE). I am also a member of the ITF faculty in Longueuil and an associate professor at Laval University.</p>
                            <p>I hold a D.E.C. in Specialized Education, a B.A.C. in Theology, a B.A.C. in Psychology, and an M.A. in Pastoral Counselling from the University of Sherbrooke.</p>
                            <p>My wife Cynthia and I have two children and two grandchildren.</p>
                        </div>
                    
                </CFIF>
            </div>
        </div>

    </div>

    <div class="container py-2 pb-4 mb-3">

        <div class="row">
            <div class="col-md-6 col-lg-6">

                <div class="card border-radius-0 bg-color-light box-shadow-1 box-shadow-1-hover">
                    <CFIF URL.lang EQ "en">
                        <div class="card-body">
                            <h3 class="card-title mb-3 text-5 font-weight-bold">Academic <span class="text-primary">Background</span></h3>
                            <ul class="list list-icons">
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Master's degree in theology, pastoral counselling</span>, Université de Sherbrooke, 2006</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Bachelor of Theology</span>, Collège biblique Québec, 1992</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Diploma in theology</span> of Formation Timothée, 1988</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Bachelor of Psychology</span>, Waterloo University, 1986</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Diploma of College Studies</span> in Special Education, CEGEP Marie-Victorin, 1984</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Diploma of College Studies</span> in Human Sciences, CEGEP Maisonneuve, 1979</li>
                            </ul>
                        </div>
                    <CFELSE>
                        <div class="card-body">
                            <h3 class="card-title mb-2 text-5 font-weight-bold">Parcours <span class="text-primary">académique</span></h3>
                            <ul class="list list-icons">
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Maîtrise en théologie</span>, cheminement counseling pastoral, Université de Sherbrooke, 2006</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Baccalauréat en théologie</span>, Collège biblique Québec, 1992</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Diplôme en théologie</span> de Formation Timothée, 1988</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Baccalauréat en psychologie</span>, Waterloo University, 1986</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Diplôme d’études collégiales</span> en Éducation spécialisée, CEGEP Marie-Victorin, 1984</li>
                                <li><i class="icon-graduation icons"></i> <span class="font-weight-bold">Diplôme d’études collégiales</span> en Sciences humaines, CEGEP Maisonneuve, 1979</li>
                            </ul>
                        </div>
                    </CFIF>
                </div>
            </div>
            <div class="col-md-6 col-lg-6">

                <div class="card border-radius-0 bg-color-light box-shadow-1 box-shadow-1-hover">
                    <CFIF URL.lang EQ "en">
                        <div class="card-body">
                            <h3 class="card-title mb-2 text-5 font-weight-bold">Professional <span class="text-primary">Career</span></h3>
                            <ul class="list list-icons">
                                <li><i class="icon-briefcase icons"></i> 2010 to 2019 - <span class="font-weight-bold">Director of Pastoral Care</span> at Nouvelle Vie Church in Longueuil</li>
                                <li><i class="icon-briefcase icons"></i> 2006 - <span class="font-weight-bold">Creation of the pastoral counselling ministry</span> "Ruisseaux de Vie"</li>
                                <li><i class="icon-briefcase icons"></i> 1996 to 2006 - <span class="font-weight-bold">Pastor of Carrefour chrétien de l’Estrie</span> in Sherbrooke</li>
                                <li><i class="icon-briefcase icons"></i> 1991 to 1996 - <span class="font-weight-bold">Pastor of Centre Vie Abondante</span> in Montmagny</li>
                                <li><i class="icon-briefcase icons"></i> 1988 to 1991 - <span class="font-weight-bold">Pastor of Assemblée Pentecôte du Lac</span> in Roberval</li>
                                <li><i class="icon-briefcase icons"></i> 1980 to 1988 - <span class="font-weight-bold">P.A.B. and special educator</span> at the Douglas Psychiatric Hospital</li>
                            </ul>
                        </div>
                    <CFELSE>
                        <div class="card-body">
                            <h3 class="card-title mb-2 text-5 font-weight-bold">Parcours <span class="text-primary">professionnel</span></h3>
                            <ul class="list list-icons">
                                <li><i class="icon-briefcase icons"></i> 2010 à 2019 - <span class="font-weight-bold">Directeur des soins pastoraux</span> de l'église Nouvelle Vie à Longueuil</li>
                                <li><i class="icon-briefcase icons"></i> 2006 - Mise sur pied du <span class="font-weight-bold">ministère de counseling pastoral</span> « Ruisseaux de Vie »</li>
                                <li><i class="icon-briefcase icons"></i> 1996 à 2006 - <span class="font-weight-bold">Pasteur du Carrefour chrétien de l’Estrie</span> à Sherbrooke</li>
                                <li><i class="icon-briefcase icons"></i> 1991 à 1996 - <span class="font-weight-bold">Pasteur du Centre Vie Abondante</span> à Montmagny</li>
                                <li><i class="icon-briefcase icons"></i> 1988 à 1991 - <span class="font-weight-bold">Pasteur de l’Assemblée Pentecôte du Lac</span> à Roberval</li>
                                <li><i class="icon-briefcase icons"></i> 1980 à 1988 - <span class="font-weight-bold">P.A.B. et éducateur spécialisé</span> à l’Hôpital psychiatrique Douglas</li>
                            </ul>
                        </div>
                    </CFIF>
                </div>
            </div>
        </div>

    </div>
</div>
    <section class="parallax section section-text-light section-parallax section-center mt-0 mb-0 mt-3" data-plugin-parallax data-plugin-options="{'speed': 1.5}" data-image-src="#request.root#/img/slides/testimonials_bg.jpg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="owl-carousel owl-theme nav-bottom rounded-nav" data-plugin-options="{'items': 1, 'loop': false}">
                        <div>
                            <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                <div class="testimonial-author">
                                    <img src="#request.root#/img/testimonials/houde.jpg" class="img-fluid rounded-circle mb-0" alt="">
                                </div>
                                <blockquote>
                                    <CFIF URL.lang EQ "en">
                                        <p class="mb-0">It is with joy that I recommend the ministry of Pastor Daniel Décary. He is a man of pastoral experience, an excellent communicator and a pastor passionate about counselling. I rejoice to see a ministry like his that combines the Word of God, the search for the fullness of the Spirit and a high level of professional and academic formation. I thank God for his ministry, which I recommend without reservation.</p>
                                    <CFELSE>
                                        <p class="mb-0">C’est avec joie que je vous recommande le ministère du pasteur Daniel Décary. C’est un homme d’expérience pastorale, un excellent communicateur et un pasteur passionné pour la relation d’aide. Je me réjouis de voir un ministère comme le sien qui allie la Parole de Dieu, la recherche de la plénitude de l’Esprit et une formation professionnelle et académique de haut niveau. Je remercie Dieu pour son ministère que je vous recommande sans réserve.</p>
                                    </CFIF>
                                </blockquote>
                                <div class="testimonial-author">
                                    <CFIF URL.lang EQ "fr">
                                        <p><strong class="font-weight-extra-bold">Claude Houde</strong><span>Pasteur principal de l'Église Nouvelle Vie</span></p>
                                    <CFELSE>
                                        <p><strong class="font-weight-extra-bold">Claude Houde</strong><span>Senior Pastor of Nouvelle Vie Church</span></p>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                <div class="testimonial-author">
                                    <img src="#request.root#/img/testimonials/morissette.jpg" class="img-fluid rounded-circle mb-0" alt="">
                                </div>
                                <blockquote>
                                    <CFIF URL.lang EQ "en">
                                        <p class="mb-0">I am pleased to recommend Pastor Daniel Décary. It is a friend, a colleague and above all a therapist who skillfully took up the challenge reaching out for people's real needs. It is rare nowadays to find a balance between faith and reflection, between knowledge and compassion for those who suffer... Daniel is an experienced pastor and therapist who has found and preserved this balance. I recommend him without hesitation.</p>
                                    <CFELSE>
                                        <p class="mb-0">Je suis heureux de recommander le pasteur Daniel Décary. C’est un ami, un collègue et surtout un thérapeute en relation d’aide qui a su relever adroitement le défi des besoins réels des gens. Il est rare de nos jours de trouver un équilibre entre la foi et la réflexion, entre la connaissance et la compassion pour ceux qui souffrent.. Daniel est un pasteur et un thérapeute expérimenté qui a su trouver et préserver cet équilibre. Je vous le recommande sans hésitation.</p>
                                    </CFIF>
                                </blockquote>
                                <div class="testimonial-author">
                                    <CFIF URL.lang EQ "fr">
                                        <p><strong class="font-weight-extra-bold">Denis Morissette, M.Ed. PsyEd</strong><span>Président, Denis Morissette Communications</span></p>
                                    <CFELSE>
                                        <p><strong class="font-weight-extra-bold">Denis Morissette, M.Ed. PsyEd</strong><span>President, Denis Morissette Communications</span></p>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                <div class="testimonial-author">
                                    <img src="#request.root#/img/testimonials/query.jpg" class="img-fluid rounded-circle mb-0" alt="">
                                </div>
                                <blockquote>
                                    <CFIF URL.lang EQ "en">
                                        <p class="mb-0">Pastor Daniel Décary is a friend and colleague in the ministry for whom I have a lot of affection. Pastor Daniel is in charge of pastoral care at Nouvelle Vie Church and is a much appreciated preacher and teacher wherever he goes. I encourage you to discover him more, because I am convinced that you will be blessed!</p>
                                    <CFELSE>
                                        <p class="mb-0">Pasteur Daniel Décary est un ami et collègue dans le ministère pour qui j’ai beaucoup d’affection. Responsable des soins pastoraux à l’église Nouvelle Vie, pasteur Daniel est un  prédicateur et enseignant très apprécié partout où il passe. Je vous encourage à le découvrir d'avantage, car je suis convaincu que vous serez bénis !</p>
                                    </CFIF>
                                </blockquote>
                                <div class="testimonial-author">
                                    <CFIF URL.lang EQ "fr">
                                        <p><strong class="font-weight-extra-bold">Pasteur Stéphane Quéry </strong><span>Les Ministères Louange et Adoration Live</span></p>
                                    <CFELSE>
                                        <p><strong class="font-weight-extra-bold">Pastor Stéphane Quéry</strong><span>LAL Ministries</span></p>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                <div class="testimonial-author">
                                    <img src="#request.root#/img/testimonials/raccah.png" class="img-fluid rounded-circle mb-0" alt="">
                                </div>
                                <blockquote>
                                    <CFIF URL.lang EQ "en">
                                        <p class="mb-0">I have had the pleasure of knowing Reverend Daniel Décary for almost 20 years. His integrity and compassion are an expression of his intimacy with the Lord. The teachings he brings reflect an excellent knowledge of the Word of God and a passionate desire to see it relevant to the twenty-first century. I will never hesitate to sit under his ministry, and I have done so on several occasions. It is therefore without any hesitation that I endorse his ministry, and that I recommend it to anyone who considers himself privileged to use his services.</p>
                                    <CFELSE>
                                        <p class="mb-0">J’ai eu le plaisir de connaître le révérend Daniel Décary depuis presque 20 ans. Son intégrité et sa compassion sont l’expression de son intimité avec le Seigneur. Les enseignements qu’il amène reflètent une excellente connaissance de la Parole de Dieu et un désir passionné de La voir pertinente pour le vingt-et-unième siècle. Je n’hésiterai jamais à m’asseoir sous son ministère, et je l’ai fait en plusieurs occasions. C'est donc sans aucune hésitation que j’endosse son ministère, et que je le recommande à quiconque considère se privilégier de ses services.</p>
                                    </CFIF>
                                </blockquote>
                                <div class="testimonial-author">
                                    <CFIF URL.lang EQ "fr">
                                        <p><strong class="font-weight-extra-bold">William Raccah</strong><span>Auteur et professeur</span></p>
                                    <CFELSE>
                                        <p><strong class="font-weight-extra-bold">William Raccah</strong><span>Author and Teacher</span></p>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="testimonial testimonial-style-2 testimonial-with-quotes mb-0">
                                <div class="testimonial-author">
                                    <img src="#request.root#/img/testimonials/lecompte.png" class="img-fluid rounded-circle mb-0" alt="">
                                </div>
                                <blockquote>
                                    <CFIF URL.lang EQ "en">
                                        <p class="mb-0">I have known Daniel Décary for several years. We are happy to have him as a professor on the ITF (Institut de Théologie pour la Francophonie) team. In addition to being a very skilled and effective communicator, with the academic qualifications necessary for his ministry, he also has more than twenty years of pastoral experience. I consider him to be a man of integrity and passion with a heart for God and "others". I do not hesitate to recommend his ministry for churches and/or people in difficulty and in need.</p>
                                    <CFELSE>
                                        <p class="mb-0">Je connais Daniel Décary depuis plusieurs années. Nous sommes heureux de l’avoir comme professeur sur l’équipe de l’ITF (Institut de Théologie pour la Francophonie). En plus d’être un communicateur très habile et efficace, qui possède les qualifications académiques nécessaires pour son ministère, il compte également plus de vingt années d’expérience pastorale. Je le considère comme un homme intègre et passionné avec un coeur pour Dieu et « les autres ». Je n’hésite pas à recommander son ministère pour les églises et/ou les personnes en difficulté et dans le besoin.</p>
                                    </CFIF>
                                </blockquote>
                                <div class="testimonial-author">
                                    <CFIF URL.lang EQ "fr">
                                        <p><strong class="font-weight-extra-bold">Mark Lecompte</strong><span>Président, Institut de Théologie pour la Francophonie</span></p>
                                    <CFELSE>
                                        <p><strong class="font-weight-extra-bold">Mark Lecompte</strong><span>President of the Institut de Théologie pour la Francophonie</span></p>
                                    </CFIF>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="container py-2">
        <div class="row pt-5">
            <div class="col-lg-6">
                <div class="card border-radius-2 bg-color-light box-shadow-1 mb-4">
                    <div class="card-body p-relative zindex-1">

                        <div class="feature-box feature-box-primary text-center d-flex flex-column align-items-center">
                            <div class="feature-box-icon border-radius-2 mb-3 w-auto h-auto p-4 text-5">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="feature-box-info p-0 mt-2">
                                <h4 class="mb-2">(514) 265-8115</h4>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card border-radius-2 bg-color-light box-shadow-1 mb-4">
                    <div class="card-body p-relative zindex-1">

                        <div class="feature-box feature-box-primary text-center d-flex flex-column align-items-center">
                            <div class="feature-box-icon border-radius-2 mb-3 w-auto h-auto p-4 text-5">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="feature-box-info p-0 mt-2">
                                <h4 class="mb-2">ddecary@gmail.com</h4>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    

</div>
</cfoutput>