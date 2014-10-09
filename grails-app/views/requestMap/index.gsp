
<%@ page import="com.miles.login.auth.RequestMap" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requestMap.label', default: 'RequestMap')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

		<style>
        table a:link {
        	color: #666;
        	font-weight: bold;
        	text-decoration:none;
        }
        table a:visited {
        	color: #999999;
        	font-weight:bold;
        	text-decoration:none;
        }
        table a:active,
        table a:hover {
        	color: #bd5a35;
        	text-decoration:underline;
        }
        table {
        	font-family:Arial, Helvetica, sans-serif;
        	color:#666;
        	font-size:12px;
        	text-shadow: 1px 1px 0px #fff;
        	background:#eaebec;
        	margin:20px;
        	border:#ccc 1px solid;

        	-moz-border-radius:3px;
        	-webkit-border-radius:3px;
        	border-radius:3px;

        	-moz-box-shadow: 0 1px 2px #d1d1d1;
        	-webkit-box-shadow: 0 1px 2px #d1d1d1;
        	box-shadow: 0 1px 2px #d1d1d1;
        }
        table th {
        	padding:21px 25px 22px 25px;
        	border-top:1px solid #fafafa;
        	border-bottom:1px solid #e0e0e0;

        	background: #ededed;
        	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
        	background: -moz-linear-gradient(top,  #ededed,  #ebebeb);
        }
        table th:first-child {
        	text-align: left;
        	padding-left:20px;
        }
        table tr:first-child th:first-child {
        	-moz-border-radius-topleft:3px;
        	-webkit-border-top-left-radius:3px;
        	border-top-left-radius:3px;
        }
        table tr:first-child th:last-child {
        	-moz-border-radius-topright:3px;
        	-webkit-border-top-right-radius:3px;
        	border-top-right-radius:3px;
        }
        table tr {
        	text-align: center;
        	padding-left:20px;
        }
        table td:first-child {
        	text-align: left;
        	padding-left:20px;
        	border-left: 0;
        }
        table td {
        	padding:18px;
        	border-top: 1px solid #ffffff;
        	border-bottom:1px solid #e0e0e0;
        	border-left: 1px solid #e0e0e0;

        	background: #fafafa;
        	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
        	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
        }
        table tr.even td {
        	background: #f6f6f6;
        	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
        	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
        }
        table tr:last-child td {
        	border-bottom:0;
        }
        table tr:last-child td:first-child {
        	-moz-border-radius-bottomleft:3px;
        	-webkit-border-bottom-left-radius:3px;
        	border-bottom-left-radius:3px;
        }
        table tr:last-child td:last-child {
        	-moz-border-radius-bottomright:3px;
        	-webkit-border-bottom-right-radius:3px;
        	border-bottom-right-radius:3px;
        }
        table tr:hover td {
        	background: #f2f2f2;
        	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
        	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);
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
