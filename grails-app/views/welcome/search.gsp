<%@ page import="com.miles.login.auth.User" %>
<%@ page import="grails.converters.JSON" %>
<!DOCTYPE html>
<html ng-app="myApp">


<head>

        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Dashboard with Off-canvas Sidebar</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


    <g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
          <asset:javascript src="jquery-1.10.2.min.js"/>
          <asset:javascript src="angularjs.js"/>
          <asset:javascript src="ng-grid.min.js"/>
          <asset:javascript src="search.js"/>
          <asset:stylesheet href="angular_css.css"/>
          <asset:stylesheet href="ng-grid.css"/>
          <asset:stylesheet href="bootstrap.min.css"/>


    <style lang="css">

        .gridStyle {
        border: 1px solid rgb(212,212,212);
        width: 800px;
        height: 500px
        }
    </style>
<script language="javascript">

            var app = angular.module('myApp', ['ngGrid']);

            function gridController($scope, $http,$location) {
                     $scope.paramNm=getParameterByName("user");
                     //alert(getParameterByName("user"));
                     $http.get('/loginApp/welcome/search?user='+getParameterByName("user")).
                     success(function(data) {
                       $scope.users = data;
                     });
                     $scope.gridOptions = {
                            data: 'users',
                            enableRowSelection: false,
                            enableCellEditOnFocus: true,
                            multiSelect: false,

                           columnDefs: [
                              { field: 'username', displayName: 'User', enableCellEdit: false } ,
                              { field: 'id', displayName: 'ID', enableCellEdit: false },
                              { field: 'accountExpired', displayName: 'AccountExpired', enableCellEdit: false },
                              { field: 'accountLocked', displayName: 'AccountLocked', enableCellEdit: false },
                              { field: 'email', displayName: 'Email', enableCellEdit: false },
                              { field: 'enabled', displayName: 'Enabled', enableCellEdit: false }

                            ]

                          };
                     }

        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }


function SearchCtrl($window,$scope,$rootScope,$http) {
     $scope.showGridFlag='false';
	// The function that will be executed on button click (ng-click="search()")
	$scope.search = function()
        {

		var searchval = $("input[name=user]").val();
		//alert(searchval);
         var link ="";
           if(searchval=='')
           {
                form.user.focus();
                link = "#"
                document.form.action = link;
                $window.location.href = link;

           }
           else
           {
                        link = "/loginApp/welcome/displaySearch?user="+searchval
                        $window.location.href = link;

           }
      }
	};

        </script>
 </head>
<body ng-controller="gridController" >



<div class="container-fluid" align="center">
<h2 class="sub-header" align="center">Search Result</h2>
<div ng-controller="SearchCtrl">
	<form method="post" name="form" class="well form-search">
	 	<label>Search :</label>
		<input name="user" id="user" type="text" required  ng-model="keywords" class="input-medium search-query" placeholder="Keywords...">
			<button type="submit" class="btn" ng-click="search()">Go!
			</button>
            <div id="basic" class="gridStyle" ng-show="showGridFlag" ng-grid="gridOptions"></div>
    </form>
</div>

      <div class="table-responsive">
            <div class="gridStyle table table-striped" ng-grid="gridOptions"></div>
     </div>

</div>
</body>
</html>

