
var loadingImage = $('<div class="loading"><img class="loading-icon" src="http://jimpunk.net/Loading/wp-content/uploads/loading1.gif" width="25"></div>');
var icon = loadingImage.find('img');
var content = $('.content');
var para = content.find('p');
var chunkSize = 1200;

content.append(loadingImage);

var block = 0;
var loading = false;

$(window).scroll(function () {
    if (block === -1) {
        return;
    }

    if (!loading && (window.scrollY + $(window).height() - 30) > (para.offset().top + para.outerHeight())) {
        loading = true;
        setTimeout(function () {
            icon.show();
            load(function () { loading = false });
        }, 250);
    }
});

var textValue = $('.text');
var p = '';

function load(callback) {
    setTimeout(function () {
        var appendScrolledText = textValue.text().slice(block * chunkSize, (block + 1) * chunkSize);
        p = p + appendScrolledText;

        block++;
        if (block * chunkSize >= textValue.text().length) {
            block = -1;
        }

        para.text(p + (block === -1 ? '(The end of content)' : '...'));
        icon.hide();

        callback();
    }, 750);
}

load();
