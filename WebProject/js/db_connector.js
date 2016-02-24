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
        }
    };

    return Connector;
});
