define(['jquery', './media_player_factory', './maps', './db_connector', './utils', './search_bar', 'jquery_ui', 'sly', 'colorbox', 'bootstrap'], function($, factory, map, connector, utils) {
    var activeElementClass = "active_element";
    var subActiveElementClass = "sub_active_element";
    var urlKey = "url";
    var tableNameKey = "table";
    var idKey = "id";

    var picSly;
    var audioSly;
    var vidSly;

    var $activeElement;
    var $activePlayerElement;
    var $activeTab;


    var subActiveElements = {
        $activeImage: null,
        $activeSong: null,
        $activeVideo: null
    }

    var urlVars;
    var StationDetails = {
        setupDetails: function() {
            urlVars = utils.getUrlVars();
            this.setupTabs();

            connector.getLocationDetails(urlVars.station_id, function(data) {
                $("#location").html(utils.buildLocationName(data) + " - " + data.travelname);
                $("#time").html(utils.formatDate(data.date));
                $("#loader_container").fadeOut("fast");
                $("#detail_content").fadeIn("slow", function() {
                    map.scrollToMapPosition(data.latitude, data.longitude);
                });

                connector.getNextPrevStation(data.travel, data.date, function(stations) {
                    if (!stations.next) {
                        $("#next_diary").hide();
                    } else {
                        $("#next_diary").click(function() {
                            map.openNewLocation(stations.next);
                        });
                    }

                    if (!stations.previous) {
                        $("#prev_diary").hide();
                    } else {
                        $("#prev_diary").click(function() {
                            map.openNewLocation(stations.previous);
                        });
                    }
                });

                map.setupMap('map_content');

                for (var i = 0; i < data.images.length; i++) {
                    $galleryElement = $("<li class='picture'> <img src='" + data.images[i].thumb_url + "' class='gallery-picture'> </li>");
                    $galleryElement.data(urlKey, data.images[i].url);
                    $galleryElement.data(idKey, data.images[i].id);
                    $galleryElement.data(tableNameKey, "images");
                    if (i == 0) {
                        subActiveElements.$activeImage = $galleryElement;
                    }
                    $galleryElement.click(function(event) {
                        StationDetails.changeActiveElement($(event.target));
                    });
                    $('#pic_gallery_content').append($galleryElement);
                }

                for (var i = 0; i < data.songs.length; i++) {
                    $galleryElement = $("<li class='audio'></li>");
                    $galleryElement.data(urlKey, data.songs[i].url);
                    $galleryElement.data(idKey, data.songs[i].id);
                    $galleryElement.data(tableNameKey, "songs");
                    if (i == 0) {
                        subActiveElements.$activeSong = $galleryElement;
                        $activePlayerElement = $galleryElement;
                    }
                    $galleryElement.click(function(event) {
                        activePlayerElement = $(event.target);
                        StationDetails.changeActiveElement($(event.target));
                    });
                    $galleryElement.attr('title', data.songs[i].title);
                    $('#audio_gallery_content').append($galleryElement);
                }

                for (var i = 0; i < data.videos.length; i++) {
                    $galleryElement = $("<li class='video'></li>");
                    $galleryElement.data(urlKey, data.videos[i].url);
                    $galleryElement.data(idKey, data.videos[i].id);
                    $galleryElement.data(tableNameKey, "videos");
                    if (i == 0) {
                        subActiveElements.$activeVideo = $galleryElement;
                        $activePlayerElement = $galleryElement;
                    }
                    $galleryElement.click(function(event) {
                        activePlayerElement = $(event.target);
                        StationDetails.changeActiveElement($(event.target));
                    });
                    $('#vid_gallery_content').append($galleryElement);
                }

                if (data.images.length != 0) {
                    $("#image_not_available").remove();
                    $("#img_tab_not_available").remove();
                } else {
                    $("#pic_tab").unbind();
                    $("#pic_tab").attr("title", "nicht verfügbar");
                }

                if (data.songs.length != 0) {
                    $("#audio_not_available").remove();
                    $("#player_tab_not_available").remove();
                }
                if (data.videos.length != 0) {
                    $("#video_not_available").remove();
                    $("#player_tab_not_available").remove();
                }
                if (data.videos.length == 0 && data.songs.length == 0) {
                    $("#player_tab").unbind();
                    $("#pic_tab").attr("title", "nicht verfügbar");
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
                    });
                });

                StationDetails.setSubActiveElements();
                $activeTab = $('#map_tab');
                if (urlVars.resultType && urlVars.objectId) {
                    StationDetails.setFocusOnElement(urlVars.objectId, urlVars.resultType)
                }

                $('#backward_pic').click(function(event) {
                    StationDetails.setFocusOnPrevNextElement("images", -1);
                });
                $('#backward_audio').click(function(event) {
                    StationDetails.setFocusOnPrevNextElement("songs", -1);
                });
                $('#backward_vid').click(function(event) {
                    StationDetails.setFocusOnPrevNextElement("videos", -1);
                });
                $('#forward_pic').click(function(event) {
                    StationDetails.setFocusOnPrevNextElement("images", 1);
                });
                $('#forward_audio').click(function(event) {
                    StationDetails.setFocusOnPrevNextElement("songs", 1);
                });
                $('#forward_vid').click(function(event) {
                    StationDetails.setFocusOnPrevNextElement("videos", 1);
                });
            });
        },

        setupTabs: function() {
            var $items = $('.tabs');
            $('#pic_content').hide();
            $('#player_content').hide();
            $items.click(function(event) {
                StationDetails.activateTab($(event.target), true);
            });
            connector.getMetaInformation(urlVars.station_id, "stations", this.updateTextField);
        },

        activateTab: function($tab, clickedTab) {
            if (!$activeTab.is($tab)) {
                $activeTab = $tab;
                var $items = $('.tabs');
                $items.removeClass('selected');
                $tab.addClass('selected');
                var index = $items.index($tab);
                $('.tab_content').hide().eq(index).show();

                if (clickedTab) {
                    this.clickedOnTab($tab);
                }
            }
        },

        clickedOnTab: function($tab) {
            if ($tab.attr('id') == "map_tab") {
                connector.getMetaInformation(urlVars.station_id, "stations", this.updateTextField);
                $activeElement.removeClass(activeElementClass);
                StationDetails.changeSubActiveElement($activeElement);
                $activeElement = null;
            }
            if ($tab.attr('id') == "pic_tab") {
                StationDetails.changeActiveElement(subActiveElements.$activeImage);
            }
            if ($tab.attr('id') == "player_tab") {
                StationDetails.changeActiveElement($activePlayerElement);
            }
        },

        changeActiveElement: function($newActiveElement) {
            if ($newActiveElement != null && !$newActiveElement.is($activeElement)) {
                if ($activeElement != null) {
                    $activeElement.removeClass(activeElementClass);
                    if ($newActiveElement.data(tableNameKey) != $activeElement.data(tableNameKey)) {
                        this.changeSubActiveElement($activeElement);
                    }
                    $activeElement = $newActiveElement;
                    $.each(subActiveElements, function(key, value) {
                        if (value != null && value.data(tableNameKey) == $activeElement.data(tableNameKey)) {
                            value.removeClass(subActiveElementClass);
                        }
                    });
                    $activeElement.removeClass(subActiveElementClass);
                    $activeElement.addClass(activeElementClass);
                } else {
                    $activeElement = $newActiveElement;
                    $.each(subActiveElements, function(key, value) {
                        if (value != null && value.data(tableNameKey) == $activeElement.data(tableNameKey)) {
                            value.removeClass(subActiveElementClass);
                        }
                    });
                    $activeElement.addClass(activeElementClass);
                }
            }
            this.updatePreviewField($activeElement.data(idKey), $activeElement.data(urlKey), $activeElement.data(tableNameKey));
        },

        setSubActiveElements: function() {
            $.each(subActiveElements, function(key, value) {
                if (value != null) {
                    value.addClass(subActiveElementClass);
                }
            });
        },

        changeSubActiveElement: function($element) {
            $element.addClass(subActiveElementClass);
            $.each(subActiveElements, function(key, value) {
                if (value != null && value.data(tableNameKey) == $element.data(tableNameKey)) {
                    subActiveElements[key] = $element;
                    if ($element.data(tableNameKey) == "songs" || $element.data(tableNameKey) == "videos") {
                        $activePlayerElement = $element;
                    }
                }
            });
        },

        updatePreviewField: function(id, url, tableName) {
            connector.getMetaInformation(id, tableName, this.updateTextField);
            if (tableName == "images") {
                $("#pic_content").empty();
                $image = factory.getPicture(url);
                $image.click(function(event) {
                    StationDetails.openColorBoxImagePreview($(event.target));
                });
                $("#pic_content").append($image);
                this.activateTab($('#pic_tab'), false);
            }
            if (tableName == "songs") {
                $("#player_content").empty();
                $("#player_content").append(factory.getAudioPlayer(url));
                this.activateTab($('#player_tab'), false);
            }
            if (tableName == "videos") {
                $("#player_content").empty();
                $("#player_content").append(factory.getVideoPlayer(url));
                this.activateTab($('#player_tab'), false);
            }
        },

        updateTextField: function(data) {
            $list = $("#attribute_list");
            $list.fadeOut("fast", function() {
                $list.empty();
                var dataSet = false;
                Object.keys(data).forEach(function(key, index) {
                    if (data[key] != "" && utils.translateColumnTitles(key) != null && data[key] != null) {
                        $list.append($("<tr><td class='first_column'>" + utils.translateColumnTitles(key) + "</td><td class='second_column'> " + data[key] + "</td></tr>"));
                        dataSet = true;
                    }
                });
                if (!dataSet) {
                    $list.html("Es sind keine Daten für dieses Element vorhanden");
                }
                $list.fadeIn("fast");
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
                        if (picSly != null) {
                            picSly.toCenter($element);
                        }
                    }
                }
            }
            if (dataType == "songs") {
                galleryItems = $('#audio_gallery_content').children();
                for (var i = 0; i < galleryItems.length; i++) {
                    if ($(galleryItems[i]).data(idKey) == id) {
                        $element = $(galleryItems[i]);
                        if (audioSly != null) {
                            audioSly.toCenter($element);
                        }
                    }
                }
            }
            if (dataType == "videos") {
                galleryItems = $('#vid_gallery_content').children();
                for (var i = 0; i < galleryItems.length; i++) {
                    if ($(galleryItems[i]).data(idKey) == id) {
                        $element = $(galleryItems[i]);
                        if (vidSly != null) {
                            vidSly.toCenter($element);
                        }
                    }
                }
            }
            this.changeActiveElement($element);
        },
        setFocusOnPrevNextElement: function(dataType, value) {
            var galleryItems;

            if (dataType == "images") {
                galleryItems = $('#pic_gallery_content').children();
                if (galleryItems.length == 0) {
                    return;
                }
                if (subActiveElements.$activeImage == null) {
                    this.changeActiveElement($(galleryItems[0]));
                    picSly.toCenter($(galleryItems[0]));
                    return;
                }
                if ($activeElement != null && $activeElement.data(tableNameKey) == "images") {
                    for (var i = 0; i < galleryItems.length; i++) {
                        if ($(galleryItems[i]).is($activeElement)) {
                            if (i + value < 0 || i + value > galleryItems.length - 1) {
                                return;
                            }
                            this.changeActiveElement($(galleryItems[i + value]));
                            picSly.toCenter($(galleryItems[i + value]));
                            return;
                        }
                    }
                }
                for (var i = 0; i < galleryItems.length; i++) {
                    if ($(galleryItems[i]).is(subActiveElements.$activeImage)) {
                        if (i + value < 0 || i + value > galleryItems.length - 1) {
                            return;
                        }
                        this.changeActiveElement($(galleryItems[i + value]));
                        picSly.toCenter($(galleryItems[i + value]));
                        return;
                    }
                }
            }
            if (dataType == "songs") {
                galleryItems = $('#audio_gallery_content').children();
                if (galleryItems.length == 0) {
                    return;
                }
                if (subActiveElements.$activeSong == null) {
                    this.changeActiveElement($(galleryItems[0]));
                    audioSly.toCenter($(galleryItems[0]));
                    return;
                }
                if ($activeElement != null && $activeElement.data(tableNameKey) == "songs") {
                    for (var i = 0; i < galleryItems.length; i++) {
                        if ($(galleryItems[i]).is($activeElement)) {
                            if (i + value < 0 || i + value > galleryItems.length - 1) {
                                return;
                            }
                            this.changeActiveElement($(galleryItems[i + value]));
                            audioSly.toCenter($(galleryItems[i + value]));
                            return;
                        }
                    }
                }
                for (var i = 0; i < galleryItems.length; i++) {
                    if ($(galleryItems[i]).is(subActiveElements.$activeSong)) {
                        if (i + value < 0 || i + value > galleryItems.length - 1) {
                            return;
                        }
                        this.changeActiveElement($(galleryItems[i + value]));
                        audioSly.toCenter($(galleryItems[i + value]));
                        return;
                    }
                }
            }
            if (dataType == "videos") {
                galleryItems = $('#vid_gallery_content').children();
                if (galleryItems.length == 0) {
                    return;
                }
                if (subActiveElements.$activeVideo == null) {
                    this.changeActiveElement($(galleryItems[0]));
                    videoSly.toCenter($(galleryItems[0]));
                    return;
                }
                if ($activeElement != null && $activeElement.data(tableNameKey) == "videos") {
                    for (var i = 0; i < galleryItems.length; i++) {
                        if ($(galleryItems[i]).is($activeElement)) {
                            if (i + value < 0 || i + value > galleryItems.length - 1) {
                                return;
                            }
                            this.changeActiveElement($(galleryItems[i + value]));
                            videoSly.toCenter($(galleryItems[i + value]));
                            return;
                        }
                    }
                }
                for (var i = 0; i < galleryItems.length; i++) {
                    if ($(galleryItems[i]).is(subActiveElements.$activeVideo)) {
                        if (i + value < 0 || i + value > galleryItems.length - 1) {
                            return;
                        }
                        this.changeActiveElement($(galleryItems[i + value]));
                        videoSly.toCenter($$(galleryItems[i + value]));
                        return;
                    }
                }
            }
        },

        openColorBoxImagePreview: function($image) {
            $.colorbox({
                html: "<div id='lightbox_content'><img src='" + $image.attr('src') + "' ></img></div>"
            });
        }
    };
    return StationDetails;
});
