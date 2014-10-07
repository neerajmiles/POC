<%@ page import="com.miles.login.auth.User" %>
<%@ page import="grails.converters.JSON" %>
<!DOCTYPE html>
<html ng-app="myApp">


<head>

    <g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/ng-grid/2.0.11/ng-grid.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/ng-grid/2.0.11/ng-grid.css"></script>
    <style lang="css">

.gridStyle {
border: 1px solid rgb(212,212,212);
width: 1420px;
height: 300px
}
    </style>
<script language="javascript">
                var app = angular.module('myApp', ['ngGrid']);
                   function Hello($scope, $http) {
                     $http.get('http://localhost:8080/loginApp/welcome/search').
                     success(function(data) {
                       $scope.users = data;
                     });
                     $scope.gridOptions = {
                            data: 'users',
                            enableRowSelection: false,
                            enableCellEditOnFocus: true,
                            multiSelect: false,
                            columnDefs: [
                              { field: 'Class', displayName: 'Class', enableCellEdit: false } ,
                              { field: 'id', displayName: 'ID', enableCellEdit: false },
                              { field: 'accountExpired', displayName: 'ID', enableCellEdit: false },
                              { field: 'accountLocked', displayName: 'ID', enableCellEdit: false },
                              { field: 'email', displayName: 'ID', enableCellEdit: false },
                              { field: 'enabled', displayName: 'ID', enableCellEdit: false }



                            ]
                          };
                     }
        </script>
    </head>
<body ng-controller="Hello">


<div class="gridStyle" ng-grid="gridOptions"></div>
<div ng-app="" ng-controller="personController" class="gridStyle" ng-grid="gridOptions">
<form method="post" name="form" class="well form-search">
<button type="submit" class="btn" ng-click="getRecords()">Search Results..!!</button>
<p id="demo"></p>
</form>
</div>

<script>

$(document).ready(function(){
 var listOfUsers='${listOfUsers as JSON}';
 console.log(listOfUsers);

});




<!-- The single AngularJS include -->
              <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
</body>
</html>

