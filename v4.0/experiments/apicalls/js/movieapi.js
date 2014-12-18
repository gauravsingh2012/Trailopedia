$(document).ready(function () {

    $(".retrieve-movie").click(function () {

        var movieContainer = $(".movie-container")
        var movieDisplay = $(".movie-display");
        var movieTitle = $(".header-template");
        var moviePoster = $(".imgtag-template");

        movieDisplay.empty();
        movieContainer.show();
        $.ajax({
            url: "http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=cjm9kk39vw6ch2xk94d667r5&q=" + "inception" + "&page-limit=5",
            dataType: "jsonp",
            jsonpCallback: 'myRottenCallBack',
            success: function (data) {
                console.log(data);
                console.log(data.movies[0].posters.thumbnail);
                movieTitle.text(data.movies[0].title);
                moviePoster.attr("src", data.movies[0].posters.thumbnail);
                movieDisplay.append(moviePoster, movieTitle);
                movieContainer.append(movieDisplay);
            }
        });
    });
});