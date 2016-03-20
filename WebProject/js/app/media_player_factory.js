define(function() {
    var MediaPlayerFactory = {
        getVideoPlayer: function(src) {
            return $("<video controls><source src='" + src + "' type='video/mp4'>Your browser does not support the video tag.</video>");
        },
        getAudioPlayer: function(src) {
            return $("<audio controls><source src='" + src + "' type='audio/mp3'>Your browser does not support the audio tag.</audio>");
        },
        getPicture: function(src) {
            return $("<img id='preview_image'src='" + src + "' ></img>");
        }
    };
    return MediaPlayerFactory;
});
