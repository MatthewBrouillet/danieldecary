<cfoutput>
    <section id="content">
		<div class="content-wrap">
            <div class="container">
                <div class="row col-mb-50">
						<div class="col-12">
						    <h2 class="mt-0 text-uppercase font-28 line-bottom line-height-1">Content <span class="text-theme-color-2 font-weight-400">Management</span></h2>
									
                            <CFIF (structKeyExists(FORM, 'login') OR structKeyExists(URL, 'logout')) AND viewbag.message NEQ "">
                                <CFIF Left(viewbag.message, 5) EQ "Sorry">
                                    <div class="alert alert-danger">
								        <i class="icon-close icons"></i> #viewbag.message#
							        </div>
                                    
                                <CFELSE>
                                    <div class="alert alert-success">
                                        <i class="icon-check icons"></i>#viewbag.message#
                                    </div>
                                </CFIF>
                            </CFIF>
                        </div>
                        <!--- <div class="col-12" style="border:solid 1px;margin:4px;padding:10px;">
                            <h3 class="mt-0 line-bottom line-height-1">Browser Edition</h3>
                            <p>Log in here to edit content as you browse the website</p>
                            <form action="#viewbag.helper.getUrl('en', 'cgp', '', 'cms_login')#" method="post">
                                <div class="form-group col-md-6">
                                    <label for="email">Email</label>
                                    <input required name="email" type="email" class="form-control" id="email"  placeholder="Enter your email address">
                                </div>
                                <div class="form-group col-md-6" >
                                    <label for="password">Password</label>
                                    <input required name="pwd" type="password" class="form-control" id="pwd"  placeholder="Enter your password">
                                </div>
                                <!--- <div class="form-group col-md-4">
                                    <label for="section">Choose CMS section</label>
                                    <select name="cms" id="cms" class="form-select">
                                        <option value="frontend" selected="">Browsing edition</option>
                                        <option value="backend">Database edition</option>
                                    </select>
                                </div> --->

                                <button type="submit" name="login" class="btn btn-primary">Send</button>
                            </form>
                        </div> --->
                        <div class="col12" style="border:solid 1px;margin:4px;padding:10px;">
                            <h3 class="mt-0 line-bottom line-height-1">Intranet</h3>
                            <p><a href="#request.backend#">Cliquez ici pour accéder à l'intranet</a></p>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </section>
</cfoutput>