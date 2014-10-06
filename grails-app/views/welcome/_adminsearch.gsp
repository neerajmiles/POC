
<%@ page import="com.miles.login.auth.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

		<SCRIPT language=JavaScript>
var link ="";
          function checkform (form)
        {


        	if (form.user.value == "")
        	{
        		alert("Please enter something to search." );

        		form.user.focus();
        		$("listuser").hide();
        		//document.getElementById('list-user').style.display = "none";
        		link = "#"
                document.form.action = link;
        		return false ;
        	}
        	else
        	{
        	//document.getElementById('list-user').style.display = "show";
        	link = "/loginApp/welcome/searchadmin"
        	document.form.action = link;
        	return true ;
        	}

        }
        </SCRIPT>
	</head>
	<body>



		<div class="row vertical-center-row" role="main">

		<form method="post" name="form" id="search-theme-form" action="#" onSubmit="return checkform(form)">
                       <div class="input-group">


                           <div class="input-group-btn" align="center">
                           <input name="user" id="user" type="text" placeholder="Search..." class="form-control" />
                               <button class="btn btn-info" >
                               <span class="glyphicon glyphicon-search">Search</span>
                               </button>
                           </div>

                       </div>
        </form>

		</div>


	</body>
</html>
