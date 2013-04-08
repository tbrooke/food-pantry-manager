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




//var app = angular.module("Donor", ["ngResource"]);
//
//app.factory("Donor", [
//    "$resource", function($resource) {
//        return $resource("/donors/:id", {}, {
//            query: {
//                method: "GET", isArray:true
//            }
//        });

//angular.module('Donor', ['ngResource']);
//
//angular.module('donor.services', ['rails']);
//
//angular.module('donor.services').factory('Donor', ['railsResourceFactory', function (railsResourceFactory) {
//    return railsResourceFactory({url: '/donors', lastName: 'donor'}).then(function (donors) {
//        self.donors = donors;
//        return self.references;
//    }
//});



