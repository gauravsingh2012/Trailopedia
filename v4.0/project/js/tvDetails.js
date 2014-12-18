// fetches the cast and crew of the movie using the credits parameter in the URL
// which is displayed on the tv details page

function fetchCast(id) {
    var castString = "";
    $.ajax({
        url: "https://api.themoviedb.org/3/tv/" + id + "/credits?api_key=052ca14131fc2be845560a604c66ffd5",
        crossDomain: true,
        dataType: "jsonp",
        jsonpCallback: 'myRoviMovieReviewCallBack' + id,
        success: function (dataCast) {
            var castContainer = $(".cast-container");
            var crewContainer = $(".crew-container");
            var cast = $(".cast:first");
            var crew = $(".crew:first");

            console.log(cast);

            console.log(dataCast);
            for (i = 0; i < dataCast.cast.length; i++) {
                var castClone = cast.clone();
                var personPicURL = dataCast.cast[i].profile_path;
                // checks whether there is a profile pic availaible for the
                // retrieved cast member. If not then the poster not found 
                // path is used in the img src tag
                if (personPicURL === null) {
                    personPicURL = "../images/poster_default.gif";

                }
                else {
                    personPicURL = "https://image.tmdb.org/t/p/w45" + personPicURL;
                }
                castString = dataCast.cast[i].name + " as " + dataCast.cast[i].character;
                castClone.find("p").html(castString);
                castClone.find("img").attr("src", personPicURL);
                castContainer.append(castClone);
            }

            for (i = 0; i < dataCast.crew.length; i++) {
                var crewClone = crew.clone();
                var crewPicURL = dataCast.crew[i].profile_path;
                // checks whether there is a profile pic availaible for the
                // retrieved crew member. If not then the poster not found 
                // path is used in the img src tag
                if (crewPicURL === null) {
                    crewPicURL = "../images/poster_default.gif";

                }
                else {
                    crewPicURL = "https://image.tmdb.org/t/p/w45" + crewPicURL;
                }
                console.log(crewPicURL);
                crewString = dataCast.crew[i].job + " : " + dataCast.crew[i].name;
                crewClone.find("p").html(crewString);
                crewClone.find("img").attr("src", crewPicURL);
                crewContainer.append(crewClone);
            }

            $(".cast:first").attr("style", "display:none");
            $(".crew:first").attr("style", "display:none");
        }

    });
}

$(document).ready(function () {
    var queryString = new Array();
    // retrieves the parameter id from the URL from trailers page to TV Details Page
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

    // Gets the Details of the movies from the id parameter retrieved from the 
    // URL

    if (queryString["id"] != null) {
        $.ajax({
            url: "https://api.themoviedb.org/3/tv/" + queryString["id"] + "?api_key=052ca14131fc2be845560a604c66ffd5",
            crossDomain: true,
            dataType: "jsonp",
            jsonpCallback: 'myRoviALLTrailerCallBack',
            success: function (data) {
                console.log(data);
                var posterImage=data.poster_path;
                var rating = "Rating : " + data.vote_average + "/10 (" + data.vote_count + " votes)"
                var status = "Status : " + data.status;
                var runtime = "Episode Runtime : " + data.episode_run_time[0] + " Minutes";
                var releaseDate = "First Air Date : " + data.first_air_date;

                var genre = "Genre : ";
                if (posterImage === null) {
                    posterImage = "../images/poster_default.gif";
                }
                else {
                    posterImage = "http://image.tmdb.org/t/p/w300/" + data.poster_path;
                }

                for (i = 0; i < data.genres.length; i++) {
                    genre = genre + data.genres[i].name;
                    if (i != data.genres.length - 1) {
                        genre = genre + ",";
                    }
                }


                $(".page-header h1").text(data.name);
                $(".page-header p").text(rating);
                $(".page-header img").attr("src", posterImage);
                $(".movie-body .overview").text(data.overview);
                $(".movie-body .movie-status").text(status);
                $(".movie-body .runtime").text(runtime);
                $(".movie-body .release-date").text(releaseDate);
                $(".movie-body .genre").text(genre);

                fetchCast(queryString["id"]);

            }
        });
    }
});
