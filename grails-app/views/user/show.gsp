
<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>

	</head>
	<body >

	<p><div id="loginModal" class="well form-search" tabindex="-1" role="dialog" aria-hidden="true"></p>
            <div class="modal-dialog">
            <div class="modal-content">
    <div  id="show-user" class="content scaffold-show" role="main">
			<h1 align="left"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">

				<g:if test="${userInstance?.username}">
				<p><li class="fieldcontain">

		<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
		<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>

				</li></p>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<p><li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>

				</li></p>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<p><li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>

						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>

				</li></p>
				</g:if>
			
				<g:if test="${userInstance?.accountExpired}">
				<p><li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span>
					
				</li></p>
				</g:if>
			
				<g:if test="${userInstance?.accountLocked}">
				<p><li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span>
					
				</li></p>
				</g:if>
			
				<g:if test="${userInstance?.enabled}">
				<p><li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span>
					
				</li></p>
				</g:if>
			
				<g:if test="${userInstance?.passwordExpired}">
				<p><li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span>
					
				</li></p>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<p><g:link class="btn" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link></p>


					<sec:ifAnyGranted roles="ROLE_USER">
					<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" disabled="true"/>
					</sec:ifAnyGranted>
                    <fieldset class="buttons">
                    				     <div class="control-group">
                         <div class="controls">
                    <sec:ifAnyGranted roles="ROLE_ADMIN">

                    <g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                    </sec:ifAnyGranted>
                    				    </div>
                    	 </div>
                    </fieldset>

				</fieldset>
			</g:form>
		</div></p>
	</body>
</html>
