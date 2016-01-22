require(['jquery', 'MediaPlayerFactory', 'popover_header', 'sly', 'colorbox'], function($, factory) {
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
    console.log(factory.getVideoPlayer("/hoerburger/WebProject/big_buck_bunny.mp4"));

    $.colorbox({
        html: factory.getVideoPlayer("big_buck_bunny.mp4")
    });

});
