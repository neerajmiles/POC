
<%@ page import="com.miles.login.auth.UserRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
                        table, th, td {
                            border: 2px solid black;
                            border-collapse: collapse;
                            background-color: #66CCFF;

                        }
                        th, td {
                            padding: 5px;
                        }
        </style>
	</head>
	<body>
	<h3><g:message code="default.list.label" args="[entityName]" /></h3>


		<div align="center" id="list-userRole" class="well form-search" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table border="1" style="width:35%">
			<thead>
					<tr>
					
						<th><g:message code="userRole.role.label" default="Role" /></th>
					
						<th><g:message code="userRole.user.label" default="User" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userRoleInstanceList}" status="i" var="userRoleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userRoleInstance.id}">${fieldValue(bean: userRoleInstance, field: "role")}</g:link></td>
					
						<td>${fieldValue(bean: userRoleInstance, field: "user")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userRoleInstanceCount ?: 0}" />
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
