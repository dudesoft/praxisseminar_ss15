define(['jquery', './db_connector', 'bootstrap', 'jquery_ui'], function($, db_connector) {
    db_connector.getAllJourneys(setupJourneyDropdown);
    db_connector.getAllDates(setupDatepicker);
    db_connector.getAutocompleteData(setupAutocomplete);

    $('#search-button, #enter_search').click(function() {
        buildSearchURL();
    });

    $('#search-input').keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            buildSearchURL();
        }
    });

    $(document).on('click', '.ui-datepicker-next, .ui-datepicker-prev, .ui-datepicker', function(e) {
        e.stopPropagation();
    });

    function setupAutocomplete(data) {
        $("#search-input").autocomplete({
            source: function(request, response) {
                var term = $.ui.autocomplete.escapeRegex(request.term),
                    startsWithMatcher = new RegExp("^" + term, "i"),
                    startsWith = $.grep(data, function(value) {
                        return startsWithMatcher.test(value.label || value.value || value);
                    }),
                    containsMatcher = new RegExp(term, "i"),
                    contains = $.grep(data, function(value) {
                        return $.inArray(value, startsWith) < 0 &&
                            containsMatcher.test(value.label || value.value || value);
                    });

                response(startsWith.concat(contains));
            }
        });
    }

    function setupDatepicker(data) {
        var datesObject = {};
        data.forEach(function(date) {
            cDate = new Date(date);
            cDate.setHours(0);
            cDate.setMinutes(0);
            datesObject[cDate] = cDate;
        });

        $("#min_date_input").datepicker({
            dateFormat: "yy-mm-dd",
            changeMonth: true,
            changeYear: true,
            minDate: new Date(data[0]),
            maxDate: new Date(data[data.length - 1]),
            beforeShowDay: function(date) {
                var highlight = datesObject[date];
                if (highlight) {
                    return [true, 'existing-date', ''];
                } else {
                    return [true, '', ''];
                }
            }
        });

        $("#max_date_input").datepicker({
            dateFormat: "yy-mm-dd",
            changeMonth: true,
            changeYear: true,
            minDate: new Date(data[0]),
            maxDate: new Date(data[data.length - 1]),
            beforeShowDay: function(date) {
                var highlight = datesObject[date];
                if (highlight) {
                    return [true, 'existing-date', ''];
                } else {
                    return [true, '', ''];
                }
            }
        });
    }

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
