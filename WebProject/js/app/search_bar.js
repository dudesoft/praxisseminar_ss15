define(['jquery', 'bootstrap'], function($) {
    $('#search-button').click(function() {
        var minDate = "";
        var maxDate = "";

        if ($('#min_date_input').val() != "") {
            minDate = "&minDate=" + $('#min_date_input').val()
        }
        if ($('#max_date_input').val() != "") {
            maxDate = "&maxDate=" + $('#max_date_input').val()
        }

        window.open("search_result.php?search=" + encodeURI($('#search-input').val()) + minDate + maxDate, "_self");
    });

    $('#search-input').keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            var minDate = "";
            var maxDate = "";

            if ($('#min_date_input').val() != "") {
                console.log("Here");
                minDate = "&minDate=" + $('#min_date_input').val()
            }
            if ($('#max_date_input').val() != "") {
                maxDate = "&maxDate=" + $('#max_date_input').val()
            }

            window.open("search_result.php?search=" + encodeURI($('#search-input').val()) + minDate + maxDate, "_self");
        }
    });
});
