
<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	     <div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" width="whatever" >
          <div class="modal-content" overflow-y="auto">

        <div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-condensed">
			<thead>
			<g:if test="${userInstanceList == null}">

                   <div id="listuser" class="alert alert-error">
                                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                                            <font size="3" color="red">No Search result to show!</font>

                   </div>
               <%
                  System.out.println("Console : "+userInstanceList);
               %>
			 </g:if>
<g:else>
			 <tr>

             						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />


             						<g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />

             						<g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />

             						<g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />

             						<g:sortableColumn property="passwordExpired" title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}" />
             					   <!--
             					   <g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
                                    -->
             </tr>


</g:else>
				</thead>
				<tbody>

				<g:each in="${userInstanceList}" status="i" var="userInstance">




					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<!--<td><g:link action="edit" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
						-->
						<td>
						<g:link action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        </td>

						<td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>

						<td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>

						<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>
                        <td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>
					    <!--
					    <td>${fieldValue(bean: userInstance, field: "password")}</td>
                        -->
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>

		</div>
		</div>
		</div>
	</body>
</html>
