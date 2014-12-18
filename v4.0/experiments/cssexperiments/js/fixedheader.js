$(document).ready(function () {
    $(".dropdown").mouseenter(function () {
        $(".dropdown-menu").slideDown();
    });

    $(".dropdown-menu").mouseleave(function () {
        $(".dropdown-menu").slideUp();
    });
})