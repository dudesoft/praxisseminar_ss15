define(['jquery', 'maps', 'db_connector', 'popover_header', 'bootstrap'], function($, map, dbConnector) {
    map.setupMap('main_content');

    $('#search-button').click(function() {
        window.open("search_result.php?search=" + $('#search-input').val(), "_self");
    });

    $('search-input').keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            window.open("search_result.php?search=" + $('#search-input').val(), "_self");
        }
    });
});
