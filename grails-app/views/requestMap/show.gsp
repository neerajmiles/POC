
<%@ page import="com.miles.login.auth.RequestMap" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requestMap.label', default: 'RequestMap')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style>
        ol {
            display: block;
            list-style-type: decimal;
            margin-top: 1em;
            margin-bottom: 1em;
            margin-left: 0;
            margin-right: 0;
            padding-left: 590px;
        }
        </style>
	</head>
	<body>

<h3><g:message code="default.show.label" args="[entityName]" /></h3>
		<div  id="show-requestMap" class="well form-search" role="main">

			<g:if test="${flash.message}">
			<div align = "center" class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list requestMap">
			<table border="1" style="width:100%">
				<g:if test="${requestMapInstance?.url}">
				<tr>
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="requestMap.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${requestMapInstance}" field="url"/></span>
					
				</li>
				</tr>
				</g:if>
			
				<g:if test="${requestMapInstance?.configAttribute}">
				<p><li class="fieldcontain">
					<span id="configAttribute-label" class="property-label"><g:message code="requestMap.configAttribute.label" default="Config Attribute" /></span>
					
						<span class="property-value" aria-labelledby="configAttribute-label"><g:fieldValue bean="${requestMapInstance}" field="configAttribute"/></span>
					
				</li></p>
				</g:if>
			</table>

			<g:form url="[resource:requestMapInstance, action:'delete']" method="DELETE">
				<fieldset align="center" class="buttons">
					<g:link class="btn" action="edit" resource="${requestMapInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</ol>
		</div>
		<div class="nav" role="navigation">
        			<ul>
        				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        				<g:link class="btn" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
        			</ul>
        		</div>
	</body>
</html>
