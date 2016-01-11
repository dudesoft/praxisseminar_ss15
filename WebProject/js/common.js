requirejs.config({
    baseUrl: 'js',
    paths: {
        'jquery': 'vendor/jquery.min',
        'modernizr': 'vendor/modernizr.min',
        'underscore': 'vendor/underscore.min',
        'popover': 'vendor/jquery.webui-popover',
        'leaflet': 'vendor/leaflet/leaflet',
        'sly': 'vendor/sly.min',
        'colorbox': 'vendor/jquery.colorbox-min'
    },
    shim: {
        'popover': {
            deps: ['jquery']
        },
        'sly': {
            deps: ['jquery']
        },
        'colorbox': {
            deps: ['jquery']
        }
    }

});
