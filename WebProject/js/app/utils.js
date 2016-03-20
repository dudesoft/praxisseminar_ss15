define(['leaflet'], function(leaflet) {

    var Utils = {
        buildLocationName: function(location) {
            var name = location.name;

            if (location.altname != null) {
                name += ' (' + location.altname + ')';
            }

            return name;
        },

        generatePopup: function(location, has_images, has_songs, has_videos) {
            var image = "img-icon";
            var audio = "audio-icon";
            var video = "video-icon";
            var date = "";

            if (!has_images) {
                image = "no-" + image;
            }
            if (!has_songs) {
                audio = "no-" + audio;
            }
            if (!has_videos) {
                video = "no-" + video;
            }

            if (location.stations.length > 1) {
                date = "<div class='centered_anchor'>" + this.formatDate(location.stations[0].date) + " <i>u.a.</i></div>";
            } else {
                date = "<div class='centered_anchor'>" + this.formatDate(location.stations[0].date) + "</div>";
            }

            var popupHtml = "<span class='centered_anchor'><img class='image_anchor' src='img/" + image + ".png'><img class='audio_anchor' src='img/" + audio + ".png'>" +
                "<img class='video_anchor' src='img/" + video + ".png'></span><span class='centered_anchor'>" + this.buildLocationName(location) + "</span>" + date;
            return popupHtml;
        },

        generateTravelPopup: function(travel) {
            var popupHtml = "<span class='centered_anchor'>" + travel.name + "</span><span class='centered_anchor'>" + this.formatDate(travel.begin) + " - " + this.formatDate(travel.end) + "</span>";
            return popupHtml;
        },

        provideColor: function(i) {
            var color = ["#d9003a", "#00d6e6", "#99737d", "#00e6b8", "#ff80b3", "#408062", "#7f2046",
                "#26332a", "#e600b8", "#0d330d", "#792080", "#50e639", "#311a33", "#d0ffbf", "#cc00ff", "#538020",
                "#d580ff", "#fff240", "#7d7399", "#4c4913", "#c8bfff", "#d9c36c", "#0000ff", "#ffaa00", "#0000d9",
                "#8c5e00", "#0000bf", "#7f6240", "#000073", "#331b00", "#000066", "#ffd9bf", "#233f8c", "#d97736",
                "#000e33", "#332b26", "#0066ff", "#ff4400", "#bfd9ff", "#731f00", "#738799", "#d97b6c", "#0099e6",
                "#7f4840", "#003c59", "#400000", "#268299"
            ];

            return color[i];
        },

        getUrlVars: function() {
            var vars = [],
                hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = decodeURI(hash[1]);
            }
            return vars;
        },

        getSortedPointList: function(stations) {
            stations.sort(function(a, b) {
                return new Date(b.date) - new Date(a.date);
            });

            var latLngList = [];
            stations.forEach(function(station) {
                latLngList.push(new leaflet.LatLng(station.latitude, station.longitude));
            });

            return latLngList;
        },

        formatDate: function(date) {
            if (date == "" || date == null || date == "0000-00-00" || date == (new Date())) {
                return "Datum unbekannt";
            }
            var dateParts = date.split("-");
            return dateParts[2] + "." + dateParts[1] + "." + dateParts[0];
        },

        translateColumnTitles: function(columnTitle) {
            var kvArray = [
                ["title", "Titel"],
                ["genre", "Genre"],
                ["origin", "Ursprung"],
                ["cast", "Besetzung"],
                ["language", "Sprache"],
                ["recording_situation", "Aufnahmesituation"],
                ["function", "Funktion"],
                ["content", "Inhalt"],
                ["interprets", "Interpreten"],
                ["interpret_1", "Interpret 1"],
                ["interpret_2", "Interpret 2"],
                ["interpret_3", "Interpret 3"],
                ["recorded_by", "Aufgenommen von"],
                ["take", "Aufnahme"],
                ["kalusch", "Kalusch"],
                ["attributes", "Attribute"],
                ["take_position", "Aufnahmeposition"],
                ["situation", "Situation"],
                ["musician", "Musiker"],
                ["hoerburger_notes", "Hoerburger Notizen"],
                ["spectators", "Zuschauer"],
                ["comments", "Bemerkung"],
                ["region", "Region"],
                ["collection", "Kollektion"],
                ["latitude", "Breitengrad"],
                ["longitude", "Längengrad"]
            ];
            var translationMap = new Map(kvArray);
            return translationMap.get(columnTitle);
        }
    };
    return Utils;
});