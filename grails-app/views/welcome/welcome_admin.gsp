
<%@ page import="com.miles.Welcome" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>


		<h1 class="list-welcome" role="navigation" align="right">
		Hello <sec:username /> (<g:link controller="logout">sign out</g:link>)
		<sec:ifAnyGranted roles="ROLE_ADMIN">
                <h3>You are logged in as a Admin.</h3>
        </sec:ifAnyGranted>
        <sec:ifAnyGranted roles="ROLE_USER">
                        <h3>You are logged in as a USER.</h3>
        </sec:ifAnyGranted>

		</h1>


		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-welcome" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

					</tr>
			 </thead>
				<tbody>
				<g:each in="${welcomeInstanceList}" status="i" var="welcomeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${welcomeInstanceCount ?: 0}" />
			</div>
		</div>
		       
	</body>
</html>
