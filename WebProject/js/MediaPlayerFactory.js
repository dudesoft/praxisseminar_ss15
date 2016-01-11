define(function() {
    var MediaPlayerFactory = {
        getVideoPlayer: function(src) {
            return "<div id='video'><video controls><source src='" + src + "' type='video/mp4'> Your browser does not support the video tag. </video> </div>";
        },
        getAudioPlayer: function(src) {
            return "<div id='video'> <video><source src = '" + src + "' type = 'video/mp4' > Your browser does not support the video tag. < /video> < /div>";
        }
    };
    return MediaPlayerFactory;
});
