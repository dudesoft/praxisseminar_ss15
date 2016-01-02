require(['jquery', 'popover_header', 'sly'], function() {
    $('#picture_galery, #audio_galery, #video_galery').sly({
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
