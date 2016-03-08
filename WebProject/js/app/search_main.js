define(['jquery', './db_connector', './utils', './search_bar'], function($, dbConnector, utils) {
    var urlVars = utils.getUrlVars();
    $list = $('#resut_list');

    dbConnector.getSearchResult(urlVars.search, setupResultList);

    function setupResultList(data) {
        console.log(data[0].title);
        for (var i = 0; i < data.length; i++) {
            addListElement(data[i]);
        }
    }

    function addListElement(object) {
        $listItem = $('<li>' + object.title + '</li>');
        $listItem.click(function() {
            window.open("station_details.php?station_id=" + object.station_id, "_self");
        });
        $list.append($listItem);
    }

});
