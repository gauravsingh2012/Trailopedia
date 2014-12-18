$(document).ready(function () {
    $(".retrieve-movie").click(function () {
        console.log($(".search-text").val());
        var searchMovie = $(".search-text").val();
        var movieContainer = $(".movie-container")
        var movieDisplay = $(".movie-display");
        var movieTitle = $(".header-template");
        var moviePoster = $(".imgtag-template");

        movieDisplay.empty();
        movieContainer.show();
        $.ajax({
            url: "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=cjm9kk39vw6ch2xk94d667r5&q=" + searchMovie + "&page-limit=5",
            dataType: "jsonp",
            jsonpCallback: 'myRottenCallBack',
            success: function (data) {
                console.log(data);
                console.log(data.movies[0].posters.thumbnail);
                for (var i = 0; i < data.movies.length; i++) {
                    var movieDisplayClone = movieDisplay.clone();
                    var movieTitleClone = movieTitle.clone();
                    var moviePosterClone = moviePoster.clone();
                    movieTitleClone.text(data.movies[i].title);
                    moviePosterClone.attr("src", data.movies[i].posters.thumbnail);
                    movieDisplayClone.append(moviePosterClone, movieTitleClone);
                    movieContainer.append(movieDisplayClone);
                }

            }
        });
    });
});