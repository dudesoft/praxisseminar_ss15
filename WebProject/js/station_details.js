require(['common'], function(common) {
    requirejs(['app/station_details_main'], function(stationDetails) {
        stationDetails.setupDetails();
    });    
});
