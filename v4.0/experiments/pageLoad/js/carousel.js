$(document).ready(function () {
    setInterval(function () {

        $('#inner-carousel ul').animate({ marginLeft: '-600px' }, 2500, function () {

            $(this).find("li:last").after($(this).find("li:first"));
            $(this).css({ marginLeft: 0 });
        });
    }, 3500);

});