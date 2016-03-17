define(['jquery', './db_connector', 'bootstrap', 'jquery_ui'], function($, db_connector) {
    db_connector.getAllJourneys(setupJourneyDropdown);

    $('#search-button').click(function() {
        buildSearchURL();
    });

    $('#search-input').keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            buildSearchURL();
        }
    });

    $(function() {
        $("#min_date_input").datepicker({});
    });

    function setupJourneyDropdown(data) {
        for (var i = 0; i < data.length; i++) {
            $('#journey_dropdown').append($('<option>' + data[i].name + '</option>'))
        }
    }

    function buildSearchURL() {
        var minDate = "";
        var maxDate = "";
        var journey = "";
        var resultType = "";

        if ($('#min_date_input').val() != "") {
            minDate = "&minDate=" + $('#min_date_input').val();
        }
        if ($('#max_date_input').val() != "") {
            maxDate = "&maxDate=" + $('#max_date_input').val();
        }
        if ($('#journey_dropdown').find('option:selected').val() != "default") {
            journey = "&journey=" + $('#journey_dropdown').val();
        }
        if ($('#result_type_dropdown').find('option:selected').val() != "default") {
            resultType = "&resultType=" + $('#result_type_dropdown').find('option:selected').val();
        }

        window.open("search_result.php?search=" + encodeURI($('#search-input').val()) + minDate + maxDate + journey + resultType, "_self");
    }
});
