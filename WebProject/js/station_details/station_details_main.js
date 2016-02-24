require(['jquery', 'station_details/MediaPlayerFactory', 'maps', 'popover_header', 'sly', 'colorbox'], function($, factory, map) {
    $(".gallery").click(function() {
        $.colorbox({
            html: factory.getVideoPlayer("big_buck_bunny.mp4")
        });
    });

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

    map.setupMap('mini_map');
});
