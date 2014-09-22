<%@ page import="com.miles.login.auth.User" %>



<div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" class="form-control input-lg" required="" value="${userInstance?.username}" disabled="true"/>

</div>

<div class="form-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" class="form-control input-lg" required="" value="" />

</div>








