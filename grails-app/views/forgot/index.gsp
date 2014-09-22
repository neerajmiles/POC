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

    


<TITLE>Forgot Password Form</TITLE>
<SCRIPT language=JavaScript>

function sendMail(dynamic_value)
 {

alert(dynamic_value);
    var staticlink = "http://localhost:8080/loginApp/forgot/find/"+dynamic_value;
    var link = "mailto:"+dynamic_value             
             + "&subject=" + escape("Password Reset Link") 
			 
            + "&body=" + escape(staticlink)
  //  ;
	
alert(link);

    window.location.href = link;
}
function checkform (form )
{
var dynamic_value = "";
	if (form.email.value == "") 
	{
		alert("Please enter your e-mail address." );
		form.email.focus();
		return false ;
	}
	else
	{
	
	dynamic_value = document.getElementById("email").value;
	//sendMail(dynamic_value);
	//alert(dynamic_value);

	var link = "http://localhost:8080/loginApp/forgot/find/"+dynamic_value

	//document.form.action = "http://localhost:8080/loginApp/forgot/sendMail/"+encodeURIComponent(link);
	document.form.action = "http://localhost:8080/loginApp/forgot/sendMail/"+dynamic_value;
	}
	return true ;
}
</SCRIPT>
<script src="/ga.js" type="text/javascript"></script>
</head>
	<body>

<div class="container">

<div class="page-header">
    <h1 align="center">Forgot your Password? </h1>
</div>


<!--Forgot your Password? modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Forgot Password?</h1>
      </div>
       <div class="modal-header">
       <div >
                 Enter the e-mail address you submitted at registration.
                 			<BR>Your password will be e-mailed to you immediately.
                 </div>
            <g:if test='${flash.message}'>
      			<div class='login_message' class="form-control input-lg">${flash.message}</div>
      		</g:if>
      	</div>
      <div class="modal-body">


<FORM method="post" name="form" id="search-theme-form" action="#" onSubmit="return checkform(form)">


            <div class="form-group">
              <input type="text" class="form-control input-lg" placeholder="Email Id Here !" name='email' id='email'>

            </div>

<button  class="btn btn-primary btn-lg btn-block" data-dismiss="modal" aria-hidden="true" background-color="#0174DF">Retrieve Password</button>




   </form>
      </div>

  </div>
  </div>
</div>

<!-- Forgot your Password? - END -->

</div>

</body>
</html>