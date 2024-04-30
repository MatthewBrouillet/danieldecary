<CFIF StructKeyExists(Session, 'user') AND Session.user.type EQ "cms">
	<cfloop query="#variables.cmsQuery#"><!--- GET IDENTIFIER --->
		<CFSET cmsID = cmsID>
	</cfloop>
	<cfinvoke component="#viewbag.cfc.cms#" method="cmsContentBil" returnvariable="content" ><!--- QUERY WITH BILINGUAL CONTENT --->
		<cfinvokeargument name="cmsID" value="#cmsID#">
	</cfinvoke>
	<cfloop query="content">
		<CFSET pageURL= viewbag.helper.getUrl('en','#URL.module#','','#URL.action#')>
		<CFIF structKeyExists(URL, 'param')>
			<CFSET pageURL= "#pageURL#&param=#URL.param#">
		</CFIF>
		<cfoutput>
			<div id="cms#cmsID#"></div>
			<!--- LOAD UPDATE FORM --->
			<CFIF StructKeyExists(URL, 'edition')  AND URL.edition EQ cmsID AND NOT isDefined('FORM.cmsUpdate') >
				<cfform class="form-horizontal" action="#pageURL###cms#cmsID#" method="post" ENCTYPE="multipart/form-data">
					<div class="form-group">
						<label for="title_en" class="control-label">Title of section (EN)</label>
						<div class="col-sm-10">
							<input type="text" name="title_en" class="form-control" value="#title_en#">
						</div>
					</div>
                    <div class="form-group">
						<label for="title_fr" class="control-label">Title of section (FR)</label>
						<div class="col-sm-10">
							<input type="text" name="title_fr" class="form-control" value="#title_fr#">
						</div>
					</div>
					<div class="form-group">
						<label for="subTitle_en" class="col-sm-2 control-label">Sub Title (EN)</label>
						<div class="col-sm-10">
							<input type="text" name="subTitle_en" class="form-control" value="#subTitle_en#">
						</div>
					</div>
					<div class="form-group">
						<label for="subTitle_fr" class="col-sm-2 control-label">Sub Title (FR)</label>
						<div class="col-sm-10">
							<input type="text" name="subTitle_fr" class="form-control" value="#subTitle_fr#">
						</div>
					</div> 
                    <div class="form-group">
						<label for="content_en" class="control-label">Content (EN)</label>
						<div class="col-sm-10">
							<CFtextarea type="text" class="form-control" NAME="content_en" ID="content_en" VALUE="#content_en#" richtext="yes"  width="600" height="140" toolbar="Default"></CFTEXTAREA>
						</div>
					</div>
					<div class="form-group">
						<label for="content_fr" class="control-label">Content (FR)</label>
						<div class="col-sm-10">
							<CFtextarea type="text" class="form-control" NAME="content_fr" ID="content_fr" VALUE="#content_fr#" richtext="yes"  width="600" height="140" toolbar="Default"></CFTEXTAREA>
						</div>
					</div>
					<div class="form-group">
						<label for="link_en" class="control-label">Link (EN)</label>
						<div class="col-sm-10">
							<input type="text" name="link_en" class="form-control" value="#link_en#">
						</div>
					</div>
                    <div class="form-group">
						<label for="link_fr" class="control-label">Link (FR)</label>
						<div class="col-sm-10">
							<input type="text" name="link_fr" class="form-control" value="#link_fr#">
						</div>
					</div>
					<CFIF picture NEQ "">
						<div class="form-group">
							<label for="picture" class="control-label">Update Picture</label>
							<div class="col-sm-10">
								<input type="file" name="picture" class="form-control" value="">
							</div>
						</div>
					<CFELSE>
						<input type="hidden" name="picture" class="form-control" value="">
					</CFIF>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<label class="radio-inline">
								<input type="radio" name="display" id="display1" value="true" <cfif display>CHECKED</cfif>> Show
							</label>
							<label class="radio-inline">
								<input type="radio" name="display" id="display0" value="false" <cfif NOT display>CHECKED</cfif>> Hide
							</label>
    					</div>
  					</div>
					<input type="hidden" name="cmsID" value="#cmsID#">
					<div class="form-group">
    					<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" name="cmsUpdate" class="btn btn-primary">Update</button>
						</div>
					</div>
				</cfform>
			<CFELSE>
				<!--- LINK FOR EDITION --->
				<!--- <div class="style-msg mt-20">
					<div class="sb-msg"> --->
					<a href="#pageURL#&edition=#cmsID###cms#cmsID#"><i class="icon-note icons" ></i> <em>Click here to edit the section below</em></a>
					<!--- </div>
				</div> --->
			</CFIF>
		</cfoutput>
	</cfloop>
</CFIF>