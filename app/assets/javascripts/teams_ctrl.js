/* global angular */
(function() {
  'use strict';
  angular.module('app').controller('teamsCtrl', function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/organizations.json').then(function(response) {
        $scope.teams = response.data;
      });
    };

    $scope.toggleVisible = function(inputTeam) {
      inputTeam.bioVisible = !inputTeam.bioVisible;
    };

    $scope.addTeam = function(inputName, inputSchool, inputLogo, inputColor, inputMotto) {
      var team = {
        name: inputName,
        school: inputSchool,
        logo: inputLogo,
        color: inputColor,
        motto: inputMotto
      };
      $http.post('/api/v1/organizations.json', team).then(function(response) {
        console.log(response);
        $scope.errors = '';
        $scope.teams.push(team);
        $scope.newName = '';
        $scope.newSchool = '';
        $scope.newLogo = '';
        $scope.newColor = '';
        $scope.newMotto = '';
      }, function(error) {
        console.log(error);
        $scope.errors = error.data.errors;
      });
    };

    $scope.sortBy = function(inputSortAttribute) {
      $scope.sortAttribute = inputSortAttribute;
      $scope.sortDescending = !$scope.sortDescending;
    };

    window.$scope = $scope;
  });
})();