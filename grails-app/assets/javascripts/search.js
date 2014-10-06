

'use strict';

var myapp = angular.module('myapp', []);

myapp.factory('weatherService', function($http) {
    return {
      getWeather: function() {
        var weather = { temp: {}, clouds: null };
        $http.jsonp('http://api.openweathermap.org/data/2.5/weather?q=india,at&units=metric&callback=JSON_CALLBACK').success(function(data) {
            if (data) {
                if (data.main) {
                    weather.temp.current = data.main.temp;
                    weather.temp.min = data.main.temp_min;
                    weather.temp.max = data.main.temp_max;
                }
                weather.clouds = data.clouds ? data.clouds.all : undefined;
            }
        });

        return weather;
      }
    };
});

myapp.filter('temp', function($filter) {
    return function(input, precision) {
        if (!precision) {
            precision = 1;
        }
        var numberFilter = $filter('number');
        return numberFilter(input, precision) + '\u00B0C';
    };
});

myapp.controller('WeatherCtrl', function ($scope, weatherService) {
    $scope.weather = weatherService.getWeather();
});

myapp.directive('weatherIcon', function() {
    return {
        restrict: 'E', replace: true,
        scope: {
            cloudiness: '@'
        },
        controller: function($scope) {
            $scope.imgurl = function() {
                var baseUrl = 'https://ssl.gstatic.com/onebox/weather/128/';
                if ($scope.cloudiness < 20) {
                    return baseUrl + 'sunny.png';
                } else if ($scope.cloudiness < 90) {
                   return baseUrl + 'partly_cloudy.png';
                } else {
                    return baseUrl + 'cloudy.png';
                }
            };
        },
        template: '<div style="float:left"><img ng-src="{{ imgurl() }}"></div>'
    };
});

function SearchCtrl($scope)
{
	//$scope.url = '/loginApp/welcome/search'; // The url of our search

	// The function that will be executed on button click (ng-click="search()")

	$scope.search = function()
	{
alert( $("input[name=user]").val() );
   var searchval = $scope.form.user.value;
alert(searchval);
   if(!keywords)
   {
      alert("BLANK");
   }
   else
   {

     alert("NOT BLANK");
   }
	//var a= document.getElementById("user").value;
	var searchval = $scope.keywords;
	alert(a);
//$scope.checkform = function(form);

		// Create the http post request
		// the data holds the keywords
		// The request is a JSON request.
		$http.post($scope.url, { "data" : $scope.keywords}).
		success(function(data, status) {
			$scope.status = status;
			$scope.data = data;
			$scope.result = data; // Show result from server in our <pre></pre> element
		})
		.
		error(function(data, status) {
			$scope.data = data || "Request failed";
			$scope.status = status;
		});
	};
}

