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

<!-- Simple Login - START -->
<div class='fheader' class="form-control input-lg"><g:message code="springSecurity.login.header"/></div>

		<g:if test='${flash.message}'>
			<div class='login_message' class="form-control input-lg">${flash.message}</div>
		</g:if>

<form class="col-md-12" action='${postUrl}' method='POST' id='loginForm'>
    <div class="form-group">
        <input type="text" class="form-control input-lg" placeholder="User" name='j_username' id='username'>
    </div>
    <div class="form-group">
        <input type="password" class="form-control input-lg" placeholder="Password" input type='password' class='text_' name='j_password' id='password'>
    </div>
    <div class="form-group">

				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</div>

    <div class="form-group">
        <input type='submit' id="submit" class="btn btn-primary btn-lg btn-block" value='${message(code: "springSecurity.login.button")}'/>
        <span><a href="#">Need help?</a></span>
        <span class="pull-right"><a href="#">New Registration</a></span>
    </div>
</form>
<!-- Simple Login - END -->

</div>

</body>
</html>