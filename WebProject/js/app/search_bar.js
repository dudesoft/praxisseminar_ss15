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

    $('#advanced-search-button').on('click', function(event) {
        $(this).parent().toggleClass('open');
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
            prevText: 'Zurück',
            nextText: 'Vor',
            todayText: 'heute',
            closeText: 'schließen',
            monthNames: ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
                'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'
            ],
            monthNamesShort: ['Jan', 'Feb', 'Mär', 'Apr', 'Mai', 'Jun',
                'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dez'
            ],
            dayNames: ['Sonntag', 'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag'],
            dayNamesShort: ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'],
            dayNamesMin: ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'],
            showMonthAfterYear: false,
            dateFormat: 'dd.mm.yy',
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
            prevText: 'Zurück',
            nextText: 'Vor',
            todayText: 'heute',
            closeText: 'schließen',
            monthNames: ['Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
                'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'
            ],
            monthNamesShort: ['Jan', 'Feb', 'Mär', 'Apr', 'Mai', 'Jun',
                'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dez'
            ],
            dayNames: ['Sonntag', 'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag'],
            dayNamesShort: ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'],
            dayNamesMin: ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'],
            showMonthAfterYear: false,
            dateFormat: 'dd.mm.yy',
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

        $(document).on('click', '#main_content', function(e) {
            $("#min_date_input").datepicker("hide");
            $("#max_date_input").datepicker("hide");
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
            minDate = "&minDate=" + convertDateFormat($('#min_date_input').val());
        }
        if ($('#max_date_input').val() != "") {
            maxDate = "&maxDate=" + convertDateFormat($('#max_date_input').val());
        }
        if ($('#journey_dropdown').find('option:selected').val() != "default") {
            journey = "&journey=" + $('#journey_dropdown').val();
        }
        if ($('#result_type_dropdown').find('option:selected').val() != "default") {
            resultType = "&resultType=" + $('#result_type_dropdown').find('option:selected').val();
        }

        window.open("search_result.php?search=" + encodeURI($('#search-input').val()) + minDate + maxDate + journey + resultType, "_self");
    }

    function convertDateFormat(date) {
        var parts = date.split(".");
        if (parts.length < 3) {
            return null;
        }
        if (parts[1].length == 1) {
            parts[1] = "0" + parts[1];
        }
        if (parts[0].length == 1) {
            parts[0] = "0" + parts[0];
        }
        var newDate = parts[2] + "-" + parts[1] + "-" + parts[0];

        return newDate;
    }
});
