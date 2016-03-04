define(['jquery', 'station_details/MediaPlayerFactory', 'maps', 'db_connector', 'utils', 'popover_header', 'sly', 'colorbox'], function($, factory, map, connector, utils) {
    var StationDetails = {
        setupDetails: function(stationId) {
            connector.getLocationDetails(stationId, function(data) {
                $("#location").html(utils.buildLocationName(data));
                $("#loader_container").fadeOut("fast");
                $("#detail_content").fadeIn("slow", function() {
                    map.scrollToMapPosition(data.latitude, data.longitude);
                });

                map.setupMap('mini_map');

                for (var i = 0; i < data.images.length; i++) {
                    $('#pic_gallery_content').append("<li class='picture'> <img src='" + data.images[i] + "' class='gallery-picture'> </li>");
                }

                for (var i = 0; i < data.songs.length; i++) {
                    $('#audio_gallery_content').append("<li class='audio'></li>");
                }

                for (var i = 0; i < data.videos.length; i++) {
                    $('#vid_gallery_content').append("<li class='video'></li>");
                }

                if (data.images.length == 0) {
                    $("#image_not_available").show();
                }

                if (data.songs.length == 0) {
                    $("#audio_not_available").show();
                }

                if (data.videos.length == 0) {
                    $("#video_not_available").show();
                }

                $('#picture_gallery, #audio_gallery, #video_gallery').sly({
                    horizontal: 1,

                    itemNav: 'basic',
                    smart: 1,
                    activateOn: 'click',

                    scrollBy: 1,

                    mouseDragging: 1,
                    swingSpeed: 0.2,

                    dragHandle: 1,

                    speed: 600,
                    startAt: 2
                });
            });
        }
    };

    return StationDetails;
});
