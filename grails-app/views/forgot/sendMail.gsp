<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Simple Login Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <asset:javascript src="jquery-1.10.2.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:stylesheet href="bootstrap.min.css"/>
        <asset:stylesheet href="font-awesome.min.css"/>




<TITLE>Password Status Form</TITLE>
<SCRIPT language=JavaScript>


function checkform (form )
{

	document.form.action = "http://localhost:8080/loginApp/login/auth?format=";
	return true ;
}
</SCRIPT>
<script src="/ga.js" type="text/javascript"></script>
</head>
	<body>

<div class="container">

<div class="page-header">
    <h1 align="center">Password Status ! </h1>
</div>


<!--Forgot Password Status modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Password Status !</h1>
      </div>
       <div class="modal-header">
       <div >
                We have E-Mailed the link to the e-mail address you submitted at registration.
                			<BR>Set your New Password following the link been e-mailed to you, immediately.
       </div>
            <g:if test='${flash.message}'>
      			<div class='login_message' class="form-control input-lg">${flash.message}</div>
      		</g:if>
      	</div>
      <div class="modal-body">


<FORM method="post" name="form" id="search-theme-form" action="#" onSubmit="return checkform(form)">

<button  class="btn btn-primary btn-lg btn-block" data-dismiss="modal" aria-hidden="true" background-color="#0174DF">Re - Login</button>

   </form>
      </div>

  </div>
  </div>
</div>

<!-- Password Status - END -->

</div>

</body>
</html>