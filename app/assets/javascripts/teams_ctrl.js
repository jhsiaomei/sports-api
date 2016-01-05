/* global angular */
(function() {
  'use strict';
  angular.module('app').controller('teamsCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/organizations.json').then(function(response) {
        $scope.teams = response.data;
      });
    };

    window.$scope = $scope;
  });
})();