<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!--
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
        <asset:stylesheet src="application.css"/>
        		<asset:javascript src="application.js"/>

		-->

		        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
                <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
                <asset:javascript src="jquery-1.10.2.min.js"/>
                <asset:javascript src="bootstrap.min.js"/>
                <asset:stylesheet href="bootstrap.min.css"/>
                <asset:stylesheet href="font-awesome.min.css"/>
                <g:layoutHead/>

	</head>
    <div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="miles_logo.png" alt="Grails"/></a></div>

	<body>
	 <nav class="navbar navbar-default" role="navigation">
                       <div>
                          <ul class="nav navbar-nav">
                            <li>
                             <nav:primary/>
                             </li>
                          </ul>
                       </div>
        </nav>


        <div class="table table-bordered table-right datagrid">
        <g:layoutBody/>
        </div>

		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

	</body>
</html>
