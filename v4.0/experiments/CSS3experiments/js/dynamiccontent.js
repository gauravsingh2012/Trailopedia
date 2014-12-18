$(function () {
    $(".exp-shape").click(controller);
});

var arrHTML = {
    "exp-square-btn": "<div class='square'></div>,",
    "exp-circle-btn": "<div class='circle'></div>,",
};

function controller(event) {
    var link = $(event.currentTarget);
    var shape = link.attr("id");

    var htmlcontent = $(arrHTML[shape]);
    htmlcontent
        .css({ "position": "absolute", "top": "500px", "left": "200px" })
        .draggable({ "grid": [10, 10] });
    $("#exp-append-section").append(htmlcontent);
}