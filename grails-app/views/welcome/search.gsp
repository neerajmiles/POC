<%@ page import="com.miles.login.auth.User" %>
<%@ page import="grails.converters.JSON" %>
<!DOCTYPE html>
<html ng-app="myApp">


<head>

    <g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
          <asset:javascript src="jquery-1.10.2.min.js"/>
          <asset:javascript src="app.js"/>
          <asset:javascript src="DropTargetDirective.js"/>
          <asset:javascript src="DraggableDirective.js"/>
          <asset:javascript src="MainController.js"/>
          <asset:javascript src="angularjs.js"/>
          <asset:javascript src="ng-grid.min.js"/>
          <asset:javascript src="search.js"/>
          <asset:stylesheet href="angular_css.css"/>
          <asset:stylesheet href="ng-grid.css"/>



    <style lang="css">
       .gridStyle {
        border: 1px solid rgb(212,212,212);
        width: 800px;
        height: 300px
        }
    </style>
<script language="javascript">
            var app = angular.module('myApp', ['ngGrid']);
            function gridController($scope, $http) {
                     $http.get('/loginApp/welcome/search').
                     success(function(data) {
                       $scope.users = data;
                     });
                     $scope.gridOptions = {
                            data: 'users',
                            enableRowSelection: false,
                            enableCellEditOnFocus: true,
                            multiSelect: false,

                           columnDefs: [
                              { field: 'class', displayName: 'Class', enableCellEdit: false } ,
                              { field: 'id', displayName: 'ID', enableCellEdit: false },
                              { field: 'accountExpired', displayName: 'AccountExpired', enableCellEdit: false },
                              { field: 'accountLocked', displayName: 'AccountLocked', enableCellEdit: false },
                              { field: 'email', displayName: 'Email', enableCellEdit: false },
                              { field: 'enabled', displayName: 'Enabled', enableCellEdit: false }

                            ]

                          };
                     }


        </script>
    </head>
<body ng-controller="gridController">
    <div class="gridStyle" ng-grid="gridOptions"></div>
        <form method="post" name="form" class="well form-search">
            <button type="submit" class="btn" ng-click="getRecords()">Search Results..!!</button>
            <p id="demo"></p>
        </form>
    </div>
</body>
</html>

