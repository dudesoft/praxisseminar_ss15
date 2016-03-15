define(['jquery', './media_player_factory', './maps', './db_connector', './utils', './search_bar', 'sly', 'colorbox'], function($, factory, map, connector, utils) {
    var activeElementClass = "active_element";
    var urlKey = "url";
    var tableNameKey = "table";
    var idKey = "id";

    var $activeElement;
    var activeData;
    var StationDetails = {
        setupDetails: function() {
            var stationId = utils.getUrlVars().station_id;

            connector.getLocationDetails(stationId, function(data) {
                $("#location").html(utils.buildLocationName(data));
                $("#time").html(data.date);
                $("#loader_container").fadeOut("fast");
                $("#detail_content").fadeIn("slow", function() {
                    //map.scrollToMapPosition(data.latitude, data.longitude);
                });

                connector.getNextPrevStation(data.travel, data.date, function(stations) {
                    if (!stations.next) {
                        $("#next_diary").hide();
                    } else {
                        $("#next_diary").click(function() {
                            // map.openNewLocation(stations.next);
                        });
                    }

                    if (!stations.previous) {
                        $("#prev_diary").hide();
                    } else {
                        $("#prev_diary").click(function() {
                            //map.openNewLocation(stations.previous);
                        });
                    }
                });

                //map.setupMap('mini_map');



                for (var i = 0; i < data.images.length; i++) {
                    $galleryElement = $("<li class='picture'> <img src='" + data.images[i].url + "' class='gallery-picture'> </li>");
                    //$galleryElement.click(factory.getPictureGallery(data.images[i]));
                    $galleryElement.data(urlKey, data.images[i].url);
                    $galleryElement.data(idKey, data.images[i].id);
                    $galleryElement.data(tableNameKey, "images");
                    $galleryElement.click(function(event) {
                        StationDetails.changeActiveElement($(event.target));
                    });
                    $('#pic_gallery_content').append($galleryElement);
                }

                for (var i = 0; i < data.songs.length; i++) {
                    $galleryElement = $("<li class='audio'></li>");
                    //$galleryElement.click(factory.getAudioPlayer(data.images[i]));
                    $('#audio_gallery_content').append($galleryElement);
                }

                for (var i = 0; i < data.videos.length; i++) {
                    $galleryElement = $("<li class='video'></li>");
                    //$galleryElement.click(factory.getVideoPlayer(data.images[i]));
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
                        $('#picture_gallery, #audio_gallery, #video_gallery').sly('reload');
                    });
                });

            });
        },
        changeActiveElement: function($newActiveElement) {
            if (!$newActiveElement.is($activeElement)) {
                if ($activeElement != null) {
                    $activeElement.removeClass(activeElementClass);
                    $activeElement = $newActiveElement;
                    $activeElement.addClass(activeElementClass);
                } else {
                    $activeElement = $newActiveElement;
                    $activeElement.addClass(activeElementClass);
                }
                this.updatePreviewField($activeElement.data(idKey), $activeElement.data(urlKey), $activeElement.data(tableNameKey));
            }
        },
        updatePreviewField: function(id, url, tableName) {
            connector.getMetaInformation(id, tableName, this.updateTextField);
            $("#mini_map").empty();
            $("#mini_map").append($('<img src="' + url + '"></img>'));
        },
        updateTextField: function(data) {
            $list = $("#attribute_list");
            $list.empty();
            console.log(data);
            Object.keys(data).forEach(function(key, index) {
                if(data[key] != "") {
                    $list.append($("<li>" + key + ": " + data[key] + "</li>"));
                }
            });

        }
    };
    return StationDetails;
});
