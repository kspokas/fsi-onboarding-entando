<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>

<%--CAL START --%>

<wp:info key="currentLang" var="currentLang" />

<c:set var="js_for_datepicker">
/* Italian initialisation for the jQuery UI date picker plugin. */
/* Written by Antonello Pasella (antonello.pasella@gmail.com). */
jQuery(function($){
$.datepicker.regional['it'] = {
closeText: 'Chiudi',
prevText: '&#x3c;Prec',
nextText: 'Succ&#x3e;',
currentText: 'Oggi',
monthNames: ['Gennaio','Febbraio','Marzo','Aprile','Maggio','Giugno',
'Luglio','Agosto','Settembre','Ottobre','Novembre','Dicembre'],
monthNamesShort: ['Gen','Feb','Mar','Apr','Mag','Giu',
'Lug','Ago','Set','Ott','Nov','Dic'],
dayNames: ['Domenica','Luned&#236','Marted&#236','Mercoled&#236','Gioved&#236','Venerd&#236','Sabato'],
dayNamesShort: ['Dom','Lun','Mar','Mer','Gio','Ven','Sab'],
dayNamesMin: ['Do','Lu','Ma','Me','Gi','Ve','Sa'],
weekHeader: 'Sm',
dateFormat: 'dd/mm/yy',
firstDay: 1,
isRTL: false,
showMonthAfterYear: false,
yearSuffix: ''};
});

jQuery(function($){
if (Modernizr.touch && Modernizr.inputtypes.date) {
$.each( $("input[data-isdate=true]"), function(index, item) {
item.type = 'date';
});
} else {
$.datepicker.setDefaults( $.datepicker.regional[ "<c:out value="${currentLang}" />" ] );
$("input[data-isdate=true]").datepicker({
       changeMonth: true,
       changeYear: true,
       dateFormat: "dd/mm/yy"
     });
}
});
</c:set>
<wp:headInfo type="JS" info="entando-misc-html5-essentials/modernizr-2.5.3-full.js" />
<wp:headInfo type="JS_EXT" info="http://code.jquery.com/ui/1.10.1/jquery-ui.js" />
<wp:headInfo type="CSS_EXT" info="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
<wp:headInfo type="JS_RAW" info="${js_for_datepicker}" />

<%--CAL END --%>

<%--
optional CSS
<wp:headInfo type="CSS" info="widgets/applicant_list.css" />
--%>

<section class="applicant_list">

<h1><wp:i18n key="jpapplicant_APPLICANT_SEARCH_APPLICANT" /></h1>

<form action="<wp:action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/search.action" />" method="post" >

  <fieldset>
		<label for="applicant_id"><wp:i18n key="jpapplicant_APPLICANT_ID" /></label>
		<input type="text" name="id" id="applicant_id" value="<s:property value="id" />" />
		<label for="applicant_firstname"><wp:i18n key="jpapplicant_APPLICANT_FIRSTNAME" /></label>
		<input type="text" name="firstname" id="applicant_firstname" value="<s:property value="firstname" />" />
		<label for="applicant_lastname"><wp:i18n key="jpapplicant_APPLICANT_LASTNAME" /></label>
		<input type="text" name="lastname" id="applicant_lastname" value="<s:property value="lastname" />" />
		<label for="applicant_company"><wp:i18n key="jpapplicant_APPLICANT_COMPANY" /></label>
		<input type="text" name="company" id="applicant_company" value="<s:property value="company" />" />
		<label for="applicant_email"><wp:i18n key="jpapplicant_APPLICANT_EMAIL" /></label>
		<input type="text" name="email" id="applicant_email" value="<s:property value="email" />" />
		<label for="applicant_pwd"><wp:i18n key="jpapplicant_APPLICANT_PWD" /></label>
		<input type="text" name="pwd" id="applicant_pwd" value="<s:property value="pwd" />" />
  </fieldset>

  <button type="submit" class="btn btn-primary">
    <wp:i18n key="SEARCH" />
  </button>

<wpsa:subset source="applicantsId" count="10" objectName="groupApplicant" advanced="true" offset="5">
<s:set var="group" value="#groupApplicant" />

<div class="margin-medium-vertical text-center">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>

<p>
  <a href="<wp:action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/new.action"></wp:action>" title="<wp:i18n key="NEW" />" class="btn btn-info">
    <span class="icon-plus-sign icon-white"></span>&#32;
    <wp:i18n key="NEW" />
  </a>
</p>

<table class="table table-bordered table-condensed table-striped">
<thead>
<tr>
  <th class="text-right">
    <wp:i18n key="jpapplicant_APPLICANT_ID" />
  </th>
	<th
                 class="text-left"><wp:i18n key="jpapplicant_APPLICANT_FIRSTNAME" /></th>
	<th
                 class="text-left"><wp:i18n key="jpapplicant_APPLICANT_LASTNAME" /></th>
	<th
                 class="text-left"><wp:i18n key="jpapplicant_APPLICANT_COMPANY" /></th>
	<th
                 class="text-left"><wp:i18n key="jpapplicant_APPLICANT_EMAIL" /></th>
	<th
                 class="text-left"><wp:i18n key="jpapplicant_APPLICANT_PWD" /></th>
	<th>
    <wp:i18n key="jpapplicant_APPLICANT_ACTIONS" />
  </th>
</tr>
</thead>
<tbody>
<s:iterator var="applicantId">
<tr>
	<s:set var="applicant" value="%{getApplicant(#applicantId)}" />
	<td class="text-right">
    <a
      href="<wp:action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/edit.action"><wp:parameter name="id"><s:property value="#applicant.id" /></wp:parameter></wp:action>"
      title="<wp:i18n key="EDIT" />: <s:property value="#applicant.id" />"
      class="label label-info display-block">
    <s:property value="#applicant.id" />&#32;
    <span class="icon-edit icon-white"></span>
    </a>
  </td>
	<td
            >
    <s:property value="#applicant.firstname" />  </td>
	<td
            >
    <s:property value="#applicant.lastname" />  </td>
	<td
            >
    <s:property value="#applicant.company" />  </td>
	<td
            >
    <s:property value="#applicant.email" />  </td>
	<td
            >
    <s:property value="#applicant.pwd" />  </td>
	<td class="text-center">
    <a
      href="<wp:action path="/ExtStr2/do/FrontEnd/jpapplicant/Applicant/trash.action"><wp:parameter name="id"><s:property value="#applicant.id" /></wp:parameter></wp:action>"
      title="<wp:i18n key="TRASH" />: <s:property value="#applicant.id" />"
      class="btn btn-warning btn-small">
      <span class="icon-trash icon-white"></span>&#32;
      <wp:i18n key="TRASH" />
    </a>
  </td>
</tr>
</s:iterator>
</tbody>
</table>

<div class="margin-medium-vertical text-center">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>

</wpsa:subset>

</form>
</section>