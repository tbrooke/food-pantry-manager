//var app = angular.module("Donor", ["ngResource"]);
//
//app.factory("Donor", [
//    "$resource", function($resource) {
//        return $resource("/donors/:id", {}, {
//            query: {
//                method: "GET", isArray:true
//            }
//        });
//
////angular.module('Donor', ['ngResource']);
//
//        angular.module('donor.services', ['rails']);
//        angular.module('donor.services').factory('Donor', ['railsResourceFactory', function (railsResourceFactory) {
//            return railsResourceFactory({url: '/donors', last_name: 'donor'});

angular.module('donor', ['ui.bootstrap']);
function TypeaheadCtrl($scope) {

    $scope.selected = undefined;
    $scope.donors = ['Bullard', 'Corriher', 'Deal', 'Jones', 'Eddleman' ];
};