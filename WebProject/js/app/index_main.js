define(['jquery', './maps', './db_connector', './search_bar'], function($, map, dbConnector) {
    map.setupMap('main_content');

    // slide effects for stations list on map
    $("#list_hover").hover(
        function() {
            $("#layer_list").stop(true, false).slideDown();
            map.disableMapControls();
        },
        function() {
            $("#layer_list").stop(true, false).slideUp();
            map.enableMapControls();
        }
    );
});
