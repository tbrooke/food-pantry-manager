var app;

app = angular.module("Donor", ["ngResource"]);

app.factory("Donors", [
    "$resource", function($resource) {
        return $resource("/donors", {}, {
            update: {
                method: "PUT"
            }
        });
    }
]);

app.factory("Donor", [
    "$resource", function($resource) {
        return $resource("/donors/:id", {
            id: "@id"
        }, {
            update: {
                method: "GET"
            }
        });
    }
]);

this.DonorCtrl = [
    "$scope", "Donor", "Donors", function($scope, Donor, Donors) {
        var donor;
        $scope.donor = Donor.query();
        $scope.donors = Donors;
        $scope.addDonor = function() {};
        donor = Donor.save($scope.newDonor)(function() {
            return $scope.donors.push(donor);
        });
        return $scope.newDonor = {};
    }
];
