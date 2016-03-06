define(['jquery', 'bootstrap'], function($) {
    $('#search-button').click(function() {
        window.open("search_result.php?search=" + $('#search-input').val(), "_self");
    });

    $('#search-input').keypress(function(event) {
        console.log('keypress lol');
        if (event.which == 13) {
            event.preventDefault();
            window.open("search_result.php?search=" + $('#search-input').val(), "_self");
        }
    });
});
