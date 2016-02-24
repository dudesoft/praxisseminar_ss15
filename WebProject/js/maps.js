define(['leaflet'], function(leaflet) {
    // get rid of global dependencies
    L.noConflict();

    var locationLayer = leaflet.layerGroup();

    var osmAttrib = 'Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors';
    var osm = new leaflet.TileLayer('https://api.tiles.mapbox.com/v4/andipri.0a769b03/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiYW5kaXByaSIsImEiOiJjaWd0c2l0cnMwMGY1dnZrbGV1ZzdhNmwzIn0.MJRx4pntHRsGq17ZJ6xBSQ', {
        minZoom: 3,
        maxZoom: 13,
        attribution: osmAttrib
    });

    var southWest = leaflet.latLng(250, 250),
        northEast = leaflet.latLng(-250, -250),
        bounds = leaflet.latLngBounds(southWest, northEast);

    var map = leaflet.map('main_content', {
        center: [42.135308, 20.52496],
        zoom: 8,
        layers: [osm, locationLayer],
        maxBounds: bounds
    });

    $.ajax({
        type: 'GET',
        url: 'sql/get_locations.php',
        cache: 'true',
        dataType: 'json',
        success: function(response) {
            fillLocationData(response);
        },
        error: function() {
            alert("Fehler beim Laden der Ortsdaten");
        }
    });

    var fillLocationData = function(data) {
        var locationLayer = leaflet.layerGroup();
        console.log("done!");

        data.forEach(function(location) {
            new leaflet.marker([location.latitude, location.longitude]).bindPopup(location.name).addTo(locationLayer);
        })

        locationLayer.addTo(map);
    }
});


// setTravelPath();

// function setTravelPath() {
//   var locationLayer = L.layerGroup();
//   var travelLayer = L.layerGroup();

//   <% @travels.each do |travel| %>
//   var locations = [];
//   <% travel.locations.each do |location| %>
//   locations.push([<%= location.latitude %>, <%= location.longitude %>]);
//   new L.marker(locations[locations.length - 1], {icon: locationIcon}).addTo(locationLayer);
//   <% end %>
//   var poly = new L.Polyline(locations, {
//     color: 'red',
//     weight: 3,
//     opacity: 0.5,
//     smoothFactor: 1
//   }).addTo(locationLayer);
//   if (locations.length > 0) {
//     createTravelMarker(poly).addTo(travelLayer);
//   }
//   <% end %>

//   var root = 'https://nominatim.openstreetmap.org/search.php';

//   var data = $.get(root, {
//     country: "Afghanistan",
//     city: "Kabul",
//     format: "json"
//   }, function () {
//     console.log(data.responseJSON);
//   }, "json")

//   var osmAttrib = 'Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors';
//   var osm = new L.TileLayer('<%= MAPBOX_API %>',
//   {
//     minZoom: 3,
//     maxZoom: 13,
//     attribution: osmAttrib
//   });

//   var southWest = L.latLng(250, 250),
//   northEast = L.latLng(-250, -250),
//   bounds = L.latLngBounds(southWest, northEast);

//   var map = L.map('map', {
//     center: [28.635308, 77.22496],
//     zoom: 8,
//     layers: [osm, locationLayer],
//     maxBounds: bounds
//   });

//   var baseLayers = {
//     "Cities": locationLayer,
//     "Travels": travelLayer
//   };

//   L.control.layers(baseLayers, null).addTo(map);
//   //var p = L.polygon(locations);
// }

// function createTravelMarker(poly) {
//   var marker = new L.marker(poly.getBounds().getCenter(), {icon: travelIcon}).bindPopup("Popup content");
//   marker.on('mouseover', function (e) {
//     this.openPopup();
//   });
//   return marker;
// }
