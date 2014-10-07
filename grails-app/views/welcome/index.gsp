<!DOCTYPE html>
<html data-ng-app="dd">

    <head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.15/angular.min.js"></script>

<g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />
      <asset:javascript src="jquery-1.10.2.min.js"/>
      <asset:javascript src="app.js"/>
      <asset:javascript src="DropTargetDirective.js"/>
      <asset:javascript src="DraggableDirective.js"/>
      <asset:javascript src="MainController.js"/>




    <style lang="css">
        #main {

        }

        #items {
            left: 60px;
            top : 50px;

        }

        #dropbox {
            left: 1150px;
            top : 50px;
        }

        #items, #dropbox {
            position: absolute;
            width: 200px;
            min-height: 260px;
            border: 2px solid black;
        }

        div.item {
            float: left;
            min-width: 160px;
            min-height: 30px;
            border: 2px solid rgb(5,161,245);
            margin: 10px;
            cursor: pointer;
            font-weight: bold;
        }
    </style>

   <style>
   #div1
   {float:left; width:250px; height:35px; margin:50px;padding:50px;border:10px solid #aaaaaa;}
   #div2
   {float:right; width:250px; height:35px; margin:50px;padding:50px;border:10px solid #aaaaaa;}
   </style>
    <g:set var="entityName" value="${message(code: 'welcome.label', default: 'Welcome')}" />

        <asset:javascript src="angular_js.js"/>
        <asset:stylesheet href="angular_css.css"/>
        <asset:javascript src="search.js"/>
        <asset:javascript src="jquery-1.10.2.min.js"/>

    </head>

    <body>

<div id="main" ng-controller="MainController">
        <div id="items">
            <div style="border-bottom: 2px solid black">
                <b>Items</b> <button ng-click="showItmesLeft()">count</button>
            </div>
            <div ng-repeat="item in items">
                <!-- usage of the Draggable directive -->
                <div dd-draggable="true" class="item" itemid="{{item.id}}">{{item.id}}. {{item.name}}</div>
            </div>
        </div>
        <!-- usage of the DropTarget directive -->
        <div id="dropbox" dd-drop-target="true">
            <div style="border-bottom: 2px solid black">
                <b>Dropbox</b> <button ng-click="showItmesDropped()">count</button>
            </div>
            <div ng-repeat="item in dropped">
                <div class="item">{{item.id}}. {{item.name}}</div>
            </div>
        </div>

    </div>
<div ng-controller="SearchCtrl">
	<form method="post" name="form" class="well form-search">
	 <h3>Welcome!</h3><br>
     &nbsp<font color="white"><sec:username /> (<g:link controller="logout"> <font color="white">Sign Out</font> </g:link>)

                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}"><font color="white"><g:message code="default.home.label"/></font></a></li>
                    <li><g:link class="create" action="create"><font color="white"><g:message code="New User" args="[entityName]" /></font></g:link></li>
                </ul>
		<label>Search :</label>
		<input name="user" id="user" type="text" required  ng-model="keywords" class="input-medium search-query" placeholder="Keywords...">

		  <button type="submit" class="btn" ng-click="search()">Go!</button>

    </form>

</div>

<div class="thumbnail" data-drop="true" data-jqyoui-options ng-model="list2" jqyoui-droppable style='height:50px;'>
  <div class="btn btn-success" data-drag="false" data-jqyoui-options ng-model="list2" jqyoui-draggable ng-hide="!list2.title">{{list2.title}}</div>
</div>

<script>

function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text/html", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text/html");
    ev.target.appendChild(document.getElementById(data));
}

function SearchCtrl($window,$scope, $http) {


	// The function that will be executed on button click (ng-click="search()")
	$scope.search = function()
        {

		var searchval = $("input[name=user]").val();
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
             	link = "/loginApp/welcome/search"
            	$window.location.href = link;

   }


	};
}




</script>

        <!-- The single AngularJS include -->
        <script src="http://cdnjs.cloudflare.com/ajax/libs/angular.js/1.0.5/angular.min.js"></script>


<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
  <img src="/loginApp/assets/miles_logo.png" draggable="true" ondragstart="drag(event)" id="drag1" width="290" height="50">

</div>

<div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>




<script>
// MainController.js file
var MainController= function ($scope) {
    // array for dropped items
    $scope.dropped = [];

    // array of items for dragging
    $scope.items = [
        {id: 1, name: "Java"},
        {id: 2, name: "Groovy" },
        {id: 3, name: "Grails" },
        {id: 4, name: "Liferay" }
    ];

    $scope.moveToBox = function(id) {

        for (var index = 0; index < $scope.items.length; index++) {

            var item = $scope.items[index];

            if (item.id == id) {
                // add to dropped array
                $scope.dropped.push(item);

                // remove from items array
                $scope.items.splice(index, 1);
            }
        }

        $scope.$apply();
    };

    $scope.showItmesLeft = function () {
        alert($scope.items.length + " items left.");
    };

    $scope.showItmesDropped = function () {
        alert($scope.dropped.length + " items in drop-box.");
    };
};
// DropTargetDirective.js
var DropTarget= function () {

    return {
        restrict: "A",
        link: function (scope, element, attributes, ctlr) {

            element.bind("dragover", function(eventObject){
                eventObject.preventDefault();
            });

            element.bind("drop", function(eventObject) {

                // invoke controller/scope move method
                scope.moveToBox(parseInt(eventObject.originalEvent.dataTransfer.getData("text")));

                // cancel actual UI element from dropping, since the angular will recreate a the UI element
                eventObject.preventDefault();
            });
        }
    };
}
// app.js
angular.module("dd", [])
    .directive("ddDraggable", Draggable)
    .directive("ddDropTarget", DropTarget);
// DraggableDirective.js
var Draggable = function () {

    return {
        restrict: "A",
        link: function(scope, element, attributes, ctlr) {
            element.attr("draggable", true);

            element.bind("dragstart", function(eventObject) {
                eventObject.originalEvent.dataTransfer.setData("text", attributes.itemid);
            });
        }
    };
}
</script>

 </body>
</html>