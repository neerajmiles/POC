
<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>

		<div class="row vertical-center-row" role="main">
		<form action="/loginApp/user/search" method='POST' id="searchForm" class="navbar-form navbar-left">
                       <div class="input-group">
                           <input name="user" id="user" type="user" placeholder="Search..." class="form-control" />
                           <div class="input-group-btn">
                               <button class="btn btn-info">
                               <span class="glyphicon glyphicon-search"></span>
                               </button>
                           </div>
                       </div>
                    </form>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<g:if test="${!userInstanceList}">
			  <div class="alert alert-error">
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <font size="3" color="red">No Search result to show!</font>
                        </div>
			</g:if>

			<g:if test="${userInstanceList}">
			<table>
			<thead>
					<tr>

						<g:sortableColumn property="username" title="${message(code: 'user.username.label', default: 'Username')}" />

						<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />

						<g:sortableColumn property="accountExpired" title="${message(code: 'user.accountExpired.label', default: 'Account Expired')}" />

						<g:sortableColumn property="accountLocked" title="${message(code: 'user.accountLocked.label', default: 'Account Locked')}" />

						<g:sortableColumn property="enabled" title="${message(code: 'user.enabled.label', default: 'Enabled')}" />

						<g:sortableColumn property="passwordExpired" title="${message(code: 'user.passwordExpired.label', default: 'Password Expired')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "username")}</g:link></td>

						<td>${fieldValue(bean: userInstance, field: "password")}</td>

						<td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>

						<td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>

						<td><g:formatBoolean boolean="${userInstance.enabled}" /></td>

						<td><g:formatBoolean boolean="${userInstance.passwordExpired}" /></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			</g:if>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>