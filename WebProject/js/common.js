requirejs.config({
    baseUrl: 'js',
    paths: {
        'jquery': 'vendor/jquery.min',
        'modernizr': 'vendor/modernizr.min',
        'underscore': 'vendor/underscore.min',
        'jquery.popover': 'vendor/jquery.webui-popover',
        'leaflet': 'vendor/leaflet/leaflet'
    },
    shim: {
    	"jquery.popover": ["jquery"]
    }
});