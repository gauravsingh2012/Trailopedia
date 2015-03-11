// fetches the movie trailers from the movie db to dispay trailer on the page by passing the 
// videos parameter in the URL.

function fetchData(id) {
    $.ajax({
        url: "https://api.themoviedb.org/3/tv/" + id + "/videos?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviTrailerCallBack' + id,
        success: function (dataTrailers) {
			if (dataTrailers.results.length !== 0){
			
				for (i = 0; i < dataTrailers.results.length; i++) {
					if (dataTrailers.results[i].length !== 0){
						var id = dataTrailers.id;
						var container = $(".col-md-8");
						var videoContainer = $(".vid:first");
						var trailerClone = videoContainer.clone();
						console.log(trailerClone);
						var youtubeURL = "https://www.youtube.com/embed/" + dataTrailers.results[i].key;
						trailerClone.attr("id", id);
						trailerClone.find(".youtube-player").attr("src", youtubeURL);
						container.append(trailerClone);
						container.append("<br />");
						console.log(youtubeURL);
					}
				}
			}
            console.log(dataTrailers);
        }
    });

}

$(document).ready(function () {
    var queryString = new Array();
    if (queryString.length == 0) {
        if (window.location.search.split('?').length > 1) {
            var params = window.location.search.split('?')[1].split('&');
            for (var i = 0; i < params.length; i++) {
                var key = params[i].split('=')[0];
                var value = decodeURIComponent(params[i].split('=')[1]);
                queryString[key] = value;
            }
        }
    }

    if (queryString["id"] != null) {
        $.ajax({
            url: "https://api.themoviedb.org/3/tv/" + queryString["id"] + "?api_key=052ca14131fc2be845560a604c66ffd5",
            crossDomain: true,
            dataType: "jsonp",
            jsonpCallback: 'myRoviALLTrailerCallBack',
            success: function (data) {
                console.log(data);
                var posterImage = data.poster_path;
                if (posterImage === null) {
                    posterImage = "../images/poster_default.gif";
                }
                else {
                    posterImage = "http://image.tmdb.org/t/p/w300/" + data.poster_path;
                }
                $(".row h3").text(data.name);
                $(".col-md-4 p").text(data.overview);
                $(".col-md-4 img").attr("src", posterImage);
                fetchData(queryString["id"])
            }
        });
    }
});