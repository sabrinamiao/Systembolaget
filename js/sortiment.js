var app = angular.module('myApp', []);
app.controller('sortimentCtrl', function($scope, $http) {
   $http.get("../php/sortimentCtrl.php")
   .then(function (response) {$scope.sortiment = response.data.records;});
});