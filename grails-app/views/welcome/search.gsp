<%@ page import="com.miles.login.auth.User" %>
<%@ page import="grails.converters.JSON" %>
<!DOCTYPE html>
<html data-ng-app="dd">


<head>

    <g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
    <style lang="css">

.gridStyle {
border: 1px solid rgb(212,212,212);
width: 1420px;
height: 300px
}
    </style>

    </head>
<body>



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


</script>

<script>
function personController($scope) {

$scope.getRecords = function()
{
var listOfUsers='${listOfUsers as JSON}';
alert(listOfUsers);

    /*console.log(listOfUsers);
     var index;
      var text = "<ul>";
      var fruits = [listOfUsers];
       for (index = 0; index < fruits.length; index++) {
           text += "<li>" + fruits[index] + "</li>";
       }
       text += "</ul>";
       document.getElementById("demo").innerHTML = text;*/

var app = angular.module('dd', ['ngGrid']);
app.controller('MyCtrl', function($scope) {
    $scope.myData = [{name: "Moroni", age: 50},
                     {name: "Tiancum", age: 43},
                     {name: "Jacob", age: 27},
                     {name: "Nephi", age: 29},
                     {name: "Enos", age: 34}];
    $scope.gridOptions = { data: 'myData' };
});


};


}




</script>
<!-- The single AngularJS include -->
              <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>
</body>
</html>

