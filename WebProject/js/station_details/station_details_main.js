define(['jquery', 'station_details/MediaPlayerFactory', 'maps', 'db_connector', 'utils', 'search_bar', 'sly', 'colorbox'], function($, factory, map, connector, utils) {
    var StationDetails = {
        setupDetails: function(stationId) {
            connector.getLocationDetails(stationId, function(data) {
                $("#location").html(utils.buildLocationName(data));
                $("#time").html(data.date);
                $("#loader_container").fadeOut("fast");
                $("#detail_content").fadeIn("slow", function() {
                    map.scrollToMapPosition(data.latitude, data.longitude);
                });

                map.setupMap('mini_map');

                for (var i = 0; i < data.images.length; i++) {
                    $galleryElement = $("<li class='picture'> <img src='" + data.images[i] + "' class='gallery-picture'> </li>");
                    $galleryElement.click(factory.getPictureGallery(data.images[i]));
                    $('#pic_gallery_content').append($galleryElement);
                }

                for (var i = 0; i < data.songs.length; i++) {
                    $galleryElement = $("<li class='audio'></li>");
                    $galleryElement.click(factory.getAudioPlayer(data.images[i]));
                    $('#audio_gallery_content').append($galleryElement);
                }

                for (var i = 0; i < data.videos.length; i++) {
                    $galleryElement = $("<li class='video'></li>");
                    $galleryElement.click(factory.getVideoPlayer(data.images[i]));
                    $('#vid_gallery_content').append($galleryElement);
                }

                if (data.images.length != 0) {
                    $("#image_not_available").remove();
                }

                if (data.songs.length != 0) {
                    $("#audio_not_available").remove();
                }

                if (data.videos.length != 0) {
                    $("#video_not_available").remove();
                }

                $(document).ready(function() {
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
                        startAt: 0
                    });

                    $(window).resize(function(e) {
                        console.log("resize lol");
                        $('#picture_gallery, #audio_gallery, #video_gallery').sly('reload');
                    });
                });

            });
        }
    };
    return StationDetails;
});
