define(['jquery', 'jquery.popover'], function($) {
    var $popOverContent = $('#pop_over_content');

    $('#pop_over').webuiPopover({
        url: '#pop_over_content',
        animation: 'pop'
    });
});
