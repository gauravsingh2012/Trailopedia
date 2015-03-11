window.onload = setHeight;
var nextPageNumber, prevPageNumber;

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

// fetches the tv trailers from the movie db to dispay trailer on the page by passing the 
// videos parameter in the URL.

function fetchData(id, movieName) {
    $.ajax({
        url: "https://api.themoviedb.org/3/tv/" + id + "/videos?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviTrailerCallBack' + id,
        success: function (dataTrailers) {
			if (dataTrailers.results.length !== 0){

				var container = $(".container");
				var row = $(".row");
				var movieTrailerContainer = $(".movie-trailer-container:first")
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
        }
    });

}

// fetches the Cast of the tv show with the credits parameter in the URL

function fetchCast(id, trailerClone) {
    var castString = "";
    $.ajax({
        url: "https://api.themoviedb.org/3/tv/" + id + "/credits?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviMovieCastCallBack' + id,
        success: function (dataCast) {
			if (dataCast.cast.length !== 0){

				console.log(dataCast);
				for (i = 0; i < 5; i++) {
					if (typeof(dataCast.cast[i]) !== 'undefined'){

						castString = castString + dataCast.cast[i].name;
						if (i != 4) {
							castString = castString + ","
						}
					}
				}
				trailerClone.find(".thumbnail .caption p:first").html(castString);
			}
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

// this function is called when Watch all Tv trailers button is clicked
// this passes the hidden id on the div block of the tv to the Watch TV Trailers Page

$(document).on('click', '.movie-trailer-button', function () {
    var parentPara = $(this).parent();
    var id = parentPara.find(".hidden-id-label").text();
    var url = "watchTvTrailers.aspx?id=" + id;
    window.location.href = url;
});


// this function is called when get Tv Details button is clicked
// this passes the hidden id on the div block of the tv show to the TV Details Page

$(document).on('click', '.movie-detail-button', function () {
    var parentPara = $(this).parent();
    var id = parentPara.find(".hidden-id-label").text();
    var url = "tvDetails.aspx?id=" + id;
    window.location.href = url;
});

// gets the next page of the JSON result when the next button at the bottom is clicked

function getNextPage() {

    $.ajax({
        url: "https://api.themoviedb.org/3/tv/top_rated?api_key=052ca14131fc2be845560a604c66ffd5&page=" + nextPageNumber,
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
				if (data.results[i].length !== 0){				
					fetchData(data.results[i].id, data.results[i].title);
				}
            }

        }
    });
}

// gets the previous page of the JSON result when the previous button at the bottom is clicked

function getPreviousPage() {

    $.ajax({
        url: "https://api.themoviedb.org/3/tv/top_rated?api_key=052ca14131fc2be845560a604c66ffd5&page=" + previousPageNumber,
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
				if (data.results[i].length !== 0){
					fetchData(data.results[i].id, data.results[i].title);
				}
            }

        }
    });
}

// fetches the top rated tv shows data from movie db

$(document).ready(function () {
    $.ajax({
        url: "https://api.themoviedb.org/3/tv/top_rated?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviCallBack',
        success: function (data) {
            console.log(data);
            console.log(data.results.length);
            nextPageNumber = data.page + 1;
            previousPageNumber = data.page - 1;
            for (i = 0; i < data.results.length; i++) {
				if (data.results[i].length !== 0){
					fetchData(data.results[i].id, data.results[i].name);
				}
            }

        }
    });
});