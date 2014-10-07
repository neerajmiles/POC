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

    
</head>
<body>

<div class="container">

<div class="page-header">
    <h1 align="center">Miles Login <small>Demonstrating a simple login functionality</small></h1>
</div>


<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">

          <h1 class="text-center">Login</h1>
      </div>
       <div class="">
           <g:if test='${flash.message}'>
            <div class="alert alert-error">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <font size="3" color="red">Error! ${flash.message}</font>
            </div>
           </g:if>
      	</div>
      <div class="modal-body">
          <form action='${postUrl}' method='POST' id='loginForm'class="form col-md-12 center-block">
            <div class="form-group">
              <input type="text" class="form-control input-lg" placeholder="Email" name='j_username' id='username'>
            </div>
            <div class="form-group">
              <input type="password" class="form-control input-lg" placeholder="Password" input type='password' class='text_' name='j_password' id='password'>
            </div>
            <div class="form-group">
              <input type='submit' id="submit" class="btn btn-primary btn-lg btn-block" value='${message(code: "springSecurity.login.button")}'/>
              <span class="pull-right"><a href="/loginApp/user/create">Register</a></span><span><a href="/loginApp/forgot/">Forgot Password?</a></span>
            </div>
          </form>
      </div>

  </div>
  </div>
</div>

<!-- Simple Login - END -->

</div>

</body>
</html>