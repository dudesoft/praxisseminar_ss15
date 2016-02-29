define(['leaflet', 'db_connector', 'utils'], function(leaflet, db, utils) {
    // get rid of global dependencies
    L.noConflict();
    var map, locationLayer, travelLayer;

    var Maps = {
        setupMap: function(containerId) {
            locationLayer = leaflet.layerGroup();
            travelLayer = leaflet.layerGroup();

            var osmAttrib = 'Map data © <a href="http://openstreetmap.org">OpenStreetMap</a> contributors';
            var osm = new leaflet.TileLayer('https://api.tiles.mapbox.com/v4/andipri.0a769b03/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiYW5kaXByaSIsImEiOiJjaWd0c2l0cnMwMGY1dnZrbGV1ZzdhNmwzIn0.MJRx4pntHRsGq17ZJ6xBSQ', {
                minZoom: 3,
                maxZoom: 13,
                attribution: osmAttrib
            });

            var southWest = leaflet.latLng(250, 250),
                northEast = leaflet.latLng(-250, -250),
                bounds = leaflet.latLngBounds(southWest, northEast);

            map = leaflet.map(containerId, {
                center: [42.135308, 20.52496],
                zoom: 8,
                layers: [osm, locationLayer],
                maxBounds: bounds
            });

            db.getAllLocations(this.fillLocationData);
        },

        fillLocationData: function(data) {
            var pointList = [];
            var locationMarkerList = [];

            var customOptions = {
                'className': 'custom-popup',
                'closeButton': false,
                'maxWidth': 500
            }

            var icon = leaflet.icon({
                iconUrl: 'js/vendor/leaflet/images/marker-icon.png',
                shadowUrl: 'js/vendor/leaflet/images/marker-shadow.png',
                iconAnchor: [12, 40],
                popupAnchor: [0, -42]
            });

            var travelIcon = leaflet.icon({
                iconUrl: 'img/mapmarker2.png',
                iconAnchor: [32, 64],
                popupAnchor: [0, -64]
            });

            // Build locationMarker
            data.forEach(function(location) {
                var marker = new leaflet.marker([location.latitude, location.longitude], {
                    icon: icon
                }).bindPopup(utils.generatePopup(location), customOptions);
                marker.on('mouseover', function(e) {
                    this.openPopup();
                });

                marker.on('mouseout', function(e) {
                    this.closePopup();
                });

                pointList.push(new leaflet.LatLng(location.latitude, location.longitude));

                marker.on('click', function(e) {
                    if ($("#detail_content").length) {
                        $("#detail_content").fadeOut("fast", function() {
                            window.open("station_details.php?location_id=" + location.id, "_self");
                        });
                    } else {
                        window.open("station_details.php?location_id=" + location.id, "_self");
                    }
                });

                locationMarkerList.push(marker);
            });

            var locationMarkerGroup = leaflet.featureGroup(locationMarkerList);
            locationMarkerGroup.addTo(locationLayer);

            var travelPath = new leaflet.Polyline(pointList, {
                color: 'black',
                weight: 2,
                opacity: 0.3,
                smoothFactor: 1
            });

            // Build travelMarker
            var marker = new leaflet.marker(travelPath.getBounds().getCenter(), {
                icon: travelIcon
            }).bindPopup(utils.generateTravelPopup(), customOptions).addTo(travelLayer);

            marker.on('mouseover', function(e) {
                this.openPopup();
            });

            marker.on('mouseout', function(e) {
                this.closePopup();
            })

            marker.on('click', function(e) {
                map.fitBounds(locationMarkerGroup.getBounds());
            });

            travelPath.addTo(map);
            locationLayer.addTo(map);

            // Hide or show location or travelMarkers depending on zoomLevel
            map.on("zoomend", function(e) {
                if (map.getZoom() >= 7) {
                    map.addLayer(locationLayer);
                    map.addLayer(travelPath);
                    map.removeLayer(travelLayer);
                } else {
                    map.removeLayer(locationLayer);
                    map.removeLayer(travelPath);
                    map.addLayer(travelLayer);
                }
            });
        },

        scrollToMapPosition: function(latitude, longitude) {
            map.panTo(new leaflet.LatLng(latitude, longitude), { animate: true, duration: 2.0 });
        }
    };
    return Maps;
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
