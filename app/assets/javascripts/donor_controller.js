
var app = angular.module("Donor", ["ngResource"]);

app.factory("Donor", [
    "$resource", function($resource) {
        return $resource("/donors/:id", {}, {
            query: {
                method: "GET", isArray:true
            }
        });

//angular.module('Donor', ['ngResource']);

angular.module('donor.services', ['rails']);
angular.module('donor.services').factory('Donor', ['railsResourceFactory', function (railsResourceFactory) {
    return railsResourceFactory({url: '/donors', last_name: 'donor'});
}]);

angular.module('donor.controllers').controller('DonorCtrl', [$scope, 'Book', function ($scope, Donor){
    var donors = Donor.query({last_name: 'Bullard'})
}]);

//app.factory("Donor", function($resource) {
//        return $resource("/donors/:id"), {id: "@id"};
//});
//
//
//
//app.controller("DonorIndexCtrl", function($scope, Donor){
//        Donor.query(function(data) {
//            $scope.donors = data;
//        });
//});
//
//app.controller("DonorShowCtrl", function($scope, Donor) {
//    Donor.get({ id: 1 }, function(data) {
//        $scope.donor = data.donor;
//    });
//
//
//
//function TypeaheadCtrl($scope) {
//
//    $scope.selected = undefined;
//    $scope.donors = ['Bullard', 'Corriher', 'Davis', 'Deal', 'Harding' ];
//}

//this.DonorCtrl = [
//    "$scope", "Donor", "Donors", function($scope, Donor, Donors) {
//        var donor;
//        $scope.donors = Donors.query();
//        $scope.addDonor = function() {};
//        donor = Donor.save($scope.newDonor)(function() {
//            return $scope.donors.push(donor);
//        });
//        return $scope.newDonor = {};
//    }
//];
