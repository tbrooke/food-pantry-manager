app = angular.module("Donor", ["ngResource"])

app.factory "Donors", ["$resource", ($resource) ->
  $resource("/donors", {}, {update: {method: "PUT"}})
]
app.factory "Donor", ["$resource", ($resource) ->
  $resource("/donors/:id", {id: "@id"}, {update: {method: "GET"}})
]

@DonorCtrl = ["$scope", "Donor", "Donors", ($scope, Donor, Donors) ->
  $scope.donor = Donor.query()
  $scope.donors = Donors.query()

  $scope.addDonor = ->
    donor = Donor.save($scope.newDonor) ->
      $scope.donors.push donor
    $scope.newDonor = {}
]