define(function() {
    var Utils = {
        buildLocationName: function(location) {
            var name = location.name;

            if (location.altname != null) {
                name += ' (' + location.altname + ')';
            }

            return name;
        },

        generatePopup: function(location) {
            var popupHtml = "<span class='centered_anchor'><img class='image_anchor' src='img/img-icon.png'><img class='audio_anchor' src='img/audio-icon.png'>" +
                "<img class='video_anchor' src='img/video-icon.png'></span><span class='centered_anchor'>" + this.buildLocationName(location) + "</span>";
            return popupHtml;
        },

        generateTravelPopup: function() {
            var popupHtml = "<span class='centered_anchor'>" + "Kosovo" + "</span><span class='centered_anchor'>" + "21.4.1943 - 45.6.1943" + "</span>";
            return popupHtml;
        },

        getUrlVars: function() {
            var vars = [],
                hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
        }
    };
    return Utils;
});
