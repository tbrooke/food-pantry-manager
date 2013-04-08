//  Donors Controller
//

angular.module('donor.controllers').controller('DonorCtrl', [$scope, 'Donor', function ($scope, Donor){
    var donors = Donor.query({last_name: 'Bullard'})
}]);

