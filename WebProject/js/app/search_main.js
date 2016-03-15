define(['jquery', './db_connector', './utils', './search_bar'], function($, dbConnector, utils) {
    var urlResult_constant = "&resultType=";
    var urlId_constant = "&ojbectId=";

    var urlVars = utils.getUrlVars();
    $list = $('#resut_list');

    var minDateString = "";
    if (urlVars.minDate)

        $('#title').html('Ergebnisse für ' + urlVars.search.replace('<', '&lt'));

    dbConnector.getSearchResult(urlVars.search, urlVars.minDate, urlVars.maxDate, urlVars.journey, urlVars.resultType, setupResultList);

    function setupResultList(data) {
        console.log(data);
        for (var i = 0; i < data.length; i++) {
            addListElement(data[i]);
        }
    }

    function addListElement(object) {
        var resultUrlAddition = "";
        var idUrlAddition = "";

        var resultType = "";
        if (object.table_name == "songs") {
            resultType = "result_type_audio";
            resultUrlAddition = urlResult_constant + "songs";            
        }
        if (object.table_name == "images") {
            resultType = "result_type_image"
            resultUrlAddition = urlResult_constant + "images";
        }
        if (object.table_name == "videos") {
            resultType = "result_type_video"
            resultUrlAddition = urlResult_constant + "videos";
        }
        idUrlAddition = urlId_constant + object.id;
        if (object.table_name == "stations") {
            resultType = "result_type_station"
            idUrlAddition = "";
        }

        $listItem = $('<li class="result_element"> <div class="result_icon ' + resultType + '"></div> <div class="result_name">' + object.name + ' || Datum:' + object.date + '</div> </li');

        $listItem.click(function() {
            window.open("station_details.php?station_id=" + object.station_id + resultUrlAddition + idUrlAddition, "_self");
        });
        $list.append($listItem);
    }

});
