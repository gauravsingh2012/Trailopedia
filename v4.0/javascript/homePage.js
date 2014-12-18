
$(document).ready(function () {
    $(".git-hub a").mouseenter(function () {
        $(".git-hub").css({ "opacity": "1" });
    });

    $(".git-hub a").mouseleave(function () {
        $(".git-hub").css({ "opacity": "0.4" });
    });

    $(".experiments a").mouseenter(function () {
        $(".experiments").css({ "opacity": "1" });
    });

    $(".experiments a").mouseleave(function () {
        $(".experiments").css({ "opacity": "0.4" });
    });

    $(".resume a").mouseenter(function () {
        $(".resume").css({ "opacity": "1" });
    });

    $(".resume a").mouseleave(function () {
        $(".resume").css({ "opacity": "0.4" });
    });
})
