define(['jquery', './db_connector', './utils', './search_bar'], function($, dbConnector, utils) {
    var urlResult_constant = "&resultType=";
    var urlId_constant = "&objectId=";

    var urlVars = utils.getUrlVars();
    $list = $('#resut_list');

    var minDateString = "";
    var maxDateString = "";
    var journeyString = "";
    var resultTypeString = "";
    if (urlVars.minDate) {
        minDateString = ", min. Datum: " + urlVars.minDate;
    }
    if (urlVars.maxDate) {
        maxDateString = ", max. Datum: " + urlVars.maxDate;
    }
    if (urlVars.journey) {
        journeyString = ", in Reise: " + urlVars.journey;
    }
    if (urlVars.resultType) {
        resultTypeString = ", suche nach: " + urlVars.resultType;
    }

    dbConnector.getSearchResult(urlVars.search, urlVars.minDate, urlVars.maxDate, urlVars.journey, urlVars.resultType, setupResultList);

    function setupResultList(data) {
        for (var i = 0; i < data.length; i++) {
            addListElement(data[i]);
        }
        $('#title').html(data.length + ' Ergebnisse für: "' + urlVars.search.replace('<', '&lt') + '"' + journeyString + minDateString + maxDateString + resultTypeString);
    }

    function addListElement(object) {
        var resultUrlAddition = "";
        var idUrlAddition = "";
        var iconURL = "";

        var resultType = "";
        if (object.table_name == "songs") {
            resultType = "result_type_audio";
            resultUrlAddition = urlResult_constant + "songs";
            iconURL = "img/audio-icon-black.png";
        }
        if (object.table_name == "images") {
            resultType = "result_type_image"
            resultUrlAddition = urlResult_constant + "images";
            iconURL = "/Praxisseminar/WebProject/content/images/thumbnails/" + object.url;
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
        }

        $listItem = $('<li class="result_element"> <div><img class="result_icon" src="' + iconURL + '"></img></div> <div class="result_name">' + object.name + ' || Datum: ' + utils.formatDate(object.date) + '</div> </li');

        $listItem.click(function() {
            window.open("station_details.php?station_id=" + object.station_id + resultUrlAddition + idUrlAddition, "_self");
        });
        $list.append($listItem);
    }

});
