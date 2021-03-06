INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-login_form_inspinia','entando-widget-login_form_inspinia',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<ul class="list-unstyled">
    <li class=" dropdown
        <#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if> ">
        <#if (Session.currentUser != "guest")>

        <a class="dropdown-fsi-login dropdown-toggle" href="#" data-toggle="dropdown">
           <@wp.currentUserProfileAttribute attributeName="fullname" />
        &nbsp; <span class="caret"></span>&nbsp;
        </a>
        <ul class="dropdown-menu dropdown-menu-custom dropdown-messages">
            <li>
                <@wp.ifauthorized permission="enterBackend">
                <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />">
                   <@wp.i18n key="ESLF_ADMINISTRATION" />
            </a>
            </@wp.ifauthorized>
        </li>
        <div class="divider"></div>
        <li>
            <a class="btn" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action">
               <@wp.i18n key="ESLF_SIGNOUT" />
        </a>
    </li>
    <@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
    <#if (editProfilePageVar??) >
    <li>
        <a href="<@wp.url page="${editProfilePageVar.code}" />" ><@wp.i18n key="ESLF_PROFILE_CONFIGURATION" /></a>
    </li>
    </#if>
</ul>
<#else>

<a class="dropdown-toggle" data-toggle="dropdown" href="#">
    <@wp.i18n key="ESLF_SIGNIN" />
    <span class="caret"></span>&nbsp;
</a>
<ul class=" dropdown-messages">
    <li>
        <form class="m-t" style="padding:10px;" method="POST">
            <#if (accountExpired?? && accountExpired == true)>
            <div class="alert alert-error">
                <button class="close" data-dismiss="alert">x</button>
                <@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
            </div>
            </#if>
            <#if (wrongAccountCredential?? && wrongAccountCredential == true)>
            <div class="alert alert-error">
                <button class="close" data-dismiss="alert">x</button>
                <@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
            </div>
            </#if>
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control"  placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
            </div>
            <input type="submit" class="btn btn-primary block full-width m-b" value="<@wp.i18n key="ESLF_SIGNIN" />" />
        </form>
    </li>
</ul>
</#if>
</li>
</ul>','<#assign wp=JspTaglibs["/aps-core"]>
<li class=" dropdown
    <#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if> ">
    <#if (Session.currentUser != "guest")>
  
    <a class="btn  text-left dropdown-toggle" href="#" data-toggle="dropdown">
        ${Session.currentUser}
        <span class="caret"></span>
    </a>
    <ul class="dropdown-menu">
        <li>
            <@wp.ifauthorized permission="enterBackend">
            <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />">
               <i class="fa fa-cube"></i>      
                <@wp.i18n key="ESLF_ADMINISTRATION" />
            </a>
            </@wp.ifauthorized>
        </li>
        <div class="divider"></div>
        <li> 
            <a class="btn" href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action">
               <i class="fa fa-sign-out"></i>           
                <@wp.i18n key="ESLF_SIGNOUT" />
            </a>
        </li>
        <@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
        <#if (editProfilePageVar??) >
        <li>
            <a href="<@wp.url page="${editProfilePageVar.code}" />" ><@wp.i18n key="ESLF_PROFILE_CONFIGURATION" /></a>
        </li>
        </#if>
    </ul>
    <#else>
 
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <@wp.i18n key="ESLF_SIGNIN" />
        <span class="caret"></span>
    </a>
    <ul class="dropdown-menu">
        <li>
            <form class="m-t" style="padding:10px;" method="POST">
                <#if (accountExpired?? && accountExpired == true)>
                <div class="alert alert-error">
                    <button class="close" data-dismiss="alert">x</button>
                    <@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
                </div>
                </#if>
                <#if (wrongAccountCredential?? && wrongAccountCredential == true)>
                <div class="alert alert-error">
                    <button class="close" data-dismiss="alert">x</button>
                    <@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
                </div>
                </#if>
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control"  placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
                </div>
                <input type="submit" class="btn btn-primary block full-width m-b" value="<@wp.i18n key="ESLF_SIGNIN" />" />
            </form>
        </li>
    </ul>
    </#if>
</li>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-performance','fsi-performance',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Performance</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>

    <div class="ibox-content">

        <div>
            <div style="text-align: right">
                <small>Last update 3 min ago</small>
            </div>
            <div class="progress progress-mini">
                <div style="width: 43%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="90"
                     class="progress-bar progress-bar-success"></div>
            </div>
            <small>Well Done!You completed 93 task. You have 217 tasks to complete activities.</small>
        </div>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-customer-information','fsi-customer-information',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
    <script>
        $(function(){

            function getQueryVariable(variable){
                var query = window.location.search.substring(1);
                var vars = query.split("&");
                for (var i=0;i<vars.length;i++) {
                    var pair = vars[i].split("=");
                    if(pair[0] == variable){return pair[1];}
                }
                return(false);
            };

            var loadUserInfo = function(configId, processInstanceId){
                var url = ''<@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang"/>/jpkiebpm/processInstanceListPlus.json?configId=''+configId+''&processInstanceId=''+processInstanceId;
                console.log(url);
                $.get(url, function (data) {
                    var obj = data.response.result.processInstanceList.list;
                    var keys = Object.keys(obj);
                    keys.forEach(function(key){
                        $(''.data-field-''+key).text(obj[key]);
                    })
                    console.log(data);
                });

            };
            var configId = getQueryVariable(''configId'');
            var processInstanceId = getQueryVariable(''processInstanceId'');
            loadUserInfo(configId, processInstanceId);

        });

    </script>
    <div class="fsi-customer-information ibox float-e-margins">
        <div class="ibox-title">
            <h5 class="data-field-company">-</h5>
            <div class="ibox-tools">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-wrench"></i>
                </a>
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="row">
                <div class="col-md-6">
                    <h4 class="fsi-subheader">Customer information</h4>
                    <p>
                    <div>Organization full name</div>
                    <b class="data-field-company">-</b>
                    </p>
                    <p>
                    <div>International application ID</div>
                    <b class="data-field-ssn">-</b>
                    </p>
                    <p>
                    <div>Entity Type</div>
                    <b class="data-field-type">-</b>
                    </p>
                </div>
                <div class="col-md-6">
                    <h4 class="fsi-subheader">Primary contact information</h4>
                    <p>
                    <div>Point of contact</div>
                    <b class="data-field-address">-</b>
                    </p>
                    <p>
                    <div>Phone</div>
                    <b class="data-field-phone">-</b>
                    </p>
                    <p>
                    <div>Email</div>
                    <b class="data-field-email">-</b>
                    </p>
                </div>
            </div>
        </div>
    </div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-language_choose_inspinia','entando-widget-language_choose_inspinia',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />
<a data-toggle="dropdown" class="dropdown-toggle" href="#"  title="<@wp.i18n key="ESLC_LANGUAGE" />">     
   <#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if>
   <#if (Session.currentUser != "guest")>
   <span class="block m-t-xs"> 
        <strong class="font-bold">
            ${Session.currentUser}
        </strong>
    </span>
    <#else>
    <span class="block m-t-xs"> 
        <strong class="font-bold">
            <@wp.i18n key="ESLF_SIGNIN" />
        </strong>
    </span>
    </#if>
    <span class="text-muted text-xs block">
        <@wp.i18n key="ESLC_LANGUAGE" />
        <b class="caret"></b>
    </span>
</a>
<ul class="dropdown-menu animated fadeInRight m-t-xs">
    <@wp.freemarkerTemplateParameter var="langsListVar" valueName="langsVar" removeOnEndTag=true >
    <#list langsListVar as curLangVar>
    <li <#if (curLangVar.code == currentLangVar)>class="active" </#if>>
        <a href="<@wp.url lang="${curLangVar.code}" paramRepeat=true />">
        <@wp.i18n key="ESLC_LANG_${curLangVar.code}" />
        </a>
    </li>
    </#list>
    </@wp.freemarkerTemplateParameter>
</ul>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-customer-overview','fsi-customer-overview',NULL,'<div class="fsi-customer-overview">
<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Customer overview</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
      <div class="fsi-customer-overview-item">
        <div class="label-number">75</div>
        <div class="label-text">Today Total Signed Up</div>
        <div class="progress">
          <div class="progress-bar progress-bar-today" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="0" style="width:65%"></div>
        </div>
      </div>
      <div class="fsi-customer-overview-item">
        <div class="label-number">24</div>
        <div class="label-text">Today Total Sign Up</div>
        <div class="progress">
          <div class="progress-bar progress-bar-yesterday" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="0" style="width:45%"></div>
        </div>
      </div>
      <div class="fsi-customer-overview-item">
        <div class="label-number">132</div>
        <div class="label-text">Last Week Total Sign Up</div>
        <div class="progress">
          <div class="progress-bar progress-bar-lastyear" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="0" style="width:65%"></div>
        </div>
      </div>
    </div>
  </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-state','fsi-state',NULL,'<div class="fsi-customer-state">
<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Customer state</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div id="morris-donut-chart" ></div>
    </div>
</div>
</div>
<script>
    $(document).ready(function () {
       Morris.Donut({
            element: ''morris-donut-chart'',
            data: [{label: "In Progress", value: 42},
                {label: "Started", value: 37},
                {label: "Completed", value: 21}],
            resize: true,
            colors: [''#F1C40F'', ''#2ECC71'', ''#E74C3C''],
        });
    });
</script>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('default_pagerBlock',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<#if (group.size > group.max)>
	<div class="pagination pagination-centered">
		<ul>
		<#if (1 != group.currItem)>
			<#if (group.advanced)>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >1</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_FIRST" />"><i class="icon-fast-backward"></i></a></li>
				<#if (1 != group.beginItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.currItem - group.offset}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_BACKWARD" />&#32;${group.offset}"><i class="icon-step-backward"></i></a></li>
				</#if>
			</#if>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.prevItem}</@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_PREV" /></a></li>
		</#if>
		<#list group.items as item>
		<#if (item_index >= (group.beginItemAnchor-1)) && (item_index <= (group.endItemAnchor-1))>
			<#if (item == group.currItem)>
			<li class="active"><a href="#">${item}</a></li>
			<#else>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${item}</@wp.parameter></@wp.url>">${item}</a></li>
			</#if>
		</#if>
		</#list>
		<#if (group.maxItem != group.currItem)>
			<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.nextItem}</@wp.parameter></@wp.url>"><@wp.i18n key="PAGER_NEXT" /></a></li>
			<#if (group.advanced)>
				<#if (group.maxItem != group.endItemAnchor)>
					<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.currItem + group.offset}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_STEP_FORWARD" />&#32;${group.offset}"><i class="icon-step-forward"></i></a></li>
				</#if>
				<li><a href="<@wp.url paramRepeat=true ><@wp.parameter name="${group.paramItemName}" >${group.maxItem}</@wp.parameter></@wp.url>" title="<@wp.i18n key="PAGER_LAST" />"><i class="icon-fast-forward"></i></a></li>
			</#if>
		</#if>
		</ul>
	</div>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-backlog','fsi-backlog',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Backlog</h5>
        <div class="pull-right">
            <div class="btn-group">
                <button type="button" class="btn btn-xs btn-white active">Today</button>
                <button type="button" class="btn btn-xs btn-white">Monthly</button>
                <button type="button" class="btn btn-xs btn-white">Annual</button>
            </div>
        </div>
    </div>
    <div class="ibox-content">
        <div class="row">
            <div class="col-md-4">
                <h1 class="no-margins">217</h1>
            </div>
            <div class="col-md-8">
                <div class="progress progress-mini margin-top-15">
                    <div style="width: 62%;" class="progress-bar progress-bar-danger"></div>
                </div>
            </div>

        </div>
        <div class="stat-percent font-bold text-danger">38% <i class="fa fa-level-down"></i></div>
        <small>Total last 350</small>

    </div>

</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('banner-main-left ','banner-main-left ',NULL,'<div class=" left-banner middle-box">
<p>Improving businesses&apos; life through meaningful services.
</p>
<input type="submit" value="CONTACT US" class="btn btn-primary login-button">
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-Declaration','fsi-Declaration',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Business details</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div class="row">
            <div class="col-md-12">
                <p class="form-title">Business legal documentation</p>

                <label class="login-label">Article for incorporation</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>

                <label class="login-label">Commercial lease</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>

                <label class="login-label">Franchise agreement</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>

                <p class="form-title">Business financial documentation</p>

                <label class="login-label">Profits and loss statements 1099 forms from the previuos 2 years</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>
                <label class="login-label">List of your debts such as credit cards, employess loans, car loans and real estate</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>
                <label class="login-label">List of your assets including bank statements, mutaul fund statements, reak estates and automobile titles, brokerage</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>

                <p class="form-title">Tax financial documentation</p>

                <label class="login-label">Most recent federal tx return possibly the last 2 tax returns</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>

                <p class="form-title">Other</p>
                <label class="login-label">canceled checks for your rent or mortage</label>
                <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                    <div class="form-control input-custom" data-trigger="fileinput">
                        <i class="glyphicon glyphicon-file fileinput-exists"></i>
                        <span class="fileinput-filename"></span>
                    </div>
                    <span class="input-group-addon btn btn-default btn-file"><span class="fileinput-new">Select file</span>
                        <span class="fileinput-exists">Change</span>
                        <input type="file" name="..."></span>
                    <a href="#" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="pull-left spacers">
                    <input type="submit" value="<@wp.i18n key="BACK" />" class="btn btn-primary login-button" />
                </div>
                <div class="pull-right spacers">
                    <input type="submit" value="<@wp.i18n key="SAVE_DRAFT" />" class="btn btn-info login-button" />
                </div>
                <div class="pull-right spacers">
                    <input type="submit" value="<@wp.i18n key="NEXT" />" class="btn btn-warning login-button" />
                </div>
            </div>
        </div>
    </div>
</div>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-am-add-customer-btn','fsi-am-add-customer-btn',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<a class="fsi-add-customer-btn btn btn-success" href="<@wp.url page="form_mobile" />" ><i class="fa fa-plus" aria-hidden="true"></i> &nbsp;Add Customer</a>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-onboarding-stages','fsi-onboarding-stages',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Onboarding stages</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div class="tabs-container">
            <div class="tabs-left">
                <ul class="nav nav-tabs">
                    <li class="">
                        <a data-toggle="tab" href="#tab-1"><i class="fa fa-chevron-circle-down" style="color:green;"></i> Enrollment</a>
                    </li>
                    <li class="active">
                        <a data-toggle="tab" href="#tab-2"><i class="fa fa-circle-o" style="color:#218fd8;"></i> Verification</a>
                    </li>
                    <li class="">
                        <a data-toggle="tab" href="#tab-3"><i class="fa fa-circle-o"></i> Fulfilment</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane">
                        <div class="panel-body">
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" checked>&nbsp&nbsp<strong>Signup Email initiation</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane active">
                        <div class="panel-body">
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" checked>&nbsp&nbsp<strong>Signup Email initiation</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                            <hr>
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" checked>&nbsp&nbsp<strong>Account Registration</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                            <hr>
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks">&nbsp&nbsp<strong>Application Submission</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-pane">
                        <div class="panel-body">
                            <p class="fsi-backoffice-date">TBA </p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" disabled>&nbsp&nbsp;<strong class="text-muted">Fullfilment checks</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                            <hr>
                            <p class="fsi-backoffice-date">TBA</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" disabled>&nbsp&nbsp<strong class="text-muted">Fullfilment checks</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-transaction-history','fsi-transaction-history',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Transaction history</h5>
        <span class="label label-primary">Timeline</span>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>

    <div class="ibox-content inspinia-timeline">

        <div class="timeline-item">
            <div class="row">
                <div class="col-xs-3 date">
                    <i class="fa fa-briefcase"></i>
                    9:00 am
                    <br>
                    <small class="text-navy">2 hour ago</small>
                </div>
                <div class="col-xs-7 content no-top-border">
                    <p class="m-b-xs"><strong>Initiate Signup mail</strong></p>

                    <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products.</p>

                </div>
            </div>
        </div>
        <div class="timeline-item">
            <div class="row">
                <div class="col-xs-3 date">
                    <i class="fa fa-briefcase" aria-hidden="true"></i>
                    9:21 am
                    <br>
                    <small class="text-navy">3 hour ago</small>
                </div>
                <div class="col-xs-7 content">
                    <p class="m-b-xs"><strong>Send payments to Mike</strong></p>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since.</p>
                </div>
            </div>
        </div>
        <div class="timeline-item">
            <div class="row">
                <div class="col-xs-3 date">
                    <i class="fa fa-briefcase" aria-hidden="true"></i>
                    10:00 am
                    <br>
                </div>
                <div class="col-xs-7 content">
                    <p class="m-b-xs"><strong>Application Submitted</strong></p>
                    <p>
                        Go to shop and find some products.
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-perfomance-bar','fsi-perfomance-bar',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Team Performance</h5>
        <div class="ibox-tools">
            <select class="m-b" style="width: 5%; background: #fff; border-width: 0px;">
                <option>This Year</option>
            </select>
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>

    <div class="ibox-content">

        <div class="row">
            <div class="col-md-2"><small>Added</small></div>
            <div class="col-md-2"><small><b>315</b></small></div>
            <div class="col-md-2"><small>Customer ot these</small></div>
            <div class="col-md-2"><small><b>5750</b></small></div>
            <div class="col-md-2 pull-left"><small>Complete the registration</small></div>
            <div class="col-md-2 pull-right">
                <small>Team aim 10,000</small>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="progress progress-mini">
                    <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60"
                         class="progress-bar progress-bar-success"></div>

                    <div style="width: 20%" class="progress-bar progress-default">

                    </div>

                </div>
            </div>
        </div>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-account-user','fsi-account-user',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Business details</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div class="tabs-container">
            <div class="tabs-left">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a data-toggle="tab" href="#tab-1"><i class="fa fa-chevron-circle-down" style="color:green;"></i> Enrollment</a>
                    </li>
                    <li class="">
                        <a data-toggle="tab" href="#tab-2"><i class="fa fa-circle-o" style="color:#218fd8;"></i> Verification</a>
                    </li>
                    <li class="">
                        <a data-toggle="tab" href="#tab-3"><i class="fa fa-circle-o"></i> Fulfilment</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane">
                        <div class="panel-body">
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks">&nbsp&nbsp<strong>Signup Email initiation</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                        </div>
                    </div>
                    <div id="tab-2" class="tab-pane active">
                        <div class="panel-body">
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" checked>&nbsp&nbsp<strong>Signup Email initiation</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                            <hr>
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" checked>&nbsp&nbsp<strong>Account Registration</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                            <hr>
                            <p class="fsi-backoffice-date">2/2/2017</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks">&nbsp&nbsp<strong>Application Submission</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                        </div>
                    </div>
                    <div id="tab-3" class="tab-pane">
                        <div class="panel-body">
                            <p class="fsi-backoffice-date">TBA </p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" disabled>&nbsp&nbsp;<strong class="text-muted">Fullfilment checks</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                            <hr>
                            <p class="fsi-backoffice-date">TBA</p>
                            <label class="remember-me-label">
                                <input type="checkbox" class="i-checks" disabled>&nbsp&nbsp<strong class="text-muted">Fullfilment checks</strong>
                            </label>
                            <p class="fsi-backoffice-subtitle">Account Manager</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-right_col_help_purple','entando-widget-right_col_help_purple',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<div class="title-box-icon">
    <h2 class="title">Need some help?</h2>
    <p class="margin-top"><strong>Call us on </strong></p>
    <p class="title"><strong> 0800 123 456</strong></p>
    <p> Open all day</p>
    <hr>
    <p>Write to us</p>
    <p><strong>mortagageinfo@acmebank.com</strong></p>
    <p>We are here to answer your mortgage questions</p>
    <hr>
    <p><strong> No panic mail!</p></strong>
<p><strong>urgentedits@acmebank.com </p></strong>
<p>We are here to change your application details before processing starts</p>
<hr>
<h2 class="title margin-top">Newsletter</h2>

<label class="margin-top-email"> Email</label>
<input type="text" class="form-control" placeholder="Full name" required="required">
<div>
    <br>
    <button type="button" class="btn btn-primary btn-sm pull-right ">Send</button>
</div>
<div class="clearfix"></div>
<hr>
<div class="security-logos">
    <img alt="acme-logo" class="logo-security" src="<@wp.imgURL />Loghi_Security.png">
</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-inspinia-meter-center-page','entando-inspinia-meter-center-page',NULL,NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <span class="label label-success pull-right">Monthly</span>
        <h5>Mortgage requests</h5>
    </div>
    <div class="ibox-content">
        <h1 class="no-margins">14,400</h1>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-inspinia-meter-left-page','entando-inspinia-meter-left-page',NULL,NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <span class="label label-success pull-right">Monthly</span>
        <h5>Mortgage requests</h5>
    </div>
    <div class="ibox-content">
        <h1 class="no-margins">120</h1>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-banner_main_page_light','entando-widget-banner_main_page_light',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<div class="home-fullscreen" id="">
    <div class="full-screen">
        <div class="home-wrapper home-wrapper-alt">
            <h1 class="font-light text-white">Personal Mortgage from 9000 to 999.999$</h1>
            <h4 class="text-light">Get feedback within 24 hours - No obligation</h4>
            <a href="#mortgage">
                <img alt="logo-arrow" class="logo-img" src="<@wp.imgURL />Fill_1.png">
            </a>
        </div>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-security_banner_light','entando-widget-security_banner_light',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />
<div class="text-center" >
       <img alt=""  class="logo" src="<@wp.imgURL />Loghi_Security.png">
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-data_report_tweets','entando-widget-data_report_tweets',NULL,NULL,'<div class="row">
                <div class="col-lg-6">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>New data for the report</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>

                        </div>
                        <div class="ibox-content ibox-heading">
                        <h3>Stock price up
                            <div class="stat-percent text-navy">34% <i class="fa fa-level-up"></i></div>
                        </h3>
                        <small><i class="fa fa-stack-exchange"></i> New economic data from the previous quarter.</small>
                    </div>
                        <div class="ibox-content">
                            <div>

                                <div class="pull-right text-right">

                                    <span class="bar_d
                        ashboard" style="display: none;">5,3,9,6,5,9,7,3,5,2,4,7,3,2,7,9,6,4,5,7,3,2,1,0,9,5,6,8,3,2,1</span><svg class="peity" height="16" width="100"><rect fill="#1ab394" x="0" y="7.108585781521267" width="2.2580645161290325" height="8.885732226901585"></rect><rect fill="#d7d7d7" x="3.2580645161290325" y="10.662878672281902" width="2.2580645161290325" height="5.33143933614095"></rect><rect fill="#1ab394" x="6.516129032258065" y="0" width="2.2580645161290325" height="15.994318008422852"></rect><rect fill="#d7d7d7" x="9.774193548387098" y="5.331439336140951" width="2.2580645161290325" height="10.6628786722819"></rect><rect fill="#1ab394" x="13.03225806451613" y="7.108585781521267" width="2.2580645161290325" height="8.885732226901585"></rect><rect fill="#d7d7d7" x="16.290322580645164" y="0" width="2.2580645161290325" height="15.994318008422852"></rect><rect fill="#1ab394" x="19.548387096774196" y="3.5542928907606353" width="2.2580645161290325" height="12.440025117662216"></rect><rect fill="#d7d7d7" x="22.806451612903228" y="10.662878672281902" width="2.2580645161290325" height="5.33143933614095"></rect><rect fill="#1ab394" x="26.06451612903226" y="7.108585781521267" width="2.2580645161290325" height="8.885732226901585"></rect><rect fill="#d7d7d7" x="29.322580645161292" y="12.440025117662218" width="2.2580645161290325" height="3.5542928907606335"></rect><rect fill="#1ab394" x="32.58064516129033" y="8.885732226901585" width="2.2580645161290325" height="7.108585781521267"></rect><rect fill="#d7d7d7" x="35.83870967741936" y="3.5542928907606353" width="2.2580645161290325" height="12.440025117662216"></rect><rect fill="#1ab394" x="39.09677419354839" y="10.662878672281902" width="2.2580645161290325" height="5.33143933614095"></rect><rect fill="#d7d7d7" x="42.35483870967742" y="12.440025117662218" width="2.2580645161290325" height="3.5542928907606335"></rect><rect fill="#1ab394" x="45.612903225806456" y="3.5542928907606353" width="2.2580645161290325" height="12.440025117662216"></rect><rect fill="#d7d7d7" x="48.87096774193549" y="0" width="2.2580645161290325" height="15.994318008422852"></rect><rect fill="#1ab394" x="52.12903225806452" y="5.331439336140951" width="2.2580645161290325" height="10.6628786722819"></rect><rect fill="#d7d7d7" x="55.38709677419355" y="8.885732226901585" width="2.2580645161290325" height="7.108585781521267"></rect><rect fill="#1ab394" x="58.645161290322584" y="7.108585781521267" width="2.2580645161290325" height="8.885732226901585"></rect><rect fill="#d7d7d7" x="61.903225806451616" y="3.5542928907606353" width="2.2580645161290325" height="12.440025117662216"></rect><rect fill="#1ab394" x="65.16129032258065" y="10.662878672281902" width="2.2580645161290325" height="5.33143933614095"></rect><rect fill="#d7d7d7" x="68.41935483870968" y="12.440025117662218" width="2.2580645161290325" height="3.5542928907606335"></rect><rect fill="#1ab394" x="71.67741935483872" y="14.217171563042534" width="2.2580645161290325" height="1.7771464453803167"></rect><rect fill="#d7d7d7" x="74.93548387096774" y="15.085227119035956" width="2.2580645161290325" height="0.9090908893868948"></rect><rect fill="#1ab394" x="78.19354838709678" y="0" width="2.2580645161290325" height="15.994318008422852"></rect><rect fill="#d7d7d7" x="81.45161290322581" y="7.108585781521267" width="2.2580645161290325" height="8.885732226901585"></rect><rect fill="#1ab394" x="84.70967741935485" y="5.331439336140951" width="2.2580645161290325" height="10.6628786722819"></rect><rect fill="#d7d7d7" x="87.96774193548387" y="1.7771464453803176" width="2.2580645161290325" height="14.217171563042534"></rect><rect fill="#1ab394" x="91.22580645161291" y="10.662878672281902" width="2.2580645161290325" height="5.33143933614095"></rect><rect fill="#d7d7d7" x="94.48387096774194" y="12.440025117662218" width="2.2580645161290325" height="3.5542928907606335"></rect><rect fill="#1ab394" x="97.74193548387098" y="14.217171563042534" width="2.2580645161290325" height="1.7771464453803167"></rect></svg>
                                    <br>
                                    <small class="font-bold">$ 20 054.43</small>
                                </div>
                                <h4>NYS report new data!
                                    <br>
                                    <small class="m-r"><a href="graph_flot.html"> Check the stock price! </a> </small>
                                </h4>
                            </div>
                        </div>
                    </div>
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Read below comments and tweets</h5>
                            <div class="ibox-tools">
                                <a class="collapse-link">
                                    <i class="fa fa-chevron-up"></i>
                                </a>
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <i class="fa fa-wrench"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li><a href="#">Config option 1</a>
                                    </li>
                                    <li><a href="#">Config option 2</a>
                                    </li>
                                </ul>
                                <a class="close-link">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="ibox-content no-padding">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <p><a class="text-info" href="#">@Alan Marry</a> I belive that. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <small class="block text-muted"><i class="fa fa-clock-o"></i> 1 minuts ago</small>
                                </li>
                                <li class="list-group-item">
                                    <p><a class="text-info" href="#">@Stock Man</a> Check this stock chart. This price is crazy! </p>
                                    <small class="block text-muted"><i class="fa fa-clock-o"></i> 2 hours ago</small>
                                </li>
                                <li class="list-group-item">
                                    <p><a class="text-info" href="#">@Kevin Smith</a> Lorem ipsum unknown printer took a galley </p>
                                    <small class="block text-muted"><i class="fa fa-clock-o"></i> 2 minuts ago</small>
                                </li>
                                <li class="list-group-item ">
                                    <p><a class="text-info" href="#">@Jonathan Febrick</a> The standard chunk of Lorem Ipsum</p>
                                    <small class="block text-muted"><i class="fa fa-clock-o"></i> 1 hour ago</small>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                </div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-meeting_list-purple','entando-widget-meeting_list-purple',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />
<div class="ibox-content inspinia-timeline">
    <div class="timeline-item">
        <div class="row">
            <div class="col-xs-3 date">
                <i class="fa fa-briefcase"></i>
                6:00 am
                <br>
                <small class="text-navy">2 hour ago</small>
            </div>
            <div class="col-xs-7 content no-top-border">
                <p class="m-b-xs"><strong>Meeting</strong></p>

                <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products.</p>

            </div>
        </div>
    </div>
    <div class="timeline-item">
        <div class="row">
            <div class="col-xs-3 date">
                <i class="fa fa-file-text"></i>
                7:00 am
                <br>
                <small class="text-navy">3 hour ago</small>
            </div>
            <div class="col-xs-7 content">
                <p class="m-b-xs"><strong>Send documents to Mike</strong></p>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since.</p>
            </div>
        </div>
    </div>
    <div class="timeline-item">
        <div class="row">
            <div class="col-xs-3 date">
                <i class="fa fa-coffee"></i>
                8:00 am
                <br>
            </div>
            <div class="col-xs-7 content">
                <p class="m-b-xs"><strong>Coffee Break</strong></p>
                <p>
                    Go to shop and find some products.
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s.
                </p>
            </div>
        </div>
    </div>
    <div class="timeline-item">
        <div class="row">
            <div class="col-xs-3 date">
                <i class="fa fa-phone"></i>
                11:00 am
                <br>
                <small class="text-navy">21 hour ago</small>
            </div>
            <div class="col-xs-7 content">
                <p class="m-b-xs"><strong>Phone with Jeronimo</strong></p>
                <p>
                    Lorem Ipsum has been the industry''s standard dummy text ever since.
                </p>
            </div>
        </div>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-inspinia-meter-right-page','entando-inspinia-meter-right-page',NULL,NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <span class="label label-success pull-right">Monthly</span>
        <h5>Mortgage requests</h5>
    </div>
    <div class="ibox-content">
        <h1 class="no-margins"><span style="padding-right:5em">5</span>$400.000</h1>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-left_columns_mortgage','entando-widget-left_columns_mortgage',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.info key="langs" var="langsVar" />
<@wp.info key="currentLang" var="currentLangVar" />
<div class="title-box-icon">
    <h2 class="title">Mortgage Process</h2>
    <div class="progress-dots">
        <div class="row row-spacer">
            <div  class="col-md-3 ">
                <button type="button" class="btn btn-primary btn-circle">1</button>
            </div>
            <div  class="col-md-9 ">
                <p><strong>Fill-in the form</strong></p>
                <p>Answer some basic questions about your situation and see what you qualify for.</p>
            </div>
        </div>
        <div class="row row-spacer">
            <div  class="col-md-3 ">
                <button type="button" class="btn btn-primary btn-circle">2</button>
            </div>
            <div  class="col-md-9 ">
                <p><strong>Wait a week</strong></p>
                <p>We make the commitment to review your mortgage application within 7 days.</p>
            </div>
        </div>
        <div class="row row-spacer">
            <div  class="col-md-3 ">
                <button type="button" class="btn btn-primary btn-circle">3</button>
            </div>
            <div  class="col-md-9 ">
                <p><strong>Get the funds</strong></p>
                <p>You''ll receive your funds directly to your bank in as little as a week!</p>
            </div>
        </div>
        <div class="row row-big-spacer text-center">
            <div class="col-md-12 ">
                <p class="title-mortgage"><strong>$ 40 Billion +</strong></p>
                <p class="subtitle">Borrowed</p>
            </div>
            <div class="col-md-12 ">
                <p class="title-mortgage"><strong>1.2 Million +</strong></p>
                <p class="subtitle">Customers</p>
            </div>
            <div class="col-md-12 ">
                <div class="stars"></div>
                <p class="subtitle">Avarage Customer Rating</p>
            </div>
        </div>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-banner_avarage_light','entando-widget-banner_avarage_light',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>
<div class="avarage" >
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('Login-Customer','Login-Customer',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="middle-box loginscreen animated fadeInDown">
    <#if (Session.currentUser.username != "guest") >
    <#if (Session.currentUser.entandoUser) >
    <#if (!Session.currentUser.credentialsNotExpired) >
    <div class="alert alert-block">
        <p>
            <@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD" />:
            <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/editPassword.action">
               <@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD_CHANGE" /></a>
        </p>
    </div>
    </#if>
    </#if>

    <p>

        <@wp.ifauthorized groupName="account_executive">
        <script>window.location = "<@wp.url page="account_executive_dashboard" />";</script>
        </@wp.ifauthorized>
        <@wp.ifauthorized groupName="legal_worker">
        <script>window.location = "<@wp.url page="legal_dashboard" />";</script>
        </@wp.ifauthorized>
        <@wp.ifauthorized groupName="knowledge_worker">
        <script>window.location = "<@wp.url page="knowledge_dashboard" />";</script>
        </@wp.ifauthorized>
        <@wp.ifauthorized groupName="client_manager">
        <script>window.location = "<@wp.url page="client_onboarding_manager" />";</script>
        </@wp.ifauthorized>
    </p>

    <#else>
    <#if (accountExpired?? && accountExpired == true) >
    <div class="alert alert-block alert-error">
        <p><@wp.i18n key="USER_STATUS_EXPIRED" /></p>
    </div>
    </#if>
    <#if (wrongAccountCredential?? && wrongAccountCredential == true) >
    <div class="alert alert-block alert-error">
        <p><@wp.i18n key="USER_STATUS_CREDENTIALS_INVALID" /></p>
    </div>
    </#if>
    <p class="title-login"><@wp.i18n key="RESERVED_AREA" /></p>
    <form action="<@wp.url/>" method="post" class="m-t">
        <#if (RequestParameters.returnUrl??) >
        <input type="hidden" name="returnUrl" value="${RequestParameters.returnUrl}" />
        </#if>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="USERNAME" /></label>
            <input id="username" type="text" name="username" placeholder="<@wp.i18n key="USERNAME" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="PASSWORD" /></label>
            <input id="password" type="password" name="password" placeholder="<@wp.i18n key="ENTER_PASSWORD" />" class="form-control input-custom" />
        </div>
        <div>
            <label class="remember-me-label">
                <input type="checkbox" class="i-checks"> Remember me
            </label>
        </div>
        <div class="form-actions text-center">
            <input type="submit" value="<@wp.i18n key="SIGNIN" />" class="btn btn-primary login-button" />
                   <p class="forget">Forgot your password or Email/Username?</p>
        </div>
    </form>
    </#if>
</div>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('generic-footer','generic-footer',NULL,'<div class="fsi-backoffice-footer">
<span>Copyright Fortress Bank & Loan &commat; 2017</span>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi_client_on_board_mananger_tabs','fsi_client_on_board_mananger_tabs',NULL,'<div class="fsi-customer-rate">
    <div class="ibox float-e-margins">
        <div class="ibox-title">
            <h5>Customer rate</h5>
            <div class="ibox-tools">
                <a class="collapse-link">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
        <div class="ibox-content">
            <div class="tabs-container">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#tab-1" aria-expanded="true"> Prospects count </a>
                    </li>
                    <li class=""><a data-toggle="tab" href="#tab-2" aria-expanded="false">Onboarding</a></li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="panel-body">
                            <div class="ibox float-e-margins">
                                <div class="row">
                                    <div class="col-lg-9 text-align-left">
                                        <h2 style="margin-top:5px;">Prospect count</h2>
                                    </div>
                                    <div class="col-lg-3 text-align-right">
                                        <div class="input-group"><input type="text" placeholder="Search"
                                                                        class="input-sm form-control">
                                            <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-success"> Go!</button> </span></div>
                                    </div>


                                    <div class="col-lg-9 text-align-left">
                                        <h4><b>COMPANY FILTER</b></h4>
                                    </div>
                                    <div class="col-lg-3 text-align-right">
                                        <h4><b>TIME FILTER</b></h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <select class="form-control m-b">
                                            <option>INDUSTRY TYPE</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <select class="form-control m-b">
                                            <option>CUSTOMER VALUE</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2">
                                        <select class="form-control m-b">
                                            <option>STATE</option>
                                        </select>
                                    </div>
                                    <div class="col-md-offset-3 col-md-3">
                                        <div class="form-group pull-right">
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-w-m btn-primary active">Year
                                                </button>
                                                <button type="button" class="btn btn-w-m btn-white">Month</button>
                                                <button type="button" class="btn btn-w-m btn-white">Week</button>
                                            </div>
                                        </div>
                                    </div>
                          </div>
                                <div class="row">
                                    <div class="col-md-9">
                                    </div>
                                    <div class="col-md-3">
                                        <select class="form-control m-b pull-right" style="width: 15em;">
                                            <option>ALL YEAR</option>
                                        </select>
                                    </div>
                                </div>

                                <hr/>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div>

                                            <div id="lineChart" class="c3"
                                                 style="max-height: 320px; position: relative;"></div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                        </div>
                    </div>


                    <div id="tab-2" class="tab-pane">
                        <div class="panel-body">


                            <div class="ibox float-e-margins">


                                <div class="row">
                                    <div class="col-md-12 text-align-left">
                                        <h2 style="margin-top:5px;">Average Time Convesion</h2>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="text" id="example_id" name="example_name" value=""/>
                                        <script>
                                            $("#example_id").ionRangeSlider({
                                                grid: true,
                                                type: "double",
                                                from: 1,
                                                to: 5,
                                                values: ["1h", "2d", "4d", "6d", "8d", "12d", "14d"]
                                            });
                                        </script>

                                    </div>
                                </div>


                            </div>


                            <div class="col-md-12 text-align-left">
                                <h4><b>Company Filter</b></h4>
                            </div>

                        </div>
                        <br><br>

                        <div class="row">
                            <div class="col-md-2">
                                <select class="form-control m-b">
                                    <option>Industry Type</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select class="form-control m-b">
                                    <option>Customer Value</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <select class="form-control m-b">
                                    <option>State</option>
                                </select>
                            </div>
                            <div class="col-md-offset-3 col-md-3">
                                <div class="form-group pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-w-m btn-white active">All</button>
                                        <button type="button" class="btn btn-w-m btn-white">Year</button>
                                        <button type="button" class="btn btn-w-m btn-white">Month</button>
                                        <button type="button" class="btn btn-w-m btn-white">Week</button>
                                    </div>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4" style="text-align: center">
                                <div style="display: inline-flex">
                                    <i class="fa fa-chevron-left" style="margin-right: 2em;"></i>
                                    <h4 class="no-margins">2017</h4>
                                    <i class="fa fa-chevron-right" style="margin-left: 2em;"></i>
                                </div>
                            </div>
                            <div class="col-md-4"></div>

                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <div>

                                    <div id="barChart" class="c3" style="max-height: 320px; position: relative;"></div>
                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>


        </div>
    </div>
</div>
</div>

<script>

    c3.generate({
        bindto: ''#lineChart'',
        data: {
            columns: [
                [''worker selected'', 30, 200, 100, 400, 150, 250, 345, 987, 887, 120, 555, 504],
                [''average'', 130, 300, 200, 300, 250, 450, 456, 767, 888, 231, 06, 56]
            ]
        },
        color: {
            pattern: [''#18a689'', ''#2f4050'']


        },

        axis: {
            x: {
                type: ''category'',
                categories: [''JAN'', ''FEB'', ''MAR'', ''APR'', ''MAY'', ''JUN'', ''JUL'', ''AGO'', ''SEP'', ''OCT'', ''NOV'', ''DIC'']
            }
        }
    })


    c3.generate({
        bindto: ''#barChart'',
        data: {
            x: ''x'',
            columns: [
                [''x'', ''JAN'', ''FEB'', ''MAR'', ''APR'', ''MAY'', ''JUN'', ''JUL'', ''AGO'', ''SEP'', ''OCT'', ''NOV'', ''DIC''],
                [''Onboarded'', 30, 100, 20, 40, 15, 25, 34, 97, 87, 12, 55, 50, 23, 45, 78, 65, 30, 78, 56, 35, 26, 22],
                [''Lost'', 13, 3, 20, 30, 25, 45, 45, 76, 88, 23, 06, 56, 45, 78, 34, 22, 11, 66, 88, 99, 77],
            ],
            groups: [
                [''Onboarded'', ''Lost'']
            ],
            type: ''bar''
        },
        legend: {
            position: ''inset'',
            inset: {
                anchor: ''top-left'',
                x: 20,
                y: 10,
                step: 2
            }

        },
        bar: {
            width: 30
        },
        color: {
            pattern: [''#1ABC9C'', ''#898EB4'']
        },
        axis: {
            x: {
                type: ''category'' // this needed to load string x value
            }
        }
    });
</script>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-customer-rate','fsi-customer-rate',NULL,'<div class="fsi-customer-rate">
<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Customer rate</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div>
            <div id="torta"></div>
        </div>
    </div>
</div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Boolean',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />
<div class="control-group">
	<div class="controls">
		<label for="${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
	</div>
	<div class="controls">
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Bool_io',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameControlVar = userFilterOptionVar.formFieldNames[2] >
<input name="${formFieldNameControlVar}" type="hidden" value="true" />
<#assign formFieldNameIgnoreVar = userFilterOptionVar.formFieldNames[1] >
<#assign formFieldIgnoreValue = userFilterOptionVar.getFormFieldValue(formFieldNameIgnoreVar) >
<#assign formFieldControlValue = userFilterOptionVar.getFormFieldValue(formFieldNameControlVar) >
<div class="controls">
	<label for="ignore_${formFieldNameIgnoreVar}" class="checkbox">
	<input id="ignore_${formFieldNameIgnoreVar}" name="${formFieldNameIgnoreVar}" <#if (formFieldIgnoreValue?? && formFieldIgnoreValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
	<@wp.i18n key="IGNORE" /></label>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_CheckBox',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />
<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="checkbox">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="checkbox" />
		<@wp.i18n key="YES"/></label>
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('default_pagerFormBlock_is',NULL,NULL,NULL,'<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign s=JspTaglibs["/struts-tags"]>
<@s.if test="#group.size > #group.max">
<ul class="pagination">
	<@s.if test="null != #group.pagerId">
		<@s.set var="pagerIdMarker" value="#group.pagerId" />
	</@s.if>
	<@s.else>
		<@s.set var="pagerIdMarker">pagerItem</@s.set>
	</@s.else>
	<@s.if test="#group.advanced">
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_1''}" type="button" disabled="%{1 == #group.currItem}" title="%{getText(''label.goToFirst'')}">
			<span class="icon fa fa-step-backward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#group.currItem - #group.offset) }" type="button" disabled="%{1 == #group.beginItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.backward'')}">
			<span class="icon fa fa-fast-backward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.prevItem}" type="button" title="%{getText(''label.prev.full'')}" disabled="%{1 == #group.currItem}">
			<span class="icon fa fa-long-arrow-left"></span>
		</@wpsf.submit>
	</li>
	<@s.subset source="#group.items" count="#group.endItemAnchor-#group.beginItemAnchor+1" start="#group.beginItemAnchor-1">
		<@s.iterator id="item">
			<li>
				<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #item}" type="button" disabled="%{#item == #group.currItem}">
					<@s.property value="%{#item}" />
				</@wpsf.submit>
			</li>
		</@s.iterator>
	</@s.subset>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.nextItem}" type="button" title="%{getText(''label.next.full'')}" disabled="%{#group.maxItem == #group.currItem}">
			<span class="icon fa fa-long-arrow-right"></span>
		</@wpsf.submit>
	</li>
	<@s.if test="#group.advanced">
	<@s.set var="jumpForwardStep" value="#group.currItem + #group.offset"></@s.set>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + (#jumpForwardStep)}" type="button" disabled="%{#group.maxItem == #group.endItemAnchor}" title="%{getText(''label.jump'') + '' '' + #group.offset + '' '' + getText(''label.forward'')}">
			<span class="icon fa fa-fast-forward"></span>
		</@wpsf.submit>
	</li>
	<li>
		<@wpsf.submit name="%{#pagerIdMarker + ''_'' + #group.size}" type="button" disabled="%{#group.maxItem == #group.currItem}" title="%{getText(''label.goToLast'')}">
			<span class="icon fa fa-step-forward"></span>
		</@wpsf.submit>
	</li>
	</@s.if>
	<@s.set var="pagerIdMarker" value="null" />
</ul>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_ThreeSt',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<fieldset>
<legend><@wp.i18n key="${i18n_Attribute_Key}" /></legend>
<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Bool_io" escapeXml=false />
<div class="control-group">
	<div class="controls">
		<label for="true_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="true_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "true")>checked="checked"</#if> value="true" type="radio" />
		<@wp.i18n key="YES"/></label>
		<label for="false_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="false_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "false")>checked="checked"</#if> value="false" type="radio" />
		<@wp.i18n key="NO"/></label>
		<label for="both_${formFieldNameVar}" class="radio">
		<input name="${formFieldNameVar}" id="both_${formFieldNameVar}" <#if (formFieldValue??) && (formFieldValue == "both")>checked="checked"</#if> value="both" type="radio" />
		<@wp.i18n key="BOTH"/></label>
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-MonolistAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.if test="#attribute.attributes.size() != 0">
	<ul class="unstyled">
</@s.if>

<@s.set var="masterListAttributeTracer" value="#attributeTracer" />
<@s.set var="masterListAttribute" value="#attribute" />

<@s.iterator value="#attribute.attributes" var="attribute" status="elementStatus">
	<@s.set var="attributeTracer" value="#masterListAttributeTracer.getMonoListElementTracer(#elementStatus.index)"></@s.set>
	<@s.set var="elementIndex" value="#elementStatus.index" />
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" />_<@s.property value="#elementStatus.count" /></@s.set>

	<li class="control-group  <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@s.if test="#attribute.type == ''Composite''">
				<@s.property value="#elementStatus.count" /><span class="noscreen">&#32;<@s.text name="label.compositeAttribute.element" /></span>
				&#32;
				<@s.if test="#lang.default">
					<@wp.fragment code="userprofile_is_front_AllList_operationModule" escapeXml=false /> 
				</@s.if>
			</@s.if>
			<@s.else>
				<@s.property value="#elementStatus.count" />
				&#32;
				<@wp.fragment code="userprofile_is_front_AllList_operationModule" escapeXml=false /> 
			</@s.else>
		</label>
		<div class="controls">
			<@s.if test="#attribute.type == ''Boolean''">
				<@wp.fragment code="userprofile_is_front-BooleanAttribute" escapeXml=false />
			</@s.if>
			<@s.elseif test="#attribute.type == ''CheckBox''">
				<@wp.fragment code="userprofile_is_front-CheckboxAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Composite''">
				<@wp.fragment code="userprofile_is_front-CompositeAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Date''">
				<@wp.fragment code="userprofile_is_front-DateAttribute" escapeXml=false /> 
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Enumerator''">
				<@wp.fragment code="userprofile_is_front-EnumeratorAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''EnumeratorMap''">
				<@wp.fragment code="userprofile_is_front-EnumeratorMapAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Hypertext''">
				<@wp.fragment code="userprofile_is_front-HypertextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Longtext''">
				<@wp.fragment code="userprofile_is_front-LongtextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Monotext''">
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Number''">
				<@wp.fragment code="userprofile_is_front-NumberAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''ThreeState''">
				<@wp.fragment code="userprofile_is_front-ThreeStateAttribute" escapeXml=false />
			</@s.elseif>
			<@s.elseif test="#attribute.type == ''Text''">
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />				
			</@s.elseif>
			<@s.else>
				<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />	
			</@s.else>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</li>
</@s.iterator>

<@s.set var="attributeTracer" value="#masterListAttributeTracer" />
<@s.set var="attribute" value="#masterListAttribute" />
<@s.set var="elementIndex" value="" />
<@s.if test="#attribute.attributes.size() != 0">
</ul>
</@s.if>
<@s.if test="#lang.default">
	<div class="control-group">
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-AllList-addElementButton" escapeXml=false />				
		</div>
	</div>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_profileChangeConfirmation',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p><@wp.i18n key="userprofile_PROFILE_UPDATED" /></p>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_resource_detail_include',NULL,NULL,'','<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#methodVar == null">
	<p>
		<@s.property value="#currentMethodNameVar" />,&#32;<@wp.i18n key="ENTANDO_API_METHOD_KO" />
	</p>
</@s.if>
<@s.else>
	<dl class="dl-horizontal">
		<dt>
			<@wp.i18n key="ENTANDO_API_METHOD" />
		</dt>
			<dd>
				<@wp.i18n key="ENTANDO_API_METHOD_OK" />
			</dd>
		<@s.if test="#methodVar != null">
			<dt>
				<@wp.i18n key="ENTANDO_API_DESCRIPTION" />
			</dt>
				<dd><@s.property value="#methodVar.description" /></dd>
			<dt>
				<@wp.i18n key="ENTANDO_API_METHOD_AUTHORIZATION" />
			</dt>
				<dd>
					<@s.if test="%{null != #methodVar.requiredPermission}">
						<@s.iterator value="methodAuthorityOptions" var="permission"><@s.if test="#permission.key==#methodVar.requiredPermission"><@s.property value="#permission.value" /></@s.if></@s.iterator>
					</@s.if>
					<@s.elseif test="%{#methodVar.requiredAuth}">
						<@wp.i18n key="ENTANDO_API_METHOD_AUTH_SIMPLE" />
					</@s.elseif>
					<@s.else>
						<@wp.i18n key="ENTANDO_API_METHOD_AUTH_FREE" />
					</@s.else>
				</dd>
			<@s.if test=''%{!#methodVar.resourceName.equalsIgnoreCase("getService")}'' >
			<dt>
				<@wp.i18n key="ENTANDO_API_METHOD_SCHEMAS" />
			</dt>
				<dd class="schemas">
					<@s.if test=''%{#methodVar.httpMethod.toString().equalsIgnoreCase("POST") || #methodVar.httpMethod.toString().equalsIgnoreCase("PUT")}''>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/requestSchema.action" var="requestSchemaURLVar" >
							<@wp.parameter name="resourceName"><@s.property value="#methodVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#methodVar.namespace" /></@wp.parameter>
							<@wp.parameter name="httpMethod"><@s.property value="#methodVar.httpMethod" /></@wp.parameter>
						</@wp.action>
						<a href="${requestSchemaURLVar}" >
							<@wp.i18n key="ENTANDO_API_METHOD_SCHEMA_REQ" />
						</a>
						<br />
					</@s.if>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/responseSchema.action" var="responseSchemaURLVar" >
							<@wp.parameter name="resourceName"><@s.property value="#methodVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#methodVar.namespace" /></@wp.parameter>
							<@wp.parameter name="httpMethod"><@s.property value="#methodVar.httpMethod" /></@wp.parameter>
						</@wp.action>
						<a href="${responseSchemaURLVar}" >
							<@wp.i18n key="ENTANDO_API_METHOD_SCHEMA_RESP" />
						</a>
				</dd>
			</@s.if>
		</@s.if>
	</dl>
	<@s.if test="#methodVar != null">
		<@s.set var="methodParametersVar" value="#methodVar.parameters" />
		<@s.if test="null != #methodParametersVar && #methodParametersVar.size() > 0">
			<table class="table table-striped table-bordered table-condensed">
				<caption><@wp.i18n key="ENTANDO_API_METHOD_REQUEST_PARAMS" /></caption>
				<tr>
					<th><@wp.i18n key="ENTANDO_API_PARAM_NAME" /></th>
					<th><@wp.i18n key="ENTANDO_API_PARAM_DESCRIPTION" /></th>
					<th><@wp.i18n key="ENTANDO_API_PARAM_REQUIRED" /></th>
				</tr>
				<@s.iterator value="#methodParametersVar" var="apiParameter" >
					<tr>
						<td><@s.property value="#apiParameter.key" /></td>
						<td><@s.property value="#apiParameter.description" /></td>
						<td class="icon required_<@s.property value="#apiParameter.required" />">
							<@s.if test="#apiParameter.required">
								<@wp.i18n key="YES" />
							</@s.if>
							<@s.else>
								<@wp.i18n key="NO" />
							</@s.else>
						</td>
					</tr>
				</@s.iterator>
			</table>
		</@s.if>
	</@s.if>
</@s.else>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('dropdown_menu_responsive','dropdown_menu_responsive',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
    <li class=" dropdown <#if (accountExpired?? && accountExpired == true) || (wrongAccountCredential?? && wrongAccountCredential == true)>open</#if> ">
        <#if (Session.currentUser != "guest")>
        <a class="dropdown-toggle" href="#" data-toggle="dropdown">
        <@wp.currentUserProfileAttribute attributeName="fullname" />
        &nbsp; <span class="caret"></span>&nbsp;
        </a>
        <ul class="dropdown-menu">
            <li>
                <@wp.ifauthorized permission="enterBackend">
                <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />">
                   <@wp.i18n key="ESLF_ADMINISTRATION" />
            </a>
            </@wp.ifauthorized>
        </li>
        <li role="separator" class="divider"></li>
        <li>
            <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action">
               <@wp.i18n key="ESLF_SIGNOUT" />
        </a>
    </li>
    <@wp.pageWithWidget var="editProfilePageVar" widgetTypeCode="userprofile_editCurrentUser" />
    <#if (editProfilePageVar??) >
    <li>
        <a href="<@wp.url page="${editProfilePageVar.code}" />" ><@wp.i18n key="ESLF_PROFILE_CONFIGURATION" /></a>
    </li>
    </#if>
</ul>
<#else>

<a class="dropdown-toggle" data-toggle="dropdown" href="#">
    <@wp.i18n key="ESLF_SIGNIN" />
    <span class="caret"></span>&nbsp;
</a>
<ul class=" dropdown-messages">
    <li>
        <form class="m-t" style="padding:10px;" method="POST">
            <#if (accountExpired?? && accountExpired == true)>
            <div class="alert alert-error">
                <button class="close" data-dismiss="alert">x</button>
                <@wp.i18n key="ESLF_USER_STATUS_EXPIRED" />
            </div>
            </#if>
            <#if (wrongAccountCredential?? && wrongAccountCredential == true)>
            <div class="alert alert-error">
                <button class="close" data-dismiss="alert">x</button>
                <@wp.i18n key="ESLF_USER_STATUS_CREDENTIALS_INVALID" />
            </div>
            </#if>
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="<@wp.i18n key="ESLF_USERNAME" />">
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control"  placeholder="<@wp.i18n key="ESLF_PASSWORD" />">
            </div>
            <input type="submit" class="btn btn-primary block full-width m-b" value="<@wp.i18n key="ESLF_SIGNIN" />" />
        </form>
    </li>
</ul>
</#if>
</li>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_entryCurrentProfile',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#if (Session.currentUser != "guest") >
<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set var="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" var="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
			<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
			<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
			<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false /> 
		</@s.if>
	</@s.iterator>
	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>
</form>
<#else>
	<p><@wp.i18n key="userprofile_PLEASE_LOGIN" /></p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_currentWithoutProfile',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<p class="label label-info">
	<@wp.i18n key="userprofile_CURRENT_USER_WITHOUT_PROFILE" />
</p>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-CheckboxAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.checkbox useTabindexAutoIncrement=true 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" 
	id="%{attribute_id}" value="%{#attribute.value == true}"/>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-MonotextAttribute',NULL,NULL,NULL,'<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.textfield useTabindexAutoIncrement=true id="%{attribute_id}" 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}"
	maxlength="254" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-LongtextAttribute',NULL,NULL,NULL,'<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.textarea useTabindexAutoIncrement=true cols="30" rows="5" id="%{attribute_id}" name="%{#attributeTracer.getFormFieldName(#attribute)}" value="%{#attribute.getTextForLang(#lang.code)}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-customer-verification','fsi-customer-verification',NULL,'<div class="fsi-customer-information ibox float-e-margins">
  <div class="ibox-title">
    <h5>Progress</h5>
    <div class="ibox-tools">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <i class="fa fa-wrench"></i>
      </a>
      <a class="collapse-link">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>
  </div>
  <div class="ibox-content">
    <div class="fsi-verification-header-row">
      <h2 style="display: inline-block">Verification</h2>
      <span class="label label-primary pull-right">ON TRACK</span>
    </div>
    <div class="progressbar-label">40%</div>
    <div class="progress progress-bar-default">
      <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuemin="0" aria-valuemax="100" aria-valuenow="40">
    
      </div>
    </div>
    <p>
      <b>Expected Delivery Date: </b>2/16/2017
    </p>
    <p>
      <b>Signup Date: </b>2/2/2017
    </p>
    <div style="text-align: right">
      <button class="btn btn-w-m btn-success">CONTACT CUSTOMER</button>
    </div>
  </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-CompositeAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@s.set var="i18n_parent_attribute_name" value="#attribute.name" />
<@s.set var="masterCompositeAttributeTracer" value="#attributeTracer" />
<@s.set var="masterCompositeAttribute" value="#attribute" />
<@s.iterator value="#attribute.attributes" var="attribute">
	<@s.set var="attributeTracer" value="#masterCompositeAttributeTracer.getCompositeTracer(#masterCompositeAttribute)"></@s.set>
	<@s.set var="parentAttribute" value="#masterCompositeAttribute"></@s.set>
	<@s.set var="i18n_attribute_name">userprofile_ATTR<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" /></@s.set>
	<@s.set var="attribute_id">userprofile_<@s.property value="%{i18n_parent_attribute_name}" /><@s.property value="#attribute.name" />_<@s.property value="#elementIndex" /></@s.set>
	<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
</@s.iterator>
<@s.set var="attributeTracer" value="#masterCompositeAttributeTracer" />
<@s.set var="attribute" value="#masterCompositeAttribute" />
<@s.set var="parentAttribute" value=""></@s.set>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-EnumeratorAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"  
	headerKey="" headerValue="" 
	list="#attribute.items" value="%{#attribute.getText()}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-EnumeratorMapAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<@wpsf.select useTabindexAutoIncrement=true
	name="%{#attributeTracer.getFormFieldName(#attribute)}"
	id="%{attribute_id}"  
	headerKey="" headerValue="" 
	list="#attribute.mapItems" value="%{#attribute.getText()}" listKey="key" listValue="value" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_resource_list','entando_apis',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<h2><@wp.i18n key="ENTANDO_API_RESOURCES" /></h2>
<@s.if test="hasActionErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.set var="resourceFlavoursVar" value="resourceFlavours" />

<@s.if test="#resourceFlavoursVar.size() > 0">
	<@s.set var="icon_free"><span class="icon icon-ok"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_FREE" /></span></@s.set>
	<@s.set var="title_free"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_FREE" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.set var="icon_auth"><span class="icon icon-user"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_AUTH" /></span></@s.set>
	<@s.set var="title_auth"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_AUTH" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.set var="icon_lock"><span class="icon icon-lock"></span><span class="noscreen sr-only"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_LOCK" /></span></@s.set>
	<@s.set var="title_lock"><@wp.i18n key="ENTANDO_API_METHOD_STATUS_LOCK" />. <@wp.i18n key="ENTANDO_API_GOTO_DETAILS" /></@s.set>

	<@s.iterator var="resourceFlavourVar" value="#resourceFlavoursVar" status="resourceFlavourStatusVar">
		<table class="table table-striped table-bordered table-condensed">
			<@s.iterator value="#resourceFlavourVar" var="resourceVar" status="statusVar" >
				<@s.if test="#statusVar.first">
					<@s.if test="#resourceVar.source==''core''"><@s.set var="captionVar"><@s.property value="#resourceVar.source" escapeHtml=false /></@s.set></@s.if>
					<@s.else><@s.set var="captionVar"><@s.property value="%{getText(#resourceVar.sectionCode+''.name'')}" escapeHtml=false /></@s.set></@s.else>
					<caption>
						<@s.property value="#captionVar" />
					</caption>
					<tr>
						<th class="span3"><@wp.i18n key="ENTANDO_API_RESOURCE" /></th>
						<th><@wp.i18n key="ENTANDO_API_DESCRIPTION" /></th>
						<th class="text-center span1">GET</th>
						<th class="text-center span1">POST</th>
						<th class="text-center span1">PUT</th>
						<th class="text-center span1">DELETE</th>
					</tr>
				</@s.if>
				<tr>
					<td>
						<@wp.action path="/ExtStr2/do/Front/Api/Resource/detail.action" var="detailActionURL">
							<@wp.parameter name="resourceName"><@s.property value="#resourceVar.resourceName" /></@wp.parameter>
							<@wp.parameter name="namespace"><@s.property value="#resourceVar.namespace" /></@wp.parameter>
						</@wp.action>
						<a title="<@wp.i18n key="ENTANDO_API_GOTO_DETAILS" />:&#32;/<@s.property value="%{#resourceVar.namespace.length()>0?#resourceVar.namespace+''/'':''''}" /><@s.property value="#resourceVar.resourceName" />" href="${detailActionURL}" ><@s.property value="#resourceVar.resourceName" /></a>
					</td>
					<td><@s.property value="#resourceVar.description" /></td>
					<td class="text-center">
						<@s.if test="#resourceVar.getMethod != null && #resourceVar.getMethod.active && (!#resourceVar.getMethod.hidden)" >
							<@s.if test="#resourceVar.getMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.getMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_GET" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.postMethod != null && #resourceVar.postMethod.active && (!#resourceVar.postMethod.hidden)" >
							<@s.if test="#resourceVar.postMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.postMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_POST" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.putMethod != null && #resourceVar.putMethod.active && (!#resourceVar.putMethod.hidden)" >
							<@s.if test="#resourceVar.putMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.putMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_PUT" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
					<td class="text-center">
						<@s.if test="#resourceVar.deleteMethod != null && #resourceVar.deleteMethod.active && (!#resourceVar.deleteMethod.hidden)" >
							<@s.if test="#resourceVar.deleteMethod.requiredPermission != null" ><@s.set var="icon" value="#icon_lock" /><@s.set var="title" value="#title_lock" /></@s.if>
							<@s.elseif test="#resourceVar.deleteMethod.requiredAuth" ><@s.set var="icon" value="#icon_auth" /><@s.set var="title" value="#title_auth" /></@s.elseif>
							<@s.else><@s.set var="icon" value="#icon_free" /><@s.set var="title" value="#title_free" /></@s.else>
							<a href="${detailActionURL}#api_method_DELETE" title="<@s.property value="#title" />">
								<@s.property value="#icon" escapeHtml=false />
							</a>
						</@s.if>
						<@s.else><abbr title="<@wp.i18n key="ENTANDO_API_METHOD_STATUS_NA" />">&ndash;</abbr></@s.else>
					</td>
				</tr>
			</@s.iterator>
		</table>

		<@s.if test="#resourceVar.source==''core''">
			<a href="<@wp.action path="/ExtStr2/do/Front/Api/Service/list.action" />" class="btn btn-primary pull-right"><@wp.i18n key="ENTANDO_API_GOTO_SERVICE_LIST" /></a>
		</@s.if>
	</@s.iterator>
</@s.if>
<@s.else>
	<p><@wp.i18n key="ENTANDO_API_NO_RESOURCES" /></p>
</@s.else>
<script>
  $(function () {
    $(''#api-togglers a:first'').tab(''show'');
  })
</script>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_resource_detail','entando_apis',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="apiResourceVar" value="apiResource" />
<@s.set var="GETMethodVar" value="#apiResourceVar.getMethod" />
<@s.set var="POSTMethodVar" value="#apiResourceVar.postMethod" />
<@s.set var="PUTMethodVar" value="#apiResourceVar.putMethod" />
<@s.set var="DELETEMethodVar" value="#apiResourceVar.deleteMethod" />
<@s.set var="apiNameVar" value="(#apiResourceVar.namespace!=null && #apiResourceVar.namespace.length()>0 ? ''/'' + #apiResourceVar.namespace : '''')+''/''+#apiResourceVar.resourceName" />
<section>
<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
<h2><@wp.i18n key="ENTANDO_API_RESOURCE" />&#32;<@s.property value="#apiNameVar" /></h2>
<@s.if test="hasActionMessages()">
	<div class="alert alert-box alert-success">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionErrors()">
	<div class="alert alert-box alert-error">
		<h3 class="alert-heading"><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<!-- DESCRIPTION -->
<p><@s.property value="#apiResourceVar.description" /></p>

<!-- INFO -->
<dl class="dl-horizontal">
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_NAME" /></dt>
		<dd><@s.property value="#apiResourceVar.resourceName" /></dd>
	<dt><span lang="en"><@wp.i18n key="ENTANDO_API_RESOURCE_NAMESPACE" /></span></dt>
		<dd>/<@s.property value="#apiResourceVar.namespace" /></dd>
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_SOURCE" /></dt>
		<dd>
			<@s.property value="#apiResourceVar.source" /><@s.if test="%{#apiResourceVar.pluginCode != null && #apiResourceVar.pluginCode.length() > 0}">,&#32;<@s.property value="%{getText(#apiResourceVar.pluginCode+''.name'')}" />&#32;(<@s.property value="%{#apiResourceVar.pluginCode}" />)</@s.if>
		</dd>
	<dt><@wp.i18n key="ENTANDO_API_RESOURCE_URI" /></dt>
		<dd>
			<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" /><@s.if test="null != #apiResourceVar.namespace">/<@s.property value="#apiResourceVar.namespace" /></@s.if>/<@s.property value="#apiResourceVar.resourceName" />"><@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" /><@s.if test="null != #apiResourceVar.namespace">/<@s.property value="#apiResourceVar.namespace" /></@s.if>/<@s.property value="#apiResourceVar.resourceName" /></a>
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_EXTENSION" />
	</dt>
		<dd>
			<@wp.i18n key="ENTANDO_API_EXTENSION_NOTE" />
		</dd>
</dl>

	<@s.set var="methodVar" value="#GETMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''GET''}" />
	<h3 id="api_method_GET">GET</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#POSTMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''POST''}" />
	<h3 id="api_method_POST">POST</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#PUTMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''PUT''}" />
	<h3 id="api_method_PUT">PUT</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />

	<@s.set var="methodVar" value="#DELETEMethodVar" />
	<@s.set var="currentMethodNameVar" value="%{''DELETE''}" />
	<h3 id="api_method_DELETE">DELETE</h3>
	<@wp.fragment code="entandoapi_is_resource_detail_include" escapeXml=false />
<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
</section>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_service_list','entando_apis',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<section>

<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>

<h2><@wp.i18n key="ENTANDO_API_GOTO_SERVICE_LIST" /></h2>
<@s.if test="hasActionErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@s.text name="message.title.ActionErrors" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasFieldErrors()">
	<div class="alert alert-block alert-error">
		<h3 class="alert-heading"><@s.text name="message.title.FieldErrors" /></h3>
		<ul>
			<@s.iterator value="fieldErrors">
				<@s.iterator value="value">
				<li><@s.property escapeHtml=false /></li>
				</@s.iterator>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionMessages()">
	<div class="alert alert-block alert-info">
		<h3 class="alert-heading"><@s.text name="messages.confirm" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.set var="resourceFlavoursVar" value="resourceFlavours" />
<@s.set var="serviceFlavoursVar" value="serviceFlavours" />

<@s.if test="#serviceFlavoursVar != null && #serviceFlavoursVar.size() > 0">
<div class="tabbable tabs-left">
	<ul class="nav nav-tabs">
		<@s.iterator var="resourceFlavour" value="#resourceFlavoursVar" status="statusVar">
			<@s.set var="serviceGroupVar" value="#resourceFlavour.get(0).getSectionCode()" />
			<@s.set var="servicesByGroupVar" value="#serviceFlavoursVar[#serviceGroupVar]" />
			<@s.if test="null != #servicesByGroupVar && #servicesByGroupVar.size() > 0">
				<@s.if test="#serviceGroupVar == ''core''"><@s.set var="captionVar" value="%{#serviceGroupVar}" /></@s.if>
				<@s.else><@s.set var="captionVar" value="%{getText(#serviceGroupVar + ''.name'')}" /></@s.else>
				<li<@s.if test="#statusVar.first"> class="active"</@s.if>>
					<a href="#api-flavour-<@s.property value=''%{#captionVar.toLowerCase().replaceAll("[^a-z0-9-]", "")}'' />" data-toggle="tab"><@s.property value=''%{#captionVar}'' /></a>
				</li>
			</@s.if>
		</@s.iterator>
	</ul>

  <div class="tab-content">
	<@s.iterator var="resourceFlavour" value="#resourceFlavoursVar" status="moreStatusVar">
		<@s.set var="serviceGroupVar" value="#resourceFlavour.get(0).getSectionCode()" />
		<@s.set var="servicesByGroupVar" value="#serviceFlavoursVar[#serviceGroupVar]" />
		<@s.if test="null != #servicesByGroupVar && #servicesByGroupVar.size() > 0">
			<@s.if test="#serviceGroupVar == ''core''"><@s.set var="captionVar" value="%{#serviceGroupVar}" /></@s.if>
			<@s.else><@s.set var="captionVar" value="%{getText(#serviceGroupVar + ''.name'')}" /></@s.else>
			<div class="tab-pane<@s.if test="#moreStatusVar.first"> active</@s.if>" id="api-flavour-<@s.property value=''%{#captionVar.toLowerCase().replaceAll("[^a-z0-9]", "")}'' />">
			<table class="table table-striped table-bordered table-condensed">
				<caption>
					<@s.property value="#captionVar" />
				</caption>
				<tr>
					<th><@wp.i18n key="ENTANDO_API_SERVICE" /></th>
					<th><@wp.i18n key="ENTANDO_API_DESCRIPTION" /></th>
				</tr>
				<@s.iterator var="serviceVar" value="#servicesByGroupVar" >
					<tr>
						<td class="monospace">
							<@wp.action path="/ExtStr2/do/Front/Api/Service/detail.action" var="detailActionURL">
								<@wp.parameter name="serviceKey"><@s.property value="#serviceVar.key" /></@wp.parameter>
							</@wp.action>
							<a href="${detailActionURL}"><@s.property value="#serviceVar.key" /></a>
						</td>
						<td><@s.property value="#serviceVar.value" /></td>
					</tr>
				</@s.iterator>
			</table>
			</div>
		</@s.if>
	</@s.iterator>
	</div>
</div>
</@s.if>
<@s.else>
<div class="alert alert-block alert-info">
	<p><@wp.i18n key="ENTANDO_API_NO_SERVICES" escapeXml=false /></p>
</div>
</@s.else>

<p>
	<a href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />" class="btn btn-primary"><i class="icon-arrow-left icon-white"></i>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>

</section>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('complete-registration-BPM','complete-registration-BPM',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="bpm-wrapper-background">
<p class="title-welcome"> Complete registration </p>
<p class="subtitle">Sign in </p>
<p class="presentation">Hi . Type your and a password to complete the registration. </p>

 <form action="#" method="post" class="m-t">
        <#if (RequestParameters.returnUrl??) >
        <input type="hidden" name="returnUrl" value="${RequestParameters.returnUrl}" />
        </#if>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="first_name" /></label>
            <input id="username" type="text" name="username" placeholder="<@wp.i18n key="first_name" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="last_name" /></label>
            <input id="password" type="password" name="password" placeholder="<@wp.i18n key="last_name" />" class="form-control input-custom" />
        </div>
       <div class="form-group">
            <label class="login-label"><@wp.i18n key="company_name" /></label>
            <input id="username" type="text" name="username" placeholder="<@wp.i18n key="company_name" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="Email" /></label>
            <input id="password" type="password" name="password" placeholder="<@wp.i18n key="Email" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="PASSWORD" /></label>
            <p class="pass-hint">5 or more characters</p>
            <input id="password" type="password" name="password" placeholder="<@wp.i18n key="PASSWORD" />" class="form-control input-custom" />
        </div>
        <div class="form-group">
            <label class="login-label"><@wp.i18n key="CONFIRM_PASSWORD" /></label>
            <input id="password" type="password" name="password" placeholder="<@wp.i18n key="CONFIRM_PASSWORD" />" class="form-control input-custom" />
        </div>
        <div class="right-side-button">
            <input type="submit" value="<@wp.i18n key="SIGNIN" />" class="btn btn-primary login-button" />
        </div>
    </form>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer','content_viewer','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.contentInfo param="authToEdit" var="canEditThis" />
<@jacms.contentInfo param="contentId" var="myContentId" />
<#if (canEditThis?? && canEditThis)>
	<div class="bar-content-edit">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/jacms/Content/edit.action?contentId=<@jacms.contentInfo param="contentId" />" class="btn btn-info">
		<@wp.i18n key="EDIT_THIS_CONTENT" /> <i class="icon-edit icon-white"></i></a>
	</div>
</#if>
<@jacms.content publishExtraTitle=true />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-apllication-breadcrumb','fsi-apllication-breadcrumb',NULL,'<div class="application-breadcrumbs-wrapper">
  <div class="application-breadcrumbs-title">Sign up for a commercial account</div>
  <div class="application-breadcrumbs">
    <div class="application-breadcrumbs-item">
      <div class="application-breadcrumbs-number">1</div>
      <div class="application-breadcrumbs-text">Start</div>
    </div>
    <div class="application-breadcrumbs-item active">
      <div class="application-breadcrumbs-number">2</div>
      <div class="application-breadcrumbs-text">Application</div>
    </div>
    <div class="application-breadcrumbs-item">
      <div class="application-breadcrumbs-number">3</div>
      <div class="application-breadcrumbs-text">Background check</div>
    </div>
    <div class="application-breadcrumbs-item">
      <div class="application-breadcrumbs-number">4</div>
      <div class="application-breadcrumbs-text">Legal review</div>
    </div>
    <div class="application-breadcrumbs-item">
      <div class="application-breadcrumbs-number">5</div>
      <div class="application-breadcrumbs-text">Account creation</div>
    </div>
  </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entandoapi_is_service_detail','entando_apis',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@wp.headInfo type="CSS" info="widgets/api.css"/>
<@s.set var="apiServiceVar" value="%{getApiService(serviceKey)}" />
<div class="entando-api api-resource-detail">
<h2><@wp.i18n key="ENTANDO_API_SERVICE" />&#32;<@s.property value="serviceKey" /></h2>
<@s.if test="hasActionMessages()">
	<div class="message message_confirm">
		<h3><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionMessages">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>
<@s.if test="hasActionErrors()">
	<div class="message message_error">
		<h3><@wp.i18n key="ENTANDO_API_ERROR" /></h3>
		<ul>
			<@s.iterator value="actionErrors">
				<li><@s.property escapeHtml=false /></li>
			</@s.iterator>
		</ul>
	</div>
</@s.if>

<p class="description"><@s.property value="getTitle(serviceKey, #apiServiceVar.description)" /></p>

<@s.set var="masterMethodVar" value="#apiServiceVar.master" />

<dl class="dl-horizontal">
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_KEY" /></dt>
		<dd><@s.property value="serviceKey" /></dd>
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_PARENT_API" /></dt>
		<dd><@s.property value="#masterMethodVar.description" />&#32;(/<@s.if test="#masterMethodVar.namespace!=null && #masterMethodVar.namespace.length()>0"><@s.property value="#masterMethodVar.namespace" />/</@s.if><@s.property value="#masterMethodVar.resourceName" />)</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_SERVICE_AUTHORIZATION" />
	</dt>
		<dd>
			<@s.if test="%{!#apiServiceVar.requiredAuth}" >
				<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_FREE" />
			</@s.if>
			<@s.elseif test="%{null == #apiServiceVar.requiredPermission && null == #apiServiceVar.requiredGroup}">
				<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_SIMPLE" />
			</@s.elseif>
			<@s.else>
				<@s.set var="serviceAuthGroupVar" value="%{getGroup(#apiServiceVar.requiredGroup)}" />
				<@s.set var="serviceAuthPermissionVar" value="%{getPermission(#apiServiceVar.requiredPermission)}" />
				<@s.if test="%{null != #serviceAuthPermissionVar}">
					<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_WITH_PERM" />&#32;<@s.property value="#serviceAuthPermissionVar.description" />
				</@s.if>
				<@s.if test="%{null != #serviceAuthGroupVar}">
					<@s.if test="%{null != #serviceAuthPermissionVar}"><br /></@s.if>
					<@wp.i18n key="ENTANDO_API_SERVICE_AUTH_WITH_GROUP" />&#32;<@s.property value="#serviceAuthGroupVar.descr" />
				</@s.if>
			</@s.else>
		</dd>
	<dt><@wp.i18n key="ENTANDO_API_SERVICE_URI" /></dt>
		<dd>
			<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" />/getService?key=<@s.property value="serviceKey" />"><@wp.info key="systemParam" paramName="applicationBaseURL" />api/rs/<@wp.info key="currentLang" />/getService?key=<@s.property value="serviceKey" /></a>
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_EXTENSION" />
	</dt>
		<dd>
			<@wp.i18n key="ENTANDO_API_EXTENSION_NOTE" />
		</dd>
	<dt>
		<@wp.i18n key="ENTANDO_API_SERVICE_SCHEMAS" />
	</dt>
		<dd class="schemas">
			<@wp.action path="/ExtStr2/do/Front/Api/Service/responseSchema.action" var="responseSchemaURLVar" >
				<@wp.parameter name="serviceKey"><@s.property value="serviceKey" /></@wp.parameter>
			</@wp.action>
			<a href="${responseSchemaURLVar}" >
				<@wp.i18n key="ENTANDO_API_SERVICE_SCHEMA_RESP" />
			</a>
		</dd>
</dl>

<@s.if test="%{null != #apiServiceVar.freeParameters && #apiServiceVar.freeParameters.length > 0}" >
<table class="table table-striped table-bordered table-condensed" summary="<@wp.i18n key="ENTANDO_API_SERVICE_PARAMETERS_SUMMARY" />">
	<caption><span><@wp.i18n key="ENTANDO_API_SERVICE_PARAMETERS" /></span></caption>
	<tr>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_NAME" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_DESCRIPTION" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_REQUIRED" /></th>
		<th><@wp.i18n key="ENTANDO_API_SERVICE_PARAM_DEFAULT_VALUE" /></th>
	</tr>
	<@s.iterator value="#apiServiceVar.freeParameters" var="apiParameterNameVar" >
		<@s.set var="apiParameterValueVar" value="%{#apiServiceVar.parameters[#apiParameterNameVar]}" />
		<@s.set var="apiParameterVar" value="%{#apiServiceVar.master.getParameter(#apiParameterNameVar)}" />
		<@s.set var="apiParameterRequiredVar" value="%{#apiParameterVar.required && null == #apiParameterValueVar}" />
		<tr>
			<td><label for="<@s.property value="#apiParameterNameVar" />"><@s.property value="#apiParameterNameVar" /></label></td>
			<td><@s.property value="%{#apiParameterVar.description}" /></td>
			<td class="icon required_<@s.property value="#apiParameterRequiredVar" />">
				<@s.if test="#apiParameterRequiredVar" ><@wp.i18n key="YES" /></@s.if>
				<@s.else><@wp.i18n key="NO" /></@s.else>
			</td>
			<td><@s.if test="null != #apiParameterValueVar"><@s.property value="#apiParameterValueVar" /></@s.if><@s.else>-</@s.else></td>
		</tr>
	</@s.iterator>
</table>
</@s.if>
<p class="api-back">
	<a class="btn btn-primary" href="<@wp.action path="/ExtStr2/do/Front/Api/Resource/list.action" />"><span class="icon-arrow-left icon-white"></span>&#32;<@wp.i18n key="ENTANDO_API_GOTO_LIST" /></a>
</p>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-BooleanAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-true''}" 
		value="true"
		checked="%{#attribute.value == true}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id+''-false''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-false''}" 
		value="false" 
		checked="%{#attribute.value == false}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-form-banking-services','fsi-form-banking-services',NULL,'<div class="fsi-form-banking-services">
  <div class="ibox float-e-margins">
    <div class="ibox-title">
      <h5>Selects the financial services that your company is applying for</h5>
      <div class="ibox-tools"><a class="collapse-link">
          <div class="fa fa-chevron-up"></div></a><a class="collapse-link">
          <div class="fa fa-repeat"></div></a></div>
    </div>
    <div class="ibox-content">
      <div class="row">
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>BUSINESS CHECKING</span>
            </label>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>BUSINESS CREDIT CARDS</span>
            </label>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>BUSINESS LENDING AND FINANCING</span>
            </label>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>INTERNATIONAL BANKING</span>
            </label>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>MERCHANT SERVICES</span>
            </label>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>TREASURY SERVICES</span>
            </label>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>CASH MANAGEMENT SERVICES</span>
            </label>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>EMPLOYEE BENEFIT SERVICES</span>
            </label>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>CASH MANAGEMENT SERVICES</span>
            </label>
          </div>
        </div>
        <div class="col-md-6">
          <div>
            <label>
              <input class="i-checks" type="checkbox"/><span>EMPLOYEE BENEFIT SERVICES</span>
            </label>
          </div>
        </div>
      </div>
      <div>
        <button type="button" class="btn btn-w-m btn-default">Back</button>
        <button type="button" class="btn btn-w-m btn-primary pull-right">Next</button>
        <button type="button" class="btn btn-w-m btn-success pull-right">Save as draft</button>
      </div>
    </div>
  </div>
</div>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-legal-check','fsi-legal-check',NULL,'<div class="fsi-upload-new-file">
    <div class="fsi-warning-title">Legal check</div>
    <div class="fsi-error-desc">
      <div class="fsi-error-desc-filename">Articles_of_corporation.pdf</div>
      <div class="fsi-error-desc-message">Digital sign not clearly readable</div>
    </div>
    <div class="fsi-message"><span>Can you please upload a new document ther address to the&nbsp;</span><b>following conditions</b></div><a class="fsi-upload-new-link" href="#">
      <div class="fsi-label">Upload a new file</div><i class="fa fa-upload"></i></a>
  </div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-DateAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<@s.if test="#attribute.failedDateString == null">
<@s.set var="dateAttributeValue" value="#attribute.getFormattedDate(''dd/MM/yyyy'')" />
</@s.if>
<@s.else>
<@s.set var="dateAttributeValue" value="#attribute.failedDateString" />
</@s.else>
<@wpsf.textfield 
useTabindexAutoIncrement=true id="%{attribute_id}" 
name="%{#attributeTracer.getFormFieldName(#attribute)}" 
value="%{#dateAttributeValue}" maxlength="10" cssClass="text userprofile-date" />
&#32;
<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''dd/mm/yy'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(''input.userprofile-date''), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[''${currentLangVar}''] );
		$(''input.userprofile-date'').datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: ''dd/mm/yyyy''
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES (' Credit-card-banner-right',' Credit-card-banner-right',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
 <div class="middle-box-cc">

      <div class="fsi-cc-text">True! The Club Credit Card boasts a huge signup bonus, worth $1k when you redeem for $10k business expenses through Fortress Reward network. But that&apos;s not all. With this card, you&apos;ll earn 3X points in popular categories like travel, shipping, and advertising, on up to $150k/year. High-rate rewards and flexible redemption make the Club Credit Card our customers&apos; top peak for 2017.
      </div>
      <div class="fsi-cc-button-row">
        <button class="fsi-blue-button">LEARN MORE</button>
        <button class="fsi-blue-button">BOOK NOW</button>
      </div>
    </div>
  </div>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Enumer',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.items as enumeratorItemVar>
			<option value="${enumeratorItemVar}" <#if (formFieldValue??) && (enumeratorItemVar == formFieldValue)>selected="selected"</#if> >${enumeratorItemVar}</option>
			</#list>
		</select>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-registration-form-advanced','fsi-registration-form-advanced',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>

<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Business details</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label class="login-label">Company Name</label>
                    <input id="username" type="text" name="username" placeholder="Company Name" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">The state in which the business operates</label>
                    <input id="password" type="text" name="password" placeholder="The state in which the business operates" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">The state in which the business was formed</label>
                    <input id="username" type="text" name="username" placeholder="The state in which the business was formed" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">Name</label>
                    <input id="password" type="text" name="password" placeholder="Name" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">Email</label>
                    <input id="password" type="text" name="password" placeholder="Email" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">Customer type</label>
                    <input id="password" type="text" name="password" placeholder="Customer type" class="form-control input-custom" />
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="login-label">Address of the business</label>
                    <input id="username" type="text" name="username" placeholder="Address of the business" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">ZIP CODE</label>
                    <input id="username" type="text" name="username" placeholder="ZIP CODE" class="form-control input-custom" />
                </div>

                <div class="form-group" id="data_1">
                    <label class="login-label">Simple data input format</label>
                    <div class="input-group date">
                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" class="form-control input-custom" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="login-label">Surname</label>
                    <input id="password" type="password" name="password" placeholder="Surname" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">Phone Number</label>
                    <input id="password" type="password" name="password" placeholder="Phone Number" class="form-control input-custom" />
                </div>
                <div class="form-group">
                    <label class="login-label">I am an existing customer </label>
                    <div class="i-checks checkbox-pos-form"><label><input type="radio" value="option1" name="a" checked> <i></i> YES</label>&nbsp;&nbsp;&nbsp;
                        <label><input type="radio" value="option2" name="a"> <i></i> NO</label>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="pull-left spacers">
                    <input type="submit" value="<@wp.i18n key="BACK" />" class="btn btn-primary login-button" />
                </div>
                <div class="pull-right spacers">
                    <input type="submit" value="<@wp.i18n key="SAVE_DRAFT" />" class="btn btn-info login-button" />
                </div>
                <div class="pull-right spacers">
                    <input type="submit" value="<@wp.i18n key="NEXT" />" class="btn btn-warning login-button" />
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $(''#data_1 .input-group.date'').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true
        });
    });
</script>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-welcome-personal-area','fsi-welcome-personal-area',NULL,'<div class="fsi-welcome-personal-area">
    <div class="fsi-welcome-title">Welcome to your personal area</div>
    <div class="fsi-welcome-message">You can check the status of your request</div>
    <div class="fsi-time-left"><i class="fa fa-clock-o"></i>
      <div class="fsi-time-left-message">About 15 days left</div>
    </div>
  </div>
  <div class="fsi-legal-review-wrapper">
    <div class="fsi-legal-review-intro">
      <h2>What''s involved in a legal review? </h2>
      <p> 
        <div>As anticipated, when applying for financial services, you are supposed to document the status of your business</div>
        <div>After the completeness of the documentation has been verified, the next step is the Legal Review.</div>
      </p>
      <p> 
        <div>At this stage of your application, the Legal Worker is asked to check the compliance of the submitted documentation.</div>
        <div>This is a one time activity, that is performed once: should you apply for further services, all that you have documented is still considered valid.</div>
      </p>
      <p>It means then shorter approval time frame for the next services you''ll decide to request.</p>
      <p>After the Legal Review has been completed, your account will be created.</p>
    </div>
    <div class="fsi-blue-banner">
      <div class="bb-small">Now your check deposits can</div>
      <div class="bb-big">go to the bank</div>
      <div class="bb-big bb-big-bigger">without you</div>
      <div class="bb-expect-it">Expect it.</div>
    </div>
  </div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front_AttributeInfo',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.if test="#attribute.required">
	<abbr class="icon icon-asterisk" title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL" />"><span class="noscreen"><@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT" /></span></abbr>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front_AllList_operationModule',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="null == #operationButtonDisabled">
	<@s.set var="operationButtonDisabled" value="false" />
</@s.if>
<div class="btn-toolbar">
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="UP" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex}">
		<span class="icon fa fa-sort-desc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>

		<@wpsa.actionParam action="moveListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
			<@wpsa.actionSubParam name="movement" value="DOWN" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default" title="%{getText(''label.moveInPositionNumber'')}: %{#elementIndex+2}">
		<span class="icon fa fa-sort-asc"></span>
		<span class="sr-only"><@s.text name="label.moveInPositionNumber" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
	<div class="btn-group btn-group-sm">
		<@wpsa.actionParam action="removeListElement" var="actionName" >
			<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
			<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
			<@wpsa.actionSubParam name="elementIndex" value="%{#elementIndex}" />
		</@wpsa.actionParam>
		<@wpsf.submit disabled="%{#operationButtonDisabled}" action="%{#actionName}" type="button" cssClass="btn btn-default btn-warning" title="%{getText(''label.remove'')}: %{#elementIndex}">
		<span class="icon fa fa-times-circle-o"></span>
		<span class="sr-only"><@s.text name="label.remove" />: <@s.property value="%{#elementIndex}" /></span>
		</@wpsf.submit>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-AllList-addElementButton',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.set var="add_label"><@wp.i18n key="userprofile_ADDITEM_LIST" /></@s.set>

<@wpsa.actionParam action="addListElement" var="actionName" >
	<@wpsa.actionSubParam name="attributeName" value="%{#attribute.name}" />
	<@wpsa.actionSubParam name="listLangCode" value="%{#lang.code}" />
</@wpsa.actionParam>
<@s.set var="iconImagePath" id="iconImagePath"><@wp.resourceURL/>administration/common/img/icons/list-add.png</@s.set> 
<@wpsf.submit 
	cssClass="btn"
	useTabindexAutoIncrement=true 
	action="%{#actionName}" 
	value="%{add_label}" 
	title="%{i18n_attribute_name}%{'': ''}%{add_label}" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-search_result_inspinia','entando-widget-search_result_inspinia',NULL,NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="ibox-content">
<#if (RequestParameters.search?? && RequestParameters.search!='''')>
<@jacms.searcher listName="contentListResult" />
</#if>
<#if (contentListResult??) && (contentListResult?has_content) && (contentListResult?size > 0)>
<@wp.pager listName="contentListResult" objectName="groupContent" max=10 pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<h2> <@wp.i18n key="SEARCHED_FOR" />: <span class="text-navy">&#34;<#if (RequestParameters.search??)>${RequestParameters.search}</#if>&#34;</span> </h2>
	<small>${groupContent.size} <@wp.i18n key="SEARCH_RESULTS_OUTRO" /> [${groupContent.begin + 1} &ndash; ${groupContent.end + 1}]:</small>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
        <div class="hr-line-dashed"></div>
	<#list contentListResult as contentId>
	<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
		<@jacms.content contentId="${contentId}" modelId="list" />
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
</@wp.pager>
<#else>
<h2><@wp.i18n key="SEARCH_RESULTS" /></h2>
<p class="text-danger"><@wp.i18n key="SEARCH_NOTHING_FOUND" /></p>
</#if>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-navigation_bar_inspinia','entando-widget-navigation_bar_inspinia',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<@wp.currentPage param="code" var="currentPageCode" />
<@wp.freemarkerTemplateParameter var="currentPageCode" valueName="currentPageCode" />

<@wp.nav var="page">

<#if (previousPage?? && previousPage.code??)>
	<#assign previousLevel=previousPage.level>
	<#assign level=page.level>
        <@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_inspinia_include" escapeXml=false />
</#if>

	<@wp.freemarkerTemplateParameter var="previousPage" valueName="page" />
</@wp.nav>

<#if (previousPage??)>
	<#assign previousLevel=previousPage.level>
        <#assign level=0>
	<@wp.freemarkerTemplateParameter var="level" valueName="level" />
	<@wp.freemarkerTemplateParameter var="previousLevel" valueName="previousLevel" />
	<@wp.fragment code="entando-widget-navigation_bar_inspinia_include" escapeXml=false />

        <#if (previousLevel != 0)>
        <#list 0..(previousLevel - 1) as ignoreMe>
            </ul></li>
        </#list>
                
	</#if>
</#if>

<@wp.freemarkerTemplateParameter var="previousPage" valueName="" removeOnEndTag=true />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-chandler-hi-dashboard','fsi-chandler-hi-dashboard',NULL,'<h2>Hi Chandler</h2> 
  <ol class="breadcrumb">
    <li>
   <a href="#">Dashboard</a>
   </li>
</ol>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front_attributeInfo-help-block',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>

<@s.set var="validationRules" value="#attribute.validationRules.ognlValidationRule" />
<@s.set var="hasValidationRulesVar" value="%{#validationRules != null && #validationRules.expression != null}" />

<@s.if test="%{#hasValidationRulesVar || #attribute.type == ''Date'' || (#attribute.textAttribute && (#attribute.minLength != -1 || #attribute.maxLength != -1))}">
		<span class="help-block">
		<@s.if test="#attribute.type == ''Date''">dd/MM/yyyy&#32;</@s.if>
		<@s.if test="%{#validationRules.helpMessageKey != null}">
			<@s.set var="label" scope="page" value="#validationRules.helpMessageKey" /><@wp.i18n key="${label}" />
		</@s.if>
		<@s.elseif test="%{#validationRules.helpMessage != null}">
			<@s.property value="#validationRules.helpMessage" />
		</@s.elseif>
		<@s.if test="#attribute.minLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL" />&#32;<@s.property value="#attribute.minLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT" />:&#32;<@s.property value="#attribute.minLength" />
			</abbr>
		</@s.if>
		<@s.if test="#attribute.maxLength != -1">
			&#32;
			<abbr title="<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL" />&#32;<@s.property value="#attribute.maxLength" />">
				<@wp.i18n key="userprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT" />:&#32;<@s.property value="#attribute.maxLength" />
			</abbr>
		</@s.if>
	</span>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-navigation_bar_inspinia_include',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign c=JspTaglibs["http://java.sun.com/jsp/jstl/core"]>


<#assign liClass="">
<#assign homeIcon="">
<#assign caret="">
<#assign ulClass='' class="dropdown-menu"''>
<#assign aClassAndData="">
<#assign aURL=previousPage.url>

<#if (previousPage.voidPage)>
       <#assign aURL=''#'' />
</#if>

<#if (previousPage.code?contains("homepage"))>
     <#assign homeIcon=''<i class="icon-home"></i>&#32;''>
</#if>

<#if (previousPage.code == currentPageCode)>
     <#assign liClass='' class="active"''>
</#if>

<#if (previousLevel < level)>
    <#assign liClass='' class="dropdown"'' >

    <#if (previousPage.code == currentPageCode)>
	<#assign liClass='' class="dropdown active"''>
    </#if>

    <#if previousPage.voidPage>
	<#assign liClass='' class=" dropdown"'' >
    </#if>

    <#if (previousLevel > 0) >
	<#assign liClass='' class="dropdown-submenu"''>
	<#if (previousPage.code == currentPageCode)>
		<#assign liClass='' class="dropdown-submenu active"''>
    	</#if>

	<#assign ulClass='' class="dropdown-menu"''>
    </#if>

    <#assign aClassAndData='' class="dropdown-toggle" data-toggle="dropdown"''>

    <#if (previousLevel == 0)>
	<#assign caret='' <span class="caret"></span>''>
    </#if>
</#if>

<li ${liClass} > 
	<a href="${aURL}"  ${aClassAndData} >
				<!-- [ ${previousLevel} ] -->
				${homeIcon}
				${previousPage.title}
				${caret}
	</a>

<#if (previousLevel == level)></li></#if>
<#if (previousLevel < level)>
    <ul ${ulClass}>
</#if>
<#if (previousLevel > level)>
     <#list 1..(previousLevel - level) as ignoreMe>
            </li></ul>
     </#list>
    </li>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('entando-widget-search_form_inspinia','entando-widget-search_form_inspinia',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.pageWithWidget var="searchResultPageVar" widgetTypeCode="search_result" listResult=false />
<form class="navbar-form-custom" action="<#if (searchResultPageVar??) ><@wp.url page="${searchResultPageVar.code}" /></#if>" method="get">
<div class="form-group">
<input type="text" name="search" class="form-control" placeholder="<@wp.i18n key="ESSF_SEARCH" />" />
</div>
</form>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-ThreeStateAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-none''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-none''}" 
		value="" 
		checked="%{#attribute.booleanValue == null}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_BOTH_YES_AND_NO" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-true''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-true''}" 
		value="true" 
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == true}"
		cssClass="radio" />
		<@wp.i18n key="userprofile_YES" />
</label>
&#32;
<label class="radio inline" for="<@s.property value="%{#attribute_id + ''-false''}" />">
	<@wpsf.radio 
		useTabindexAutoIncrement=true  
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		id="%{#attribute_id + ''-false''}" 
		value="false" 
		checked="%{#attribute.booleanValue != null && #attribute.booleanValue == false}" 
		cssClass="radio" />
		<@wp.i18n key="userprofile_NO" />
</label>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('How-to-complete-instructions','How-to-complete-instructions',NULL,'<br><br>
<br>
<p class="title-paragraph"> What you''ll need to complete the application</p>
<ul class="list">
    <li>Business documentation such as company profile information, business certifications (eg.articles of incorporation), lists of assets</li>
    <li>Business Tax documentation, from tax ID from tax Declarations</li>
    <li>Personal information of the people in the company that will be eligible for financial services (eg. names, contact information, SSN ID)</li>
    <li>List of services you may want to apply for</li>
</ul>
<br>
<br>
<p class="title-welcome"> What to expect after sign up</p>
<ul class="list">
    <li>When your sign up is done, you will have to complete the application form</li>
    <li>After you send in the business documentation requested for your business type, the bank team will validate it</li>
    <li>After your account is approved, you can fund your account while applying by using a debit card, transferring money from another account or writing a check.</li>
    <li>Once your account is open, you may access Online Banking and you will receive your checks, debit cards and service activation in approximately 7 to 10 business days.</li>
</ul>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_EnumerMap',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<select name="${formFieldNameVar}" id="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list userFilterOptionVar.attribute.mapItems as enumeratorMapItemVar>
			<option value="${enumeratorMapItemVar.key}" <#if (formFieldValue??) && (enumeratorMapItemVar.key == formFieldValue)>selected="selected"</#if> >${enumeratorMapItemVar.value}</option>
			</#list>
		</select>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-average-review-time','fsi-average-review-time',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Average Review Time</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <div style="text-align: center">
            <h3>3,5</h3>
            <small>Min.</small>
        </div>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_editCurrentUser_profile','userprofile_editCurrentUser_profile',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<h1><@wp.i18n key="userprofile_EDITPROFILE_TITLE" /></h1>
<#if (Session.currentUser != "guest") >
	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/Profile/save.action" />" method="post" class="form-horizontal">
	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>
	<@s.set var="lang" value="defaultLang" />
	<@s.iterator value="userProfile.attributeList" var="attribute">
		<@s.if test="%{#attribute.active}">
			<@wpsa.tracerFactory var="attributeTracer" lang="%{#lang.code}" />
				<@s.set var="i18n_attribute_name">userprofile_<@s.property value="userProfile.typeCode" />_<@s.property value="#attribute.name" /></@s.set>
				<@s.set var="attribute_id">userprofile_<@s.property value="#attribute.name" /></@s.set>
				<@wp.fragment code="userprofile_is_IteratorAttribute" escapeXml=false />
		</@s.if>
	</@s.iterator>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PROFILE" var="userprofile_SAVE_PROFILE" />
		<@wpsf.submit useTabindexAutoIncrement=true value="%{#attr.userprofile_SAVE_PROFILE}" cssClass="btn btn-primary" />
	</p>

	</form>
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN" />
	</p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_passwordChanged',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign s=JspTaglibs["/struts-tags"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD_TITLE" /></h1>
<p class="alert alert-success"><@wp.i18n key="userprofile_PASSWORD_UPDATED" /></p>
<@s.if test="!#session.currentUser.credentialsNonExpired">
	<p class="alert alert-info">
		<a href="<@s.url namespace="/do" action="logout" />" ><@wp.i18n key="userprofile_PLEASE_LOGIN_AGAIN" /></a>
	</p>
</@s.if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-HypertextAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@wpsf.textarea 
	useTabindexAutoIncrement=true 
	cols="50" 
	rows="3" 
	id="%{#attribute_id}" 
	name="%{#attributeTracer.getFormFieldName(#attribute)}" 
	value="%{#attribute.textMap[#lang.code]}"  />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_front-NumberAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<@s.if test="#attribute.failedNumberString == null">
	<@s.set var="numberAttributeValue" value="#attribute.value"></@s.set>
</@s.if>
<@s.else>
	<@s.set var="numberAttributeValue" value="#attribute.failedNumberString"></@s.set>
</@s.else>
<@wpsf.textfield 
		useTabindexAutoIncrement=true 
		id="%{#attribute_id}" 
		name="%{#attributeTracer.getFormFieldName(#attribute)}" 
		value="%{#numberAttributeValue}"
		maxlength="254" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_is_IteratorAttribute',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>
<#assign i18n_attribute_name ><@s.property value="#i18n_attribute_name" /></#assign>
<@s.if test="#attribute.type == ''Boolean''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 	
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-BooleanAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.if>
<@s.elseif test="#attribute.type == ''CheckBox''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-CheckboxAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>	
<@s.elseif test="#attribute.type == ''Composite''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
				<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-CompositeAttribute" escapeXml=false />
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Date''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-DateAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Enumerator''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-EnumeratorAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''EnumeratorMap''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-EnumeratorMapAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Hypertext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-HypertextAttribute" escapeXml=false /> 
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''List''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top">
				<@wp.i18n key="${i18n_attribute_name}" />
					<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 			
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-MonolistAttribute" escapeXml=false /> 
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Longtext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-LongtextAttribute" escapeXml=false /> 			
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monolist''">
	<div class="well well-small">
		<fieldset class=" <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
			<legend class="margin-medium-top"><@wp.i18n key="${i18n_attribute_name}" />
				<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false />
			</legend>
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
			<@wp.fragment code="userprofile_is_front-MonolistAttribute" escapeXml=false /> 		
		</fieldset>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Monotext''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Number''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 			
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-NumberAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''Text''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.elseif test="#attribute.type == ''ThreeState''">
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="#attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-ThreeStateAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.elseif>
<@s.else> <#-- for all other types, insert a simple label and a input[type="text"] -->
	<div class="control-group <@s.property value="%{'' attribute-type-''+#attribute.type+'' ''}" />">
		<label class="control-label" for="<@s.property value="attribute_id" />">
			<@wp.i18n key="${i18n_attribute_name}" />
			<@wp.fragment code="userprofile_is_front_AttributeInfo" escapeXml=false /> 
		</label>
		<div class="controls">
			<@wp.fragment code="userprofile_is_front-MonotextAttribute" escapeXml=false />
			<@wp.fragment code="userprofile_is_front_attributeInfo-help-block" escapeXml=false />
		</div>
	</div>
</@s.else>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('banner-main-internal','banner-main-internal',NULL,'<div class=" left-banner middle-box-internal text-center">
<p>Improving businesses&apos; life through meaningful services.
</p>
<input type="submit" value="CONTACT US" class="btn btn-primary login-button">
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('userprofile_editCurrentUser_password','userprofile_editCurrentUser_password',NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<#assign wp=JspTaglibs["/aps-core"]>
<#assign wpsa=JspTaglibs["/apsadmin-core"]>
<#assign wpsf=JspTaglibs["/apsadmin-form"]>

<h1><@wp.i18n key="userprofile_EDITPASSWORD" /></h1>

<#if (Session.currentUser != "guest") >

	<form action="<@wp.action path="/ExtStr2/do/Front/CurrentUser/changePassword.action" />" method="post" class="form-horizontal">

	<@s.if test="hasFieldErrors()">
		<div class="alert alert-block">
			<p><strong><@wp.i18n key="userprofile_MESSAGE_TITLE_FIELDERRORS" /></strong></p>
			<ul class="unstyled">
				<@s.iterator value="fieldErrors">
					<@s.iterator value="value">
						<li><@s.property escapeHtml=false /></li>
					</@s.iterator>
				</@s.iterator>
			</ul>
		</div>
	</@s.if>

	<p class="noscreen">
		<wpsf:hidden name="username" />
	</p>

	<div class="control-group">
		<label for="userprofile-old-password" class="control-label"><@wp.i18n key="userprofile_OLDPASSWORD" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="oldPassword" 
				id="userprofile-old-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password" class="control-label"><@wp.i18n key="userprofile_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="password" 
				id="userprofile-new-password" />
		</div>
	</div>

	<div class="control-group">
		<label for="userprofile-new-password-confirm" class="control-label"><@wp.i18n key="userprofile_CONFIRM_NEWPASS" /></label>
		<div class="controls">
			<@wpsf.password 
				useTabindexAutoIncrement=true 
				name="passwordConfirm" 
				id="userprofile-new-password-confirm" />
		</div>
	</div>

	<p class="form-actions">
		<@wp.i18n key="userprofile_SAVE_PASSWORD" var="userprofile_SAVE_PASSWORD" />
		<@wpsf.submit 
			useTabindexAutoIncrement=true 
			value="%{#attr.userprofile_SAVE_PASSWORD}" 
			cssClass="btn btn-primary" />
	</p>

	</form>
	
<#else>
	<p>
		<@wp.i18n key="userprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD" />
	</p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('login_form','login_form',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="RESERVED_AREA" /></h1>
<#if (Session.currentUser.username != "guest") >
	<p><@wp.i18n key="WELCOME" />, <em>${Session.currentUser}</em>!</p>
	<#if (Session.currentUser.entandoUser) >
	<table class="table table-condensed">
		<tr>
			<th><@wp.i18n key="USER_DATE_CREATION" /></th>
			<th><@wp.i18n key="USER_DATE_ACCESS_LAST" /></th>
			<th><@wp.i18n key="USER_DATE_PASSWORD_CHANGE_LAST" /></th>
		</tr>
		<tr>
			<td>${Session.currentUser.creationDate?default("-")}</td>
			<td>${Session.currentUser.lastAccess?default("-")}</td>
			<td>${Session.currentUser.lastPasswordChange?default("-")}</td>
		</tr>
	</table>
		<#if (!Session.currentUser.credentialsNotExpired) >
		<div class="alert alert-block">
			<p><@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD" />: <a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/editPassword.action"><@wp.i18n key="USER_STATUS_EXPIRED_PASSWORD_CHANGE" /></a></p>
		</div>
		</#if>
	</#if>
	<@wp.ifauthorized permission="enterBackend">
	<div class="btn-group">
		<a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<@wp.info key="currentLang" />" class="btn"><@wp.i18n key="ADMINISTRATION" /></a>
	</div>
	</@wp.ifauthorized>
	<p class="pull-right"><a href="<@wp.info key="systemParam" paramName="applicationBaseURL" />do/logout.action" class="btn"><@wp.i18n key="LOGOUT" /></a></p>
	<@wp.pageWithWidget widgetTypeCode="userprofile_editCurrentUser" var="userprofileEditingPageVar" listResult=false />
	<#if (userprofileEditingPageVar??) >
	<p><a href="<@wp.url page="${userprofileEditingPageVar.code}" />" ><@wp.i18n key="userprofile_CONFIGURATION" /></a></p>
	</#if>
<#else>
	<#if (accountExpired?? && accountExpired == true) >
	<div class="alert alert-block alert-error">
		<p><@wp.i18n key="USER_STATUS_EXPIRED" /></p>
	</div>
	</#if>
	<#if (wrongAccountCredential?? && wrongAccountCredential == true) >
	<div class="alert alert-block alert-error">
		<p><@wp.i18n key="USER_STATUS_CREDENTIALS_INVALID" /></p>
	</div>
	</#if>
	<form action="<@wp.url/>" method="post" class="form-horizontal margin-medium-top">
		<#if (RequestParameters.returnUrl??) >
		<input type="hidden" name="returnUrl" value="${RequestParameters.returnUrl}" />
		</#if>
		<div class="control-group">
			<label for="username" class="control-label"><@wp.i18n key="USERNAME" /></label>
			<div class="controls">
				<input id="username" type="text" name="username" class="input-xlarge" />
			</div>
		</div>
		<div class="control-group">
			<label for="password" class="control-label"><@wp.i18n key="PASSWORD" /></label>
			<div class="controls">
				<input id="password" type="password" name="password" class="input-xlarge" />
			</div>
		</div>
		<div class="form-actions">
			<input type="submit" value="<@wp.i18n key="SIGNIN" />" class="btn btn-primary" />
		</div>
	</form>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('internal_servlet_generic_error',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="GENERIC_ERROR" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('internal_servlet_user_not_allowed',NULL,NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<@wp.i18n key="USER_NOT_ALLOWED" />',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('messages_system','messages_system',NULL,NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<#assign currentPageCode><@wp.currentPage param="code" /></#assign>

<#if (currentPageCode == ''notfound'')>
<div class="alert alert-error alert-block">
	<h1 class="alert-heading"><@wp.i18n key="PAGE_NOT_FOUND" escapeXml=false /></h1>
</div>
</#if>
<#if (currentPageCode == ''errorpage'')>
<div class="alert alert-error alert-block">
	<h1 class="alert-heading"><@wp.i18n key="GENERIC_ERROR" escapeXml=false /></h1>
</div>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('default_pagerInfo_is',NULL,NULL,NULL,'<#assign s=JspTaglibs["/struts-tags"]>
<p><@s.text name="note.searchIntro" />&#32;<@s.property value="#group.size" />&#32;<@s.text name="note.searchOutro" />.<br />
<@s.text name="label.page" />: [<@s.property value="#group.currItem" />/<@s.property value="#group.maxItem" />].</p>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Number',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<fieldset>
<legend>
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>
<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="NUMBER_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="number" class="input-medium" />
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilters',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#if (userFilterOptionsVar??) && userFilterOptionsVar?has_content && (userFilterOptionsVar?size > 0)>
<div class="row-fluid"><div class="span12 padding-medium-top">
<#assign hasUserFilterError = false >
<#list userFilterOptionsVar as userFilterOptionVar>
<#if (userFilterOptionVar.formFieldErrors??) && userFilterOptionVar.formFieldErrors?has_content && (userFilterOptionVar.formFieldErrors?size > 0)>
<#assign hasUserFilterError = true >
</#if>
</#list>
<#if (hasUserFilterError)>
<div class="alert alert-error">
	<a class="close" data-dismiss="alert" href="#"><i class="icon-remove"></i></a>
	<h2 class="alert-heading"><@wp.i18n key="ERRORS" /></h2>
	<ul>
		<#list userFilterOptionsVar as userFilterOptionVar>
			<#if (userFilterOptionVar.formFieldErrors??) && (userFilterOptionVar.formFieldErrors?size > 0)>
			<#assign formFieldErrorsVar = userFilterOptionVar.formFieldErrors >
			<#list formFieldErrorsVar?keys as formFieldErrorKey>
			<li>
			<@wp.i18n key="jacms_LIST_VIEWER_FIELD" />&#32;<em>${formFieldErrorsVar[formFieldErrorKey].attributeName}</em><#if (formFieldErrorsVar[formFieldErrorKey].rangeFieldType??)>:&#32;<em><@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].rangeFieldType}" /></em></#if>&#32;<@wp.i18n key="${formFieldErrorsVar[formFieldErrorKey].errorKey}" />
			</li>
			</#list>
			</#if>
		</#list>
	</ul>
</div>
</#if>
<#assign hasUserFilterError = false >
<p><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#content-viewer-list-filters"><@wp.i18n key="SEARCH_FILTERS_BUTTON" /> <i class="icon-zoom-in icon-white"></i></button></p>
<form action="<@wp.url />" method="post" class="form-horizontal collapse" id="content-viewer-list-filters">
	<#list userFilterOptionsVar as userFilterOptionVar>
		<@wp.freemarkerTemplateParameter var="userFilterOptionVar" valueName="userFilterOptionVar" removeOnEndTag=true >
		<#if !userFilterOptionVar.attributeFilter && (userFilterOptionVar.key == "fulltext" || userFilterOptionVar.key == "category")>
			<@wp.fragment code="jacms_content_viewer_list_userfilter_met_${userFilterOptionVar.key}" escapeXml=false />
		</#if>
		<#if userFilterOptionVar.attributeFilter >
			<#if userFilterOptionVar.attribute.type == "Monotext" || userFilterOptionVar.attribute.type == "Text" || userFilterOptionVar.attribute.type == "Longtext" || userFilterOptionVar.attribute.type == "Hypertext">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Text" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Enumerator" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Enumer" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "EnumeratorMap" >
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_EnumerMap" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Number">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Number" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Date">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Date" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "Boolean">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_Boolean" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "CheckBox">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_CheckBox" escapeXml=false />
			</#if>
			<#if userFilterOptionVar.attribute.type == "ThreeState">
				<@wp.fragment code="jacms_content_viewer_list_userfilter_ent_ThreeSt" escapeXml=false />
			</#if>
		</#if>
		</@wp.freemarkerTemplateParameter>
	</#list>
	<p class="form-actions">
		<input type="submit" value="<@wp.i18n key="SEARCH" />" class="btn btn-primary" />
	</p>
</form>
</div></div>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_met_fulltext',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<div class="control-group">
    <label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="TEXT" /></label>
    <div class="controls">
        <input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
    </div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_met_category',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign userFilterCategoryCodeVar = userFilterOptionVar.userFilterCategoryCode?default("") >
<@wp.categories var="systemCategories" titleStyle="prettyFull" root="${userFilterCategoryCodeVar}" />
<div class="control-group">
	<label for="category" class="control-label"><@wp.i18n key="CATEGORY" /></label>
	<div class="controls">
		<select id="category" name="${formFieldNameVar}" class="input-xlarge">
			<option value=""><@wp.i18n key="ALL" /></option>
			<#list systemCategories as systemCategory>
			<option value="${systemCategory.key}" <#if (formFieldValue == systemCategory.key)>selected="selected"</#if> >${systemCategory.value}</option>
			</#list>
		</select>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Text',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>
<#assign formFieldNameVar = userFilterOptionVar.formFieldNames[0] >
<#assign formFieldValue = userFilterOptionVar.getFormFieldValue(formFieldNameVar) >
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<div class="control-group">
	<label for="${formFieldNameVar}" class="control-label"><@wp.i18n key="${i18n_Attribute_Key}" /></label>
	<div class="controls">
		<input name="${formFieldNameVar}" id="${formFieldNameVar}" value="${formFieldValue}" type="text" class="input-xlarge"/>
	</div>
</div>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-progress-bar','fsi-progress-bar',NULL,'<div class="ibox float-e-margins">
    <div class="row">
        <div class="col-md-10"><span class="title-welcome">Your Performance</span></div>
        <div class="col-md-1">&nbsp;</div>
        <div class="col-md-1">
            <div class="ibox-tools">
                <a class="collapse-link fsi-progess-bar-tools-icon ">
                    <i class="fa fa-chevron-up"></i>
                </a>
            </div>
        </div>
    </div>

    <div class="ibox-content" style="display: block; border-style: none;">
        <div class="row">
            <div class="col-md-10"></div>
            <div class="col-md-1">
                <div class="dropdown">
                    <button class="btn btn-default btn-xs dropdown-toggle fsi-progess-bar-dropdown" type="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                        All<span class="caret" style="margin-left: 15px;"></span>
                    </button>
                </div>
            </div>
            <div class="col-md-1">
                <div style="text-align: right">
                    <i class="fa fa-calendar"></i>
                </div>
            </div>

        </div>
        <div class="row fsi-progess-bar-box-label ">
            <div class="col-md-3 fsi-progess-bar-label ">You added &nbsp;&nbsp; <b>315 </b></div>
            <div class="col-md-3 fsi-progess-bar-label ">Customers, of these &nbsp;&nbsp;<b>215</b></div>
            <div class="col-md-3 fsi-progess-bar-label " style="text-align:right;">Complete registration</div>
            <div class="col-md-3 fsi-progess-bar-label " style="text-align:right;">Your aim is &nbsp;&nbsp;<b>400</b>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="progress">
                    <div class="progress-bar fsi-progess-bar-default" style="width: 60%">
                        <span class="sr-only">60% Complete (success)</span>60%
                    </div>
                    <div class="progress-bar progress-bar-success fsi-progess-bar-success" style="width: 20%">
                        <span class="sr-only">20% Complete (warning)</span>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list','content_viewer_list','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js" />
<@jacms.contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />
<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<@wp.freemarkerTemplateParameter var="userFilterOptionsVar" valueName="userFilterOptionsVar" removeOnEndTag=true >
<@wp.fragment code="jacms_content_viewer_list_userfilters" escapeXml=false />
</@wp.freemarkerTemplateParameter>
<#if (contentList??) && (contentList?has_content) && (contentList?size > 0)>
	<@wp.pager listName="contentList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
		<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
<#list contentList as contentId>
<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
	<@jacms.content contentId="${contentId}" />
</#if>
</#list>
		<@wp.fragment code="default_pagerBlock" escapeXml=false />
		</@wp.freemarkerTemplateParameter>
	</@wp.pager>
<#else>
		<p class="alert alert-info"><@wp.i18n key="LIST_VIEWER_EMPTY" /></p>
</#if>
<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>
<#assign contentList="">',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_content_viewer_list_userfilter_ent_Date',NULL,'jacms',NULL,'<#assign wp=JspTaglibs["/aps-core"]>

<#assign currentLangVar ><@wp.info key="currentLang" /></#assign>

<#assign js_for_datepicker="jQuery(function($){
	$.datepicker.regional[''it''] = {
		closeText: ''Chiudi'',
		prevText: ''&#x3c;Prec'',
		nextText: ''Succ&#x3e;'',
		currentText: ''Oggi'',
		monthNames: [''Gennaio'',''Febbraio'',''Marzo'',''Aprile'',''Maggio'',''Giugno'',
			''Luglio'',''Agosto'',''Settembre'',''Ottobre'',''Novembre'',''Dicembre''],
		monthNamesShort: [''Gen'',''Feb'',''Mar'',''Apr'',''Mag'',''Giu'',
			''Lug'',''Ago'',''Set'',''Ott'',''Nov'',''Dic''],
		dayNames: [''Domenica'',''Luned&#236'',''Marted&#236'',''Mercoled&#236'',''Gioved&#236'',''Venerd&#236'',''Sabato''],
		dayNamesShort: [''Dom'',''Lun'',''Mar'',''Mer'',''Gio'',''Ven'',''Sab''],
		dayNamesMin: [''Do'',''Lu'',''Ma'',''Me'',''Gi'',''Ve'',''Sa''],
		weekHeader: ''Sm'',
		dateFormat: ''yy-mm-dd'',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''''};
});

jQuery(function($){
	if (Modernizr.touch && Modernizr.inputtypes.date) {
		$.each(	$(''input[data-isdate=true]''), function(index, item) {
			item.type = ''date'';
		});
	} else {
		$.datepicker.setDefaults( $.datepicker.regional[''${currentLangVar}''] );
		$(''input[data-isdate=true]'').datepicker({
      			changeMonth: true,
      			changeYear: true,
      			dateFormat: ''yyyy-mm-dd''
    		});
	}
});" >

<@wp.headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<@wp.headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.0/jquery-ui.min.js" />
<@wp.headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.min.css" />
<@wp.headInfo type="JS_RAW" info="${js_for_datepicker}" />
<fieldset>
<legend>
<#assign i18n_Attribute_Key = userFilterOptionVar.attribute.name >
<@wp.i18n key="${i18n_Attribute_Key}" />
</legend>
<div class="control-group">
	<#assign formFieldStartNameVar = userFilterOptionVar.formFieldNames[0] >
	<#assign formFieldStartValueVar = userFilterOptionVar.getFormFieldValue(formFieldStartNameVar) >
	<label for="${formFieldStartNameVar}" class="control-label">
		<@wp.i18n key="DATE_FROM" />
	</label>
	<div class="controls">
		<input id="${formFieldStartNameVar}" name="${formFieldStartNameVar}" value="${formFieldStartValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>
<div class="control-group">
	<#assign formFieldEndNameVar = userFilterOptionVar.formFieldNames[1] >
	<#assign formFieldEndValueVar = userFilterOptionVar.getFormFieldValue(formFieldEndNameVar) >
	<label for="${formFieldEndNameVar}" class="control-label">
		<@wp.i18n key="DATE_TO" />
	</label>
	<div class="controls">
		<input id="${formFieldEndNameVar}" name="${formFieldEndNameVar}" value="${formFieldEndValueVar?default("")}" type="text" data-isdate="true" class="input-xlarge" />
	</div>
</div>
</fieldset>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('search_result','search_result','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<h1><@wp.i18n key="SEARCH_RESULTS" /></h1>
<#if (RequestParameters.search?? && RequestParameters.search!='''')>
<@jacms.searcher listName="contentListResult" />
</#if>
<p><@wp.i18n key="SEARCHED_FOR" />: <em><strong><#if (RequestParameters.search??)>${RequestParameters.search}</#if></strong></em></p>
<#if (contentListResult??) && (contentListResult?has_content) && (contentListResult?size > 0)>
<@wp.pager listName="contentListResult" objectName="groupContent" max=10 pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<p><em><@wp.i18n key="SEARCH_RESULTS_INTRO" /> <!-- infamous whitespace hack -->
	${groupContent.size}
	<@wp.i18n key="SEARCH_RESULTS_OUTRO" /> [${groupContent.begin + 1} &ndash; ${groupContent.end + 1}]:</em></p>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<#list contentListResult as contentId>
	<#if (contentId_index >= groupContent.begin) && (contentId_index <= groupContent.end)>
		<@jacms.content contentId="${contentId}" modelId="list" />
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
</@wp.pager>
<#else>
<p class="alert alert-info"><@wp.i18n key="SEARCH_NOTHING_FOUND" /></p>
</#if>',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('jacms_row_content_viewer_list','row_content_viewer_list','jacms',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<@jacms.rowContentList listName="contentInfoList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" />
<#if (titleVar??)>
	<h1>${titleVar}</h1>
</#if>
<#if (contentInfoList??) && (contentInfoList?has_content) && (contentInfoList?size > 0)>
	<@wp.pager listName="contentInfoList" objectName="groupContent" pagerIdFromFrame=true advanced=true offset=5>
	<@wp.freemarkerTemplateParameter var="group" valueName="groupContent" removeOnEndTag=true >
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	<#list contentInfoList as contentInfoVar>
	<#if (contentInfoVar_index >= groupContent.begin) && (contentInfoVar_index <= groupContent.end)>
		<#if (contentInfoVar[''modelId'']??)>
		<@jacms.content contentId="${contentInfoVar[''contentId'']}" modelId="${contentInfoVar[''modelId'']}" />
		<#else>
		<@jacms.content contentId="${contentInfoVar[''contentId'']}" />
		</#if>
	</#if>
	</#list>
	<@wp.fragment code="default_pagerBlock" escapeXml=false />
	</@wp.freemarkerTemplateParameter>
	</@wp.pager>
</#if>
<#if (pageLinkVar??) && (pageLinkDescriptionVar??)>
	<p class="text-right"><a class="btn btn-primary" href="<@wp.url page="${pageLinkVar}"/>">${pageLinkDescriptionVar}</a></p>
</#if>
<#assign contentInfoList="">',1);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-application-progress','fsi-application-progress',NULL,'<div class="application-progress">
  <div class="label-box">
    <div class="label-box-title">Application</div>
    <div class="label-box-descr">Tell us more about the business</div>
  </div>
  <div class="bullet-progress-container">
    <div class="bullet-progress-item active">
      <div class="bullet">1</div>
      <div class="bullet-label">Business Details</div>
    </div>
    <div class="bullet-progress-item">
      <div class="bullet">2</div>
      <div class="bullet-label">Account User</div>
    </div>
    <div class="bullet-progress-item">
      <div class="bullet">3</div>
      <div class="bullet-label">Banking Services</div>
    </div>
    <div class="bullet-progress-item">
      <div class="bullet">4</div>
      <div class="bullet-label">Declaration</div>
    </div>
    <div class="bullet-progress-item">
      <div class="bullet">5</div>
      <div class="bullet-label">Confirm</div>
    </div>
  </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('Loans-3-images ','Loans-3-images ',NULL,'<#assign wp=JspTaglibs["/aps-core"]>  
<div class="col-md-12 box-title-loan">YOU MIGHT BE INTERESTED IN OUR TOP 3 LOANS</div>
<div class="col-md-4 box-loan">
                    <div class="box-img-loan">
                    <img src="<@wp.imgURL />/Foto_Term_Loan.png" class="img-responsive">
                     </div>
                    <p class="title-loan">TERM LOANS</p>
                    <p class="title-label-loan" >Lump up sum repaid over a fixed period of time</p>
                    <p class="title-label-loan" >Best for long term growth</p>
                </div>
                <div class="col-md-4 box-loan">
                    <div class="box-img-loan">
                    <img src="<@wp.imgURL />/Foto_Micro_Loan.png" class="img-responsive">
                  </div>
                    <p class="title-loan" >MICRO LOANS</p>
                    <p class="title-label-loan" >Loans typically offered for micro businesses</p>
                    <p class="title-label-loan" >Smaller Loans of up to 35,000$</p>
                </div>
                <div class="col-md-4 box-loan">
                   <div class="box-img-loan">
                    <img src="<@wp.imgURL />/Foto_Bridge_Loan.png" class="img-responsive">
                    </div>
                    <p class="title-loan" >BRIDGE LOANS</p>
                    <p class="title-label-loan" >Ideal for immediate and short term cash flows</p>
                    <p class="title-label-loan" >Ad interim support to "bridge the gap" before permanent financing </p>
                </div>
            </div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-club-credit-card','fsi-club-credit-card',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="middle-box-cc">
      <div class="club-cc-wrapper">
         <div class="label-club">CLUB</div>
         <div class="label-credit-card">CREDIT CARD</div>
      </div>
      <div class="fsi-logo-name">
	<img alt="image" class="" src="<@wp.imgURL />shield-logo.png">&nbsp;
	<b>FORTRESS -</b>&nbsp;
	<span>Bank &amp; Loan</span>
      </div>
    </div>

',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-footer','fsi-footer',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="fsi-footer-wrapper">
  <div class="fsi-footer">
    <div class="col-md-2 col-md-offset-1">
      <div class="logo-names">
        <img alt="image" class="" src="<@wp.imgURL />shield-logo.png">&nbsp;
        <b>FORTRESS -</b>
        <span>Bank &amp; Loan</span></div>
    </div>
    <div class="col-md-2 col-md-offset-2 side-menu">
      <div class="side-menu-item">Personal</div>
      <div class="side-menu-item">Small Business</div>
      <div class="side-menu-item">Commercial</div>
      <div class="side-menu-item">Global Wealth</div>
    </div>
    <div class="col-md-2 contacts">
      <div class="item">
        <i class="fa fa-comments-o"></i>
        <span class="labels">Start chat</span>
      </div>
      <div class="item">
        <i class="fa fa-phone"></i>
        <span class="labels">001-500-200</span>
      </div>
      <div class="item">
        <i class="fa fa-envelope-o"></i>
        <span class="labels">Write to us</span>
      </div>
    </div>
    <div class="col-md-2 contacts">
      <div class="item">
        <i class="fa fa-credit-card"></i>
        <span class="labels">Block your card</span>
      </div>
      <div class="item">
        <i class="fa fa-users"></i>
        <span class="labels">Set up a meeting</span>
      </div>
      <div class="item">
        <i class="fa fa-home"></i>
        <span class="labels">Find local branch</span>
      </div>
    </div>
  </div>
  <div class="copyright row">
    <div class="col-md-6 col-md-offset-1">Copyright Example Company &copy; 2014-2015</div>
  </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('Welcome-content','Welcome-content',NULL,'<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="row spacers">
<div class="col-md-12">
  <p class="title-welcome">
   WELCOME IN TO THE  FORTRESS BANK & LOAN
   </p>
</div>
<div class="col-md-6">
<p class="content-welcome">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci justo, aliquam id tempor sit amet, feugiat pharetra quam. Suspendisse quis vulputate quam, sed ultricies lectus. Etiam in pulvinar mauris. Vivamus et tellus nunc. Cras id erat ut nulla interdum posuere vel vel nisl. Aenean sit amet arcu rhoncus arcu cursus volutpat ut posuere ligula. Nulla vel auctor diam. Cras quis condimentum lacus. Nullam et urna vehicula, porttitor tortor ut, tincidunt tortor.
</p>
</div>

<div class="col-md-6">
  <p class="content-welcome">
   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce orci justo, aliquam id tempor sit amet, feugiat pharetra quam. Suspendisse quis vulputate quam, sed ultricies lectus. Etiam in pulvinar mauris. Vivamus et tellus nunc. Cras id erat ut nulla interdum posuere vel vel nisl. Aenean sit amet arcu rhoncus arcu cursus volutpat ut posuere ligula. Nulla vel auctor diam. Cras quis condimentum lacus. Nullam et urna vehicula, porttitor tortor ut, tincidunt tortor.
</p>
</div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-mock-datatable-backoffice','fsi-mock-datatable-backoffice',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>BPM data table</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <table id="example2" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th>Customer Name</th>
                    <th>Task</th>
                    <th>Case Due in</th>
                    <th>Actions</th>
                </tr>
            </thead>
        </table>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-mock-datatable-account','fsi-mock-datatable-account',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>BPM data table</h5>
        <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
    </div>
    <div class="ibox-content">
        <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th>Status Progress</th>
                    <th>Customer Name</th>
                    <th>Company</th>
                    <th>Date</th>
                    <th>Case Due in</th>
                    <th>Actions</th>
                </tr>
            </thead>
        </table>
    </div>
</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-customer-overview-big','fsi-customer-overview-big',NULL,'<div class="ibox float-e-margins fsi-customer-overview-big">
  <div class="ibox-title">
    <h5>Customer Overview</h5>
  <div class="ibox-tools">
            <a class="collapse-link">
                <i class="fa fa-chevron-up"></i>
            </a>
        </div>
 </div>
  <div class="ibox-content">
    <div class="row">
      <div class="col-md-3">

<div class="fsi-customer-overview-item">
        <h2>75</h2>
        <div class="label-text">Today Total Signed Up <h3>48% <i class="fa fa-level-up"></i></h3></div>
        
        <div class="progress">
          <div class="progress-bar progress-bar-today" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="0" style="width:65%"></div>
        </div>
      </div>
      <div class="fsi-customer-overview-item">
        <h2>24</h2>
        <div class="label-text">Today Total Sign Up <h3>40% <i class="fa fa-level-down"></i></h3></div>
        <div class="progress">
          <div class="progress-bar progress-bar-yesterday" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="0" style="width:45%"></div>
        </div>
      </div>
      <div class="fsi-customer-overview-item">
        <h2>132</h2>
        <div class="label-text">Last Week Total Sign Up <h3>22% <i class="fa fa-bolt"></i></h3></div>
        <div class="progress">
          <div class="progress-bar progress-bar-lastyear" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="0" style="width:65%"></div>
        </div>
      </div>


      </div>
      <div class="col-md-6">
        <div id="bar-area-chart"></div>
      </div>
      <div class="col-md-3">
        <div id="donut-chart"></div>
      </div>

    </div>
  </div>
</div>
<script>

var chart = c3.generate({
    bindto: ''#bar-area-chart'',
    data: {
        x: ''x'',
        columns: [
            [''x'', ''2013-01-01'', ''2013-01-02'', ''2013-01-03'', ''2013-01-04'', ''2013-01-05'', ''2013-01-06'', ''2013-01-07'', ''2013-01-08'', ''2013-01-09'', ''2013-01-10'', ''2013-01-11'', ''2013-01-12'', ''2013-01-13'', ''2013-01-14'', ''2013-01-15'', ''2013-01-16'', ''2013-01-17'', ''2013-01-18''],
            [''data1'', 76, 50, 60, 70, 50, 45, 52, 75, 76, 43, 60, 37, 39, 79, 78, 60, 40, 75],
            [''data2'', 23, 15, 24, 27, 22, 23, 17, 14, 15, 19, 22, 23, 24, 14, 13, 18, 25, 15],
        ],
        axes: {
            data1: ''y'',
            data2: ''y2''
        },
        type: ''bar'',
        types: {
            data2: ''area'',
        },
      colors: {
        data1: ''#b8dcf4'',
        data2: ''#464f88''
      },
      names: {
        data1: ''Signed up'',
        data2: ''Sign ups''
      }
    },
    axis: {
      y: { 
        min: 0, 
        max: 100,
        padding: {top: 0, bottom: 0 },
        tick: { count: 5 }
      },
      
      y2: { 
        min: 0, 
        max: 100,
        padding: {top: 0, bottom: 0 },
        tick: { count: 11 },
        show: true
      },
      
      x: {
            type: ''timeseries'',
            tick: {
              culling: { max: 6 } ,
              format: ''Jan %d''
            },
            
        }
    },
    legend: { position: ''inset'' },
    grid: {
        y: {
            show: true
        }
    }
});

var chart = c3.generate({
    bindto: ''#donut-chart'',
    data: {
        columns: [
            [''In Progress'', 42],
            [''Started'', 37],
            [''Completed'', 21],
        ],
        type : ''donut'',
        colors: {
          ''In Progress'': ''#7dc3e7'',
          Started: ''#0088ce'',
          Completed: ''#dff2ff''
        }
    },
    donut: {
        label: {
          format: function (value, ratio, id) {
            return value + ''%'';
          }
        }
    }
});
</script>
',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-in-progress','fsi-in-progress',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>In progress</h5>
        <div class="pull-right">
            <div class="btn-group">
                <button type="button" class="btn btn-xs btn-white active">Today</button>
                <button type="button" class="btn btn-xs btn-white">Monthly</button>
                <button type="button" class="btn btn-xs btn-white">Annual</button>
            </div>
        </div>
    </div>
    <div class="ibox-content">
        <div class="row">
            <div class="col-md-4">
                <h1 class="no-margins">53</h1>
            </div>
            <div class="col-md-8">
                <div class="progress progress-mini margin-top-15">
                    <div style="width: 89%;" class="progress-bar progress-bar-success"></div>
                </div>
            </div>

        </div>
        <div class="stat-percent font-bold text-success">11% <i class="fa fa-level-down"></i></div>
        <small>Total last 59</small>

    </div>

</div>',NULL,0);
INSERT INTO guifragment (code,widgettypecode,plugincode,gui,defaultgui,locked) VALUES ('fsi-completed','fsi-completed',NULL,'<div class="ibox float-e-margins">
    <div class="ibox-title">
        <h5>Completed</h5>
        <div class="pull-right">
            <div class="btn-group">
                <button type="button" class="btn btn-xs btn-white active">Today</button>
                <button type="button" class="btn btn-xs btn-white">Monthly</button>
                <button type="button" class="btn btn-xs btn-white">Annual</button>
            </div>
        </div>
    </div>
    <div class="ibox-content">
        <div class="row">
            <div class="col-md-4">
                <h1 class="no-margins">92</h1>
            </div>
            <div class="col-md-8">
                <div class="progress progress-mini margin-top-15">
                    <div style="width: 100%;" class="progress-bar"></div>
                </div>
            </div>
        </div>
        <div class="stat-percent font-bold text-info">11% <i class="fa fa-level-up"></i></div>
        <small>Total last 83</small>

    </div>

</div>',NULL,0);
