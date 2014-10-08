<%@ page import="com.miles.login.auth.RequestMap" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requestMap.label', default: 'RequestMap')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
<h3><g:message code="default.edit.label" args="[entityName]" /></h3>

		<div align="center" id="edit-requestMap" class="well form-search" role="main">

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${requestMapInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${requestMapInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:requestMapInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${requestMapInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset align="center" class="buttons">
					<g:actionSubmit class="btn" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
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
