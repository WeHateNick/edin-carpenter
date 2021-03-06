jQuery(document).ready(function ($) {
    jQuery('#blueimp-gallery').on('slide', function (event, index, slide) {
        $(this).children('.description')
            .text($('#links a').eq(index).data('description'));
    });

    $('#launch-gallery').on('click',function (event) {
        event = event || window.event;
        var links = new Array();
        $('#links a').each(function(){
            links.push(this);
        })
        var target = event.target || event.srcElement,
        link = target.src ? target.parentNode : target,
        options = {index: link, event: event};
        blueimp.Gallery(links, options);
    });
});