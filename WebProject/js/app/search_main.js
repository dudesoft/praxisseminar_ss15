define(['jquery', './db_connector', './utils', './search_bar'], function($, dbConnector, utils) {
    var urlResult_constant = "&resultType=";
    var urlId_constant = "&objectId=";
    var urlVars = utils.getUrlVars();
    var $list = $('#resut_list');

    var baseUrlImages = "/Praxisseminar/WebProject/content/images/thumbnails/";

    var minDateString = "";
    var maxDateString = "";
    var journeyString = "";
    var resultTypeString = "";

    var SearchMain = {
        initSearchMain: function() {
            String.prototype.trunc =
                function(n) {
                    return this.substr(0, n - 1) + (this.length > n ? '&hellip;' : '');
                };

            //Setup Searchheader to show what the User searched for
            if (urlVars.minDate) {
                minDateString = ", min. Datum: " + utils.formatDate(urlVars.minDate);
            }
            if (urlVars.maxDate) {
                maxDateString = ", max. Datum: " + utils.formatDate(urlVars.maxDate);
            }
            if (urlVars.journey) {
                journeyString = ", in Reise: " + urlVars.journey;
            }
            if (urlVars.resultType) {
                resultTypeString = ", Suche nach: " + utils.translate(urlVars.resultType);
            }

            //Connect To Database and get result list
            dbConnector.getSearchResult(urlVars.search, urlVars.minDate, urlVars.maxDate, urlVars.journey, urlVars.resultType, this.setupResultList);
        },
        setupResultList: function(data) {
            $("#search_in_progress").hide();

            for (var i = 0; i < data.length; i++) {
                SearchMain.addListElement(data[i]);
            }
            $('#title').html(data.length + ' Ergebnisse für: "' + urlVars.search.replace('<', '&lt') + '"' + journeyString + minDateString + maxDateString + resultTypeString);
        },
        addListElement: function(object) {
            var resultUrlAddition = "";
            var idUrlAddition = "";
            var iconURL = "";
            var availableData = "";

            var resultType = "";

            //Check for Element Type
            if (object.table_name == "songs") {
                resultType = "result_type_audio";
                resultUrlAddition = urlResult_constant + "songs";
                iconURL = "img/audio-icon-black.png";
            }
            if (object.table_name == "images") {
                resultType = "result_type_image"
                resultUrlAddition = urlResult_constant + "images";
                iconURL = baseUrlImages + object.url;
            }
            if (object.table_name == "videos") {
                resultType = "result_type_video"
                resultUrlAddition = urlResult_constant + "videos";
                iconURL = "img/video-icon-black.png";
            }
            idUrlAddition = urlId_constant + object.id;
            if (object.table_name == "stations") {
                resultType = "result_type_station"
                idUrlAddition = "";
                iconURL = "img/mapmarker2.png";
                availableData = this.getAvailableData(object);
            }

            $listItem = $('<li class="result_element"> <div><img class="result_icon" src="' + iconURL + '"></img></div> <div class="result_name">' + object.name.trunc(30) + ' || ' + object.journey + ' || Datum: ' + utils.formatDate(object.date) + availableData + '</div> </li');

            $listItem.click(function() {
                window.open("station_details.php?station_id=" + object.station_id + resultUrlAddition + idUrlAddition, "_self");
            });
            $list.append($listItem);
        },
        getAvailableData: function(station) {
            var availableData = "<span class='available_data'> || ";

            //Setup indicator which media types are present for that specific station
            if (station.has_images == 1) {
                availableData += "<img class='image_anchor no_botton_margin' src='img/img-icon-black.png'>";
            }
            if (station.has_songs == 1) {
                availableData += "<img class='audio_anchor no_botton_margin' src='img/audio-icon-black.png'>";
            }
            if (station.has_videos == 1) {
                availableData += "<img class='video_anchor no_botton_margin' src='img/video-icon-black.png'>";
            }
            availableData += "</span>";

            return availableData;
        }
    };
    SearchMain.initSearchMain();
    return SearchMain;
});
