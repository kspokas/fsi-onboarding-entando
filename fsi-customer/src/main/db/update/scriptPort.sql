--- 09-11-2017 Matteo

INSERT INTO widgetcatalog VALUES ('bpm-datatable-process-list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">BPM-Process list</property>
<property key="it">BPM-Lista processi</property>
</properties>', '<config>
	<parameter name="widgetInfoId">WidgetInfoID</parameter>
	<action name="jpkiebpmBpmDatatableWidgetViewerConfig"/>
</config>', 'jpkiebpm', NULL, NULL, 1, NULL);

INSERT INTO widgetcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('fsiApplicant_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Applicant Form</property>
<property key="it">Form Applicant</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/FrontEnd/jpapplicant/Applicant/new.action</property>
</properties>', 1, 'free');

UPDATE guifragment SET gui='<#assign jacms=JspTaglibs["/jacms-aps-core"]>
<#assign wp=JspTaglibs["/aps-core"]>
<div class="row spacers">
<div class="col-md-12">
  <p class="title-welcome">
   WELCOME IN TO THE  FORTRESS BANK & LOAN
   </p>
</div>
<div class="col-md-6">
<p class="content-welcome">Fortress Bank & Loan is a unique company that is trying to change the face of banking. This account is a great way to avoid fees. There is no monthly fee and no minimum deposit. Even better, there are no ATM fees and unlimited reimbursement of ATM fees charged by others. You can use your ATM card anywhere in the world and never pay a dime. You decide how much you want to pay for the account - and that can be $0. Fortress Bank & Loan is making the bet that you will appreciate the value and decide to pay them something. But you are not obligated to make any payment.
</p>
</div>

<div class="col-md-6">
  <p class="content-welcome">
   You can also earn interest on this account. For balances up to $2,500 the interest rate is 0.25% and it is a very healthy 1.00% APY on balances above 1.00%. And the best part: you don''t have to "do things" (like use your debit card) to get the rate. So long as you have the account, you get the interest rate.</p>
<p class="content-welcome">
Since we''re a branchless all-digital banking platform, all the banking services you need are as close as your smartphone, tablet or computer. Also as close as over 85,000 surcharge-free ATMs**. That''s more ATMs than the top five U.S. banks own, combined. And, most important, your security is our first priority.</p>
</div>
</div>'
WHERE code='Welcome-content';

UPDATE guifragment SET gui='<#assign wp=JspTaglibs["/aps-core"]>
<div class="col-md-12 box-title-loan">YOU MIGHT BE INTERESTED IN OUR TOP 3 LOANS</div>
<div class="col-md-4 box-loan">
        <div class="box-img-loan">
        <img src="<@wp.imgURL />/Foto_Term_Loan.png" class="img-responsive">
         </div>
        <p class="title-loan">TERM LOANS</p>
        <p class="title-label-loan" >Repaid over a fixed period of time. Best for long term growth.</p>
    </div>
    <div class="col-md-4 box-loan">
        <div class="box-img-loan">
        <img src="<@wp.imgURL />/Foto_Micro_Loan.png" class="img-responsive">
      </div>
        <p class="title-loan" >MICRO LOANS</p>
        <p class="title-label-loan" >Modern Micro Loans optimized for the micro-business.</p>
    </div>
    <div class="col-md-4 box-loan">
       <div class="box-img-loan">
        <img src="<@wp.imgURL />/Foto_Bridge_Loan.png" class="img-responsive">
        </div>
        <p class="title-loan" >BRIDGE LOANS</p>
        <p class="title-label-loan" >Ideal for intermediate and short term cash flow crunches.</p>
    </div>
</div>'
WHERE code='Loans-3-images ';