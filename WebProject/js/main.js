define(['jquery'], function($) {
    var $popOverContent = $('#pop_over_content');

    require(['popover'], function() {
        $('#pop_over').webuiPopover({
            url: '#pop_over_content',
            animation: 'pop'
        });
    })
});
