window.onload = setHeight;

// finds the maximum height of the div block thumbnail
// so as to have uniform height of div blocks of trailers
function setHeight() {

    var maxHeight = -1;

    $(".thumbnail").each(function () {
        maxHeight = maxHeight > $(this).height() ? maxHeight : $(this).height();
    });

    console.log(maxHeight);

    $(".thumbnail").each(function () {
        $(this).height(maxHeight);
    });
}

// this function is called when Watch all trailers button is clicked
// this passes the hidden id on the div block of the tv show to the Watch all Tv Trailers Page

$(document).on('click', '.movie-trailer-button', function () {
    var parentDiv = $(this).parent().parent();
    console.log(parentDiv);
    var id = parentDiv.find(".hidden-id-label").text();
    var url = "watchTvTrailers.aspx?id=" + id;
    window.location.href = url;
});

// this function is called when get Movie Details button is clicked
// this passes the hidden id on the div block of the tv show to the Movie Details Page

$(document).on('click', '.movie-detail-button', function () {
    var parentDiv = $(this).parent().parent();
    console.log(parentDiv);
    var id = parentDiv.find(".hidden-id-label").text();
    var url = "tvDetails.aspx?id=" + id;
    window.location.href = url;
});


// this function is called when TV poster image is clicked
// this passes the hidden id on the div block of the tv to the TV Details Page

$(document).on('click', '.movie-details-header', function () {
    var parentDiv = $(this).parent().parent();
    var id = parentDiv.find(".hidden-id-label").text();
    var url = "tvDetails.aspx?id=" + id;
    window.location.href = url;
});


// this function is called when tv poster image is clicked
// this passes the hidden id on the div block of the tv to the TV Details Page

$(document).on('click', '.movie-details-image', function () {
    var parentDiv = $(this).parent();
    var id = parentDiv.find(".media-body .hidden-id-label").text();
    var url = "tvDetails.aspx?id=" + id;
    window.location.href = url;
});


// this function calls the movie db api with a search parameter in 
// the URL to search for a TV show. The input is taken from a text box.

function getMovieTrailer() {

    var searchMovie = $(".search-movie").val();
    var encodedSearchMovie = encodeURIComponent(searchMovie);
    urlString = "https://api.themoviedb.org/3/search/tv?api_key=052ca14131fc2be845560a604c66ffd5&query=" + encodedSearchMovie
    console.log(urlString);
    $.ajax({
        url: "https://api.themoviedb.org/3/search/tv?api_key=052ca14131fc2be845560a604c66ffd5&query=" + encodedSearchMovie,
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviCallBack',
        success: function (data) {
            console.log(data);
            console.log(data.results.length);
            if (data.results.length === 0) {
                $(".col-md-12 h1").html("No TV Shows Found");
                var col = $(".movie-container");
                var movieTrailerContainer = $(".movie-search-container:first");
                var trailerClone = movieTrailerContainer.clone();
                var movieTrailerContainerAll = $(".movie-search-container");
                movieTrailerContainerAll.remove();
                col.append(trailerClone);
            }
            else {
                $(".col-md-12 h1").html("Search Results");
                var col = $(".movie-container");
                var movieTrailerContainer = $(".movie-search-container:first");
                var trailerClone = movieTrailerContainer.clone();
                var movieTrailerContainerAll = $(".movie-search-container");
                movieTrailerContainerAll.remove();
                col.append(trailerClone);
                for (i = 0; i < data.results.length; i++) {
                    fetchData(data.results[i].id, data.results[i].name, data.results[i].poster_path);
                }

            }

        }
    });
}

// fetches tv show data from the movie DB API

function fetchData(id, movieName, posterPath) {
    $.ajax({
        url: "https://api.themoviedb.org/3/tv/" + id + "?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviTrailerCallBack' + id,
        success: function (dataTrailers) {
            var posterURL;
            var col = $(".movie-container");
            var movieTrailerContainer = $(".movie-search-container:first")
            var id = dataTrailers.id;
            var trailerClone = movieTrailerContainer.clone();
            if (posterPath == null) {
                posterURL = "../images/poster_default.gif";
            }
            else {
                posterURL = "http://image.tmdb.org/t/p/w300/" + posterPath;
            }

            console.log(posterURL);
            trailerClone.attr("id", id);
            trailerClone.find(".media .pull-left .img-responsive").attr("src", posterURL);
            trailerClone.find(".media .pull-left .img-responsive").attr("style", "height:220px;width:300px");
            trailerClone.find(".media .media-body .movie-title").html(movieName);
            trailerClone.find(".media .media-body .hidden-id-label").html(id);
            trailerClone.find(".media .media-body .hidden-xs").html(dataTrailers.overview);
            col.append(trailerClone);
            console.log(dataTrailers);
        }
    });
}