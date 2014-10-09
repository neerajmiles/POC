
<%@ page import="com.miles.login.auth.User" %>

<p><div align ="center" class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>

</div>
</p>

<p><div align ="center" class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required" >
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${userInstance?.password}"disabled="true"/>

</div>
</p>

<p><div align ="center" class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="&nbsp&nbsp&nbsp&nbsp&nbsp&nbspEmail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${userInstance?.email}"/>

</div>
</p>




</div>




