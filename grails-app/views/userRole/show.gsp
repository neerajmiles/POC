
<%@ page import="com.miles.login.auth.UserRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userRole.label', default: 'UserRole')}" />
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

		<div id="show-userRole" class="well form-search" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list userRole">
			
				<g:if test="${userRoleInstance?.role}">
				<p><li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="userRole.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="role" action="show" id="${userRoleInstance?.role?.id}">${userRoleInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li></p>
				</g:if>

				<g:if test="${userRoleInstance?.user}">
				<p><li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="userRole.user.label" default="User" /></span>
					
				<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${userRoleInstance?.user?.id}">${userRoleInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li></p>
				</g:if>

            <g:form url="[resource:userRoleInstance, action:'delete']" method="DELETE">
                        				<fieldset class="buttons">

          <g:link class="btn" action="edit" resource="${userRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
          <g:actionSubmit class="btn" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        </fieldset>
            </g:form>
			</ol>

		</div>
		<div class="nav" role="navigation">
        			<ul>
        				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        				<li><g:link class="btn" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
        			</ul>
        </div>
	</body>
</html>
