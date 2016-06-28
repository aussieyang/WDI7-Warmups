"use strict";
var myResults = [ {name: "six pack of beer", location: {lat: 37.767182, long: -122.5}},
        {name: "whacky glasses", location: {lat: 37.767182, long: -122.51}},
        {name: "whiskey bottle", location: {lat: 37.767282, long: -122.49}},
        {name: "diving goggles", location: {lat: 37.770282, long: -122.503}},
        {name: "running shoes", location: {lat: 37.7669, long: -122.457}},
        {name: "paint brushes", location: {lat: 37.76800, long: -122.4580}}]

// Pick your location
// var myLocation = {lat: 37.712, long: -122.569};
//var myLocation = {lat: 37.75, long: -122.5};
// var myLocation = {lat: 37.8, long: -122.6};
// var myLocation = {lat: 37.7, long: -122.4};
 var myLocation = myResults[myResults.length - 1].location

//Array with with elements that can be sorted by distance
var sortable=[];

for (var i = myResults.length - 1; i >= 0; i--) {
  var distance = Math.abs(myLocation.lat - myResults[i].location.lat) +
    Math.abs(myLocation.long-myResults[i].location.long);

  var placeWithDistance = {
    "place": myResults[i].name,
    "distance": distance
  };
  sortable.push(placeWithDistance);
}

var sortedLocations = sortable.sort(function(a, b) {
    return a.distance - b.distance;
});

console.log(sortedLocations);
