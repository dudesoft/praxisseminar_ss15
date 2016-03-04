define([], function() {
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
        }
    };
    return Utils;
});
