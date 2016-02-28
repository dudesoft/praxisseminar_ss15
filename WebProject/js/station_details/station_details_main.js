define(['jquery', 'station_details/MediaPlayerFactory', 'maps', 'db_connector', 'popover_header', 'sly', 'colorbox'], function($, factory, map, connector) {

    var StationDetails = {
        setupUI: function() {


            map.setupMap('mini_map');
        },

        setupDetails: function(location) {
            connector.getLocationDetails(location, function(data) {
                map.scrollToMapPosition(data.latitude, data.longitude);

                for (var i = 0; i < data.images.length; i++) {
                    $('#pic_gallery_content').append("<li class='picture'> <img src='" + data.images[i] + "' class='gallery-picture'> </li>");
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
