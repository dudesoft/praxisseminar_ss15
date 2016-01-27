define(function() {
    var MediaPlayerFactory = {
        getVideoPlayer: function(src) {
            return "<div id='lightbox_content'><div id='video_container'><video controls><source src='" + src + "' type='video/mp4'>Your browser does not support the video tag.</video></div></div>";
        },
        getAudioPlayer: function(src) {
            return "<div id='lightbox_content'><audio controls><source src='" + src + "' type='audio/mp3'>Your browser does not support the audio tag.</audio></div>";
        }
    };
    return MediaPlayerFactory;
});
