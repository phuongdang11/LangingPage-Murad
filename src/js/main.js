// set Background
setBackgroundElement();
function setBackgroundElement() {
    $('[setBackground]').each(function() {
        var background = $(this).attr('setBackground');
        $(this).css({
            'background-image': 'url(' + background + ')',
            'background-size': 'cover',
            'background-position': 'top',
        });
    });
    $('[setBackgroundRepeat]').each(function() {
        var background = $(this).attr('setBackgroundRepeat');
        $(this).css({
            'background-image': 'url(' + background + ')',
            'background-repeat': 'no-repeat',
        });
    });
}


document.addEventListener('DOMContentLoaded', () => {
    setBackgroundElement();
});
