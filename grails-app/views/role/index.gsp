
<%@ page import="com.miles.login.auth.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
                table, th, td {
                    border: 2px solid black;
                    border-collapse: collapse;
                    color:white;
                    background-color: #66CCFF;

                }
                th, td {
                    padding: 5px;
                }
        </style>
	</head>
	<body>

<h3><g:message code="default.list.label" args="[entityName]" /></h3>
		<div align="center" id="list-role" class="well form-search" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table border="1" style="width:35%">
			<thead>
					<tr>
					
						<g:sortableColumn property="authority" title="${message(code: 'role.authority.label', default: 'Authority')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${roleInstanceList}" status="i" var="roleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${roleInstance.id}">${fieldValue(bean: roleInstance, field: "authority")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${roleInstanceCount ?: 0}" />
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
