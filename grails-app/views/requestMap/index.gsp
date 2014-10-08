
<%@ page import="com.miles.login.auth.RequestMap" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requestMap.label', default: 'RequestMap')}" />
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

		<div align ="center" id="list-requestMap" class="well form-search" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table border="1" style="width:35%">
			<thead>
					<tr>
					
						<g:sortableColumn property="url" title="${message(code: 'requestMap.url.label', default: 'Url')}" />
					
						<g:sortableColumn property="configAttribute" title="${message(code: 'requestMap.configAttribute.label', default: 'Config Attribute')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${requestMapInstanceList}" status="i" var="requestMapInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${requestMapInstance.id}">${fieldValue(bean: requestMapInstance, field: "url")}</g:link></td>
					
						<td>${fieldValue(bean: requestMapInstance, field: "configAttribute")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${requestMapInstanceCount ?: 0}" />
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
