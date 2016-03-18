define([], function() {

    var Connector = {
        getAllLocations: function(callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_locations.php',
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function() {
                    alert("Fehler beim Laden der Ortsdaten");
                    return null;
                }
            });
        },

        getLocationDetails: function(stationId, callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_location_details.php',
                data: {
                    'station_id': stationId
                },
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function() {
                    alert("Fehler beim Laden der Ortsdaten");
                    return null;
                }
            });
        },

        getNextPrevStation: function(travelId, date, callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_next_prev_station.php',
                data: {
                    'travel_id': travelId,
                    'date': date
                },
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function() {
                    alert("Fehler beim Laden der Ortsdaten");
                    return null;
                }
            });
        },

        getSearchResult: function(searchString, minDate, maxDate, journey, resultType, callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_search_results.php',
                data: {
                    'search_string': searchString,
                    'date_min': minDate,
                    'date_max': maxDate,
                    'journey': journey,
                    'result_type': resultType
                },
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function(response) {
                    alert("Fehler beim Laden der Suchergebnisse");
                    return null;
                }
            })
        },

        getAllJourneys: function(callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_all_journeys.php',
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function(response) {
                    alert("Fehler beim Laden der Suchergebnisse");
                    return null;
                }
            })
        },

        getAllDates: function(callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_all_dates.php',
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function(response) {
                    alert("Fehler beim Laden der Kalenderdaten");
                    return null;
                }
            })
        },

        getAutocompleteData: function(callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_autocomplete_values.php',
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function(response) {
                    alert("Fehler beim Laden der Kalenderdaten");
                    return null;
                }
            })
        },

        getMetaInformation: function(id, table, callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_meta_information.php',
                data: {
                    'table': table,
                    'id': id
                },
                cache: 'true',
                dataType: 'json',
                success: function(response) {
                    callback(response);
                },
                error: function(response) {
                    alert("Fehler beim Laden der Metadaten");
                    return null;
                }
            })
        }
    };

    return Connector;
});
