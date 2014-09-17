<html>
<head>
    <meta charset="utf-8" />
    <title>Simple Login Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <asset:javascript src="jquery-1.10.2.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:stylesheet href="bootstrap.min.css"/>
        <asset:stylesheet href="font-awesome.min.css"/>


	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	
</head>

<body>
<div id='login'>
	<div class='inner'>
		<div class='fheader' class="form-control input-lg"><g:message code="springSecurity.login.header"/></div>

		<g:if test='${flash.message}'>
			<div class='login_message' class="form-control input-lg">${flash.message}</div>
		</g:if>

		<form action='${postUrl}' method='POST' id='loginForm' class="col-md-12">
			<div class="form-group">
				<label for='username' class="form-control input-lg"><g:message code="springSecurity.login.username.label"/>:</label>
				<input type='text' class='text_' name='j_username' id='username' class="form-control input-lg"/>
			</div>

			 <div class="form-group">

				<label for='password' class="form-control input-lg"><g:message code="springSecurity.login.password.label"/>:</label>
				<input type='password' class='text_' name='j_password' id='password' class="form-control input-lg"/>
			</div>

			<div class="form-group">

				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
			</div>

			<p>
				<input type='submit' id="submit" class="btn btn-primary btn-lg btn-block" value='${message(code: "springSecurity.login.button")}'/>
			</p>
		</form>
	</div>
</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
