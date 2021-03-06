<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>

	</head>
	<body>
	<h3><g:message code="Edit User" args="[entityName]" /></h3>
	 <p><div align="center" id="loginModal" class="well form-search" tabindex="-1" role="dialog" aria-hidden="true">
     <div class="modal-dialog">
     <div class="modal-content">

	  <div class="container">

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

				<fieldset class="form-horizontal">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
				     <div class="control-group">
                     <div class="controls">
                    <g:actionSubmit class="btn" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				    </div>
				    </div>
				</fieldset>
			</g:form>

		</div>
		</div>
		</div>
		</div>
	 </div></p>
	</body>
</html>
