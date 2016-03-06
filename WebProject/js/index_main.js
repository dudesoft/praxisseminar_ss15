define(['jquery', 'maps', 'db_connector', 'popover_header', 'bootstrap'], function($, map, dbConnector) {
    map.setupMap('main_content');

    

    $('#search-button').click(function() {
        dbConnector.getSearchResult($('#search-input').val());
    });

    $('search-input').keypress(function(event) {
    if (event.which == 13) {
        event.preventDefault();
        dbConnector.getSearchResult($('#search-input').val());
    }
});
});
