var nextPageNumber, previousPageNumber;
window.onload = setHeight;

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


// this function is called when the Watch all Trailers button is clicked
// this passes the hidden id on the div block of the movie to the watchTrailers Pages

$(document).on('click', '.movie-trailer-button', function () {
    var parentPara = $(this).parent();
    var id = parentPara.find(".hidden-id-label").text();
    var url = "watchTrailers.aspx?id=" + id;
    window.location.href = url;
});

// this function is called when get Movie Details button is clicked
// this passes the hidden id on the div block of the movie to the Movie Details Page

$(document).on('click', '.movie-detail-button', function () {
    var parentPara = $(this).parent();
    var id = parentPara.find(".hidden-id-label").text();
    var url = "movieDetails.aspx?id=" + id;
    window.location.href = url;
});

// fetches the movie trailers from the movie db to dispay trailer on the page by passing the 
// videos parameter in the URL.

function fetchData(id, movieName) {
    $.ajax({
        url: "https://api.themoviedb.org/3/movie/" + id + "/videos?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviTrailerCallBack' + id,
        success: function (dataTrailers) {
            var container = $(".container");
            var row = $(".row");
            var movieTrailerContainer = $(".movie-trailer-container:first");

            var id = dataTrailers.id;
            var trailerClone = movieTrailerContainer.clone();

            var youtubeURL = "https://www.youtube.com/embed/" + dataTrailers.results[0].key;
            console.log(youtubeURL);

            trailerClone.attr("id", id);
            trailerClone.find(".thumbnail .iFrameYouTube").attr("src", youtubeURL);
            trailerClone.find(".hidden-id-label").text(id);
            trailerClone.find(".thumbnail .caption h3").html(movieName);
            fetchCast(id, trailerClone);
            row.append(trailerClone);


            console.log(dataTrailers);
        }
    });

}

// fetches the Cast of the movie with the credits parameter in the URL

function fetchCast(id, trailerClone) {
    var castString = "";
    $.ajax({
        url: "https://api.themoviedb.org/3/movie/" + id + "/credits?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviMovieCastCallBack' + id,
        success: function (dataCast) {
            console.log(dataCast);
            for (i = 0; i < 5; i++) {
                castString = castString + dataCast.cast[i].name;
                if (i != 4) {
                    castString = castString + ","
                }
            }

            trailerClone.find(".thumbnail .caption p:first").html(castString);
        }

    });
}

// Event for next pagination button

$(function () {
    $(".next-page").on("click", getNextPage);
});

// Event for previous pagination button

$(function () {
    $(".prev-page").on("click", getPreviousPage);
});

// gets the next page of the JSON result when the next button at the bottom is clicked

function getNextPage() {

    $.ajax({
        url: "https://api.themoviedb.org/3/movie/upcoming?api_key=052ca14131fc2be845560a604c66ffd5&page=" + nextPageNumber,
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviCallBack',
        success: function (data) {
            console.log(data);
            console.log(data.results.length);
            nextPageNumber = data.page + 1;
            previousPageNumber = data.page - 1;
            var row = $(".row");
            var movieTrailerContainer = $(".movie-trailer-container:first");
            var trailerClone = movieTrailerContainer.clone();
            var movieTrailerContainerAll = $(".movie-trailer-container");
            movieTrailerContainerAll.remove();
            row.append(trailerClone);
            for (i = 0; i < data.results.length; i++) {
                fetchData(data.results[i].id, data.results[i].title);
            }

        }
    });
}

// gets the previous page of the JSON result when the previous button at the bottom is clicked

function getPreviousPage() {

    $.ajax({
        url: "https://api.themoviedb.org/3/movie/upcoming?api_key=052ca14131fc2be845560a604c66ffd5&page=" + previousPageNumber,
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviCallBack',
        success: function (data) {
            console.log(data);
            console.log(data.results.length);
            nextPageNumber = data.page + 1;
            previousPageNumber = data.page - 1;
            var row = $(".row");
            var movieTrailerContainer = $(".movie-trailer-container:first");
            var trailerClone = movieTrailerContainer.clone();
            var movieTrailerContainerAll = $(".movie-trailer-container");
            movieTrailerContainerAll.remove();
            row.append(trailerClone);
            for (i = 0; i < data.results.length; i++) {
                fetchData(data.results[i].id, data.results[i].title);
            }

        }
    });
}

// fetches the upcoming movies data from movie db

$(document).ready(function () {
    $.ajax({
        url: "https://api.themoviedb.org/3/movie/upcoming?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviCallBack',
        success: function (data) {
            console.log(data);
            console.log(data.results.length);
            nextPageNumber = data.page + 1;
            previousPageNumber = data.page - 1;
            for (i = 0; i < data.results.length; i++) {
                fetchData(data.results[i].id, data.results[i].title);
            }

        }
    });
});