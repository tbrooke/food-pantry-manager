this.DonorCtrl = [
    "$scope", "Donor", "Donors", function($scope, Donor, Donors) {
        var donor;
        $scope.donor = Donor.query();
        $scope.donors = Donors.query();
        $scope.addDonor = function() {};
        donor = Donor.save($scope.newDonor)(function() {
            return $scope.donors.push(donor);
        });
        return $scope.newDonor = {};
    }
];

////  Donors Controller

////
//angular.module('donor', ['ui.bootstrap']);
//function TypeaheadCtrl($scope) {
//
//    $scope.selected = undefined;
//    $scope.donors = ['Bullard', 'Corriher', 'Deal', 'Jones', 'Eddleman' ];
//};
////angular.module('donor.controllers').controller('DonorCtrl', [$scope, 'Donor', function ($scope, Donor){
//    var donors = Donor.query({last_name: 'Bullard'})
//}]);

