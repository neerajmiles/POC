<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<h3><g:message code="Create New User" args="[entityName]" /></h3>
        <div align="center" id="loginModal" class="well form-search" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
        <div class="modal-content">

		<div id="create-welcome" class="content scaffold-create" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${welcomeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${welcomeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:welcomeInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset  class="buttons">
					<g:submitButton name="create" class="btn" value="${message(code: 'default.button.create.label', default: 'Create')}" /></p>
				</fieldset>
			</g:form>
		    </div>
        	</div>
        	</div>
        </div>
		<div class="nav" role="navigation">
        			<ul>
        				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        			</ul>
        </div>
	</body>
</html>
