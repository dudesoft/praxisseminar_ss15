var $popOverContent = $('#pop_over_content');
$popOverContent.hide();

$('#pop_over').webuiPopover({
    url: '#pop_over_content',
    animation: 'pop'
});
