define(['jquery', 'maps', 'db_connector', 'popover_header'], function($, map, dbConnector) {
    map.setupMap('main_content');

    

    $('#search-button').click(function() {
        dbConnector.getSearchResult($('#search-input').val());
    });
});
