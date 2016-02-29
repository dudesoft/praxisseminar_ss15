define([], function() {
    var Utils = {
        buildLocationName: function(location) {
            var name = location.name;

            if (location.altname != null) {
                name += ' (' + location.altname + ')';
            }

            return name;
        }
    };
    return Utils;
});
