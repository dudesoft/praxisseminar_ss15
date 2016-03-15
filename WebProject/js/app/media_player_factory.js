define(function() {
    var MediaPlayerFactory = {
        getVideoPlayer: function(src) {
            return function() {
                $.colorbox({
                    html: "<div id='lightbox_content'><div id='video_container'><video controls><source src='" + src + "' type='video/mp4'>Your browser does not support the video tag.</video></div></div>"
                });
            };
        },
        getAudioPlayer: function(src) {
            return function() {
                $.colorbox({
                    html: "<div id='lightbox_content'><div id='audio_container'><audio controls><source src='" + src + "' type='audio/mp3'>Your browser does not support the audio tag.</audio></div></div>"
                });
            };
        },
        getPictureGallery: function(src) {
            return function() {
                $.colorbox({
                    html: "<div id='lightbox_content'><div><img id='image_container'src='" + src + "' ></img></div></div>"
                });
            };
        }
    };
    return MediaPlayerFactory;
});
