
<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
                        table, th, td {
                            border: 2px solid black;
                            border-collapse: collapse;

                            background-color: #e5e5e5;

                        }
                        th, td {
                            padding: 5px;
                        }
        </style>
	</head>
	<body>
	<h3><g:message code="default.list.label" args="[entityName]" /></h3>
	     <div id="loginModal" class="well form-search" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog" width="whatever" >
          <div class="modal-content" overflow-y="auto">

        <div id="list-user" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table align="center" border="1" style="width:50%">
			<thead>
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
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>
					

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
		<div class="nav" role="navigation">
                			<ul>
                				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                				<g:link class="btn" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                			</ul>
        </div>
	</body>
</html>
