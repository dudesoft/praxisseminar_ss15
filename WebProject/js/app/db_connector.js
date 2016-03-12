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

        getSearchResult: function(searchString, minDate, maxDate, callback) {
            $.ajax({
                type: 'GET',
                url: 'sql/get_search_results.php',
                data: {
                    'search_string': searchString,
                    'date_min': minDate,
                    'date_max': maxDate
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
        }
    };

    return Connector;
});
