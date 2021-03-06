requirejs.config({
    baseUrl: 'js',
    paths: {
        'jquery': ['https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min',
            'vendor/jquery.min'
        ],
        'jquery_ui': 'vendor/jquery-ui/jquery-ui',
        'bootstrap': 'http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min',
        'modernizr': 'vendor/modernizr.min',
        'underscore': 'vendor/underscore.min',
        'leaflet': 'vendor/leaflet/leaflet',
        'sly': 'vendor/sly.min',
        'colorbox': 'vendor/jquery.colorbox-min',
    },
    shim: {
        'bootstrap': {
            deps: ['jquery']
        },
        'sly': {
            deps: ['jquery']
        },
        'colorbox': {
            deps: ['jquery']
        },
        'jquery-ui': {
            deps: ['jquery']
        }
    }
});
