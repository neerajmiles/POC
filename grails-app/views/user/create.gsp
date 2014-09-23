<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		        <asset:javascript src="jquery-1.10.2.min.js"/>
                <asset:javascript src="bootstrap.min.js"/>
                <asset:stylesheet href="bootstrap.min.css"/>
                <asset:stylesheet href="font-awesome.min.css"/>

	</head>
	<body>

		<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">

		<div id="create-user" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<div class="alert alert-error">
            <a href="#" class="close" data-dismiss="alert">&times;</a>
            <font size="3" color="red">
            <ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</font>
			</div>
			</g:hasErrors>
			<g:form url="[resource:userInstance, action:'save']" >

				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
				   <div class="control-group">
				    <div class="controls">
					<g:submitButton class="btn btn-primary btn-lg btn-block" name="create" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				    </div>
				    </div>
				</fieldset>

			</g:form>
			</div>
			</div>
			</div>
		</div>
	</body>
</html>
