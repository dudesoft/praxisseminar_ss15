define(['leaflet', './db_connector', './utils'], function(leaflet, db, utils) {
    // get rid of global dependencies
    L.noConflict();
    var map, locationLayer, travelLayer, travelPaths = [];

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
            var travels = {};
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
                var has_images = false;
                var has_songs = false;
                var has_videos = false;

                var marker = new leaflet.marker([location.latitude, location.longitude], {
                    icon: icon
                });
                marker.on('mouseover', function(e) {
                    this.openPopup();
                });

                marker.on('mouseout', function(e) {
                    this.closePopup();
                });

                location.stations.forEach(function(station) {
                    if (typeof travels[station.travel.name] === 'undefined') {
                        travels[station.travel.name] = {
                            'name': station.travel.name,
                            'begin': station.travel.date_begin,
                            'end': station.travel.date_end
                        };
                    }
                    if (typeof travels[station.travel.name].stationList === 'undefined') {
                        travels[station.travel.name].stationList = [];
                    }
                    station.latitude = location.latitude;
                    station.longitude = location.longitude;
                    travels[station.travel.name].stationList.push(station);

                    if (station.has_images) {
                        has_images = true;
                    }
                    if (station.has_songs) {
                        has_songs = true;
                    }
                    if (station.has_videos) {
                        has_videos = true;
                    }
                });

                marker.bindPopup(utils.generatePopup(location, has_images, has_songs, has_videos), customOptions)

                marker.on('click', function(e) {
                    Maps.openNewLocation(location);
                });

                marker.addTo(locationLayer);
            });

            // Build travelMarker
            for (key in travels) {
                var i = Object.keys(travels).indexOf(key);
                pointList = utils.getSortedPointList(travels[key].stationList, data);
                $("#layer_list").append("<li><span class='travel_name centered_anchor' id='to_travel_" + i + "'>" + travels[key].name + "</span></li>");

                travelPaths["to_travel_" + i] = new leaflet.Polyline(pointList, {
                    color: utils.provideColor(i),
                    weight: 2,
                    opacity: 0.3,
                    smoothFactor: 1
                }).addTo(locationLayer);

                $("#to_travel_" + i).click(function(e) {
                    map.fitBounds(travelPaths[e.target.id].getBounds());
                });

                var marker = new leaflet.marker(travelPaths["to_travel_" + i].getBounds().getCenter(), {
                    icon: travelIcon,
                    travel_id: "to_travel_" + i
                }).bindPopup(utils.generateTravelPopup(travels[key]), customOptions);

                marker.on('mouseover', function(e) {
                    this.openPopup();
                });
                marker.on('mouseout', function(e) {
                    this.closePopup();
                });
                marker.on('click', function(e) {
                    map.fitBounds(travelPaths[e.target.options.travel_id].getBounds());
                });
                marker.addTo(travelLayer);
            }
            locationLayer.addTo(map);

            // Hide or show location or travelMarkers depending on zoomLevel
            map.on("zoomend", function(e) {
                if (map.getZoom() >= 7) {
                    map.addLayer(locationLayer);
                    map.removeLayer(travelLayer);
                } else {
                    map.removeLayer(locationLayer);
                    map.addLayer(travelLayer);
                }
            });
        },

        openNewLocation: function(location) {
            if ($("#detail_content").length) {
                $("#detail_content").fadeOut("slow", function() {
                    window.open("station_details.php?station_id=" + location.id, "_self");
                });
            } else {
                if (location.stations.length == 1) {
                    window.open("station_details.php?station_id=" + location.stations[0].id, "_self");
                } else {
                    this.showStationList(location.stations);
                    this.disableMapControls();
                    $("#map_overlay").fadeIn("fast");
                }
            }
        },

        scrollToMapPosition: function(latitude, longitude) {
            map.panTo(new leaflet.LatLng(latitude, longitude), { animate: true, duration: 1.0 });
        },

        showStationList: function(stations) {
            $("#stations").empty();

            $(".overlay_centered").click(function(evt) {
                evt.stopPropagation();
            });

            $("#map_overlay").click(function() {
                $("#map_overlay").fadeOut("slow");
                Maps.enableMapControls();
            });

            stations.forEach(function(station) {
                var availableData = "<div class='available_data'>";

                if (station.has_images) {
                    availableData += "<img class='image_anchor' src='img/img-icon.png'>";
                }
                if (station.has_songs) {
                    availableData += "<img class='audio_anchor' src='img/audio-icon.png'>";
                }
                if (station.has_videos) {
                    availableData += "<img class='video_anchor' src='img/video-icon.png'>";
                }
                availableData += "</div>";

                var buttonElement = "<div class='station_element'>" + station.travel.name + " </br> " + utils.formatDate(station.date) + availableData + "</div>";

                $("#stations").append("<li><a href='station_details.php?station_id=" + station.id + "'>" + buttonElement + "</a></li>");
            });
        },

        disableMapControls: function() {
            map.dragging.disable();
            map.touchZoom.disable();
            map.doubleClickZoom.disable();
            map.scrollWheelZoom.disable();
            map.keyboard.disable();
        },

        enableMapControls: function() {
            map.dragging.enable();
            map.touchZoom.enable();
            map.doubleClickZoom.enable();
            map.scrollWheelZoom.enable();
            map.keyboard.enable();
        }
    };
    return Maps;
});
