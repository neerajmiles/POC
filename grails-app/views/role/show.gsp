
<%@ page import="com.miles.login.auth.Role" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
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
		<div id="show-role" class="well form-search" role="main">

			<g:if test="${flash.message}">
			<div align ="center" class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list role">
			
				<g:if test="${roleInstance?.authority}">
				<li class="fieldcontain">
					<span id="authority-label" class="property-label"><g:message code="role.authority.label" default="Authority" /></span>
					
						<span class="property-value" aria-labelledby="authority-label"><g:fieldValue bean="${roleInstance}" field="authority"/></span>
					
				</li>
				</g:if>
			<p><g:form url="[resource:roleInstance, action:'delete']" method="DELETE">
            				<fieldset  class="buttons">
            					<g:link class="btn" action="edit" resource="${roleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            					<g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            				</fieldset>
            </g:form></p>
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
