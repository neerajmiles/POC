<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Set New Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <asset:javascript src="jquery-1.10.2.min.js"/>
        <asset:javascript src="bootstrap.min.js"/>
        <asset:stylesheet href="bootstrap.min.css"/>
        <asset:stylesheet href="font-awesome.min.css"/>

<TITLE>Set New Password Form</TITLE>

</head>
	<body>

<div class="container">

<div class="page-header">
    <h1 align="center">Forgot your Password? </h1>
</div>


<!--Set New Password modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Set New Password</h1>
      </div>
       <div class="modal-header">

            <g:if test='${flash.message}'>
      			<div class='login_message' class="form-control input-lg">${flash.message}</div>
      		</g:if>
      	</div>
      <div class="modal-body">




<div id="edit-user" class="content scaffold-edit" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:userInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${userInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>

				</fieldset>
				<fieldset class="buttons">

					<g:actionSubmit class="btn btn-primary btn-lg btn-block" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
	</div>


   </form>
      </div>

  </div>
  </div>
</div>

<!-- Set New Password - END -->

</div>

</body>
</html>