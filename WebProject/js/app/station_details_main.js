define(['jquery', './media_player_factory', './maps', './db_connector', './utils', './search_bar', 'sly', 'colorbox'], function($, factory, map, connector, utils) {
    var activeElementClass = "active_element";
    var urlKey = "url";
    var tableNameKey = "table";
    var idKey = "id";

    var picSly;
    var audioSly;
    var vidSly;

    var $activeElement;
    var activeData;
    var StationDetails = {
        setupDetails: function() {
            var urlVars = utils.getUrlVars();

            connector.getLocationDetails(urlVars.station_id, function(data) {
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
                        picSly.toCenter(event.target);
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

                    var options = {
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
                    };
                    picSly = new Sly($('#picture_gallery'), options).init();
                    audioSly = new Sly($('#audio_gallery'), options).init();
                    vidSly = new Sly($('#video_gallery'), options).init();

                    $(window).resize(function(e) {
                        picSly.reload();
                        audioSly.reload();
                        vidSly.reload();
                        picSly.slideTo(14);
                    });
                });

                if (urlVars.resultType && urlVars.objectId) {
                    StationDetails.setFocusOnElement(urlVars.objectId, urlVars.resultType)
                }


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
            Object.keys(data).forEach(function(key, index) {
                if (data[key] != "") {
                    $list.append($("<li>" + key + ": " + data[key] + "</li>"));
                }
            });
        },
        setFocusOnElement: function(id, dataType) {
            var $element;
            var galleryItems;

            if (dataType == "images") {
                galleryItems = $('#pic_gallery_content').children();
                for (var i = 0; i < galleryItems.length; i++) {
                    if ($(galleryItems[i]).data(idKey) == id) {
                        $element = $(galleryItems[i]);
                        if(picSly != null) {
                            picSly.toCenter($element);
                        }
                    }
                }
            }
            if (dataType == "songs") {
                galleryItems = $('#audio_gallery_content').children();
                for (var i = 0; i < galleryItems.length; i++) {
                    console.log($(galleryItems[i]));
                    if ($(galleryItems[i]).data(idKey) == id) {
                        $element = $(galleryItems[i]);
                        if(audioSly != null) {
                            audioSly.toCenter($element);
                        }
                    }
                }
            }
            if (dataType == "videos") {
                galleryItems = $('#vid_gallery_content').children();
                for (var i = 0; i < galleryItems.length; i++) {
                    console.log($(galleryItems[i]));
                    if ($(galleryItems[i]).data(idKey) == id) {
                        $element = $(galleryItems[i]);
                        if(vidSly != null) {
                            vidSly.toCenter($element);
                        }
                    }
                }
            }
            this.changeActiveElement($element);
        }
    };
    return StationDetails;
});
