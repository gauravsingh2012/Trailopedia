<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/details.css" />
    <title>Movie Details</title>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="upcomingMovies.aspx">Trailerpedia</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-main">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Movie Trailers<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="themes">
                            <li><a tabindex="-1" href="upcomingMovies.aspx" target="_self">Upcoming Movie Trailers</a></li>
                            <li><a tabindex="-1" href="topRatedMovies.aspx" target="_self">Top Rated Movie Trailers</a></li>
                            <li><a tabindex="-1" href="popularMovies.aspx" target="_self">Popular Movie Trailers</a></li>
                            <li><a tabindex="-1" href="nowPlayingMovies.aspx" target="_self">Now Playing Movie Trailers</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">TV Trailers<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="themes">
                            <li><a tabindex="-1" href="onAirTvShows.aspx" target="_self">On Air TV Trailers</a></li>
                            <li><a tabindex="-1" href="topRatedTvShows.aspx" target="_self">Top Rated TV Trailers</a></li>
                            <li><a tabindex="-1" href="popularTvShows.aspx" target="_self">Popular TV Trailers</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Search<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="themes">
                            <li><a tabindex="-1" href="searchMovies.aspx" target="_self">Search Movies</a></li>
                            <li><a tabindex="-1" href="searchTvTrailers.aspx" target="_self">Search TV Shows</a></li>
                            <li><a tabindex="-1" href="searchTheatres.aspx" target="_self">Search Theatre</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">News<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="themes">
                            <li><a tabindex="-1" href="moviesNewsFeed.aspx" target="_self">Movies News Feed</a></li>
                            <li><a tabindex="-1" href="tvNewsFeed.aspx" target="_self">TV News Feed</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- container -->
    </div>

    <div class="container pageheader-movie-title">
        <div class="page-header">
            <img src="" />
            <div>
                <h1 id="movie"></h1>
                <p></p>

            </div>

        </div>
        <ul class="movie">
            <li>
                <div class="movie-badge primary"><a><i class="glyphicon glyphicon-record" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
                <div class="movie-panel">
                    <div class="movie-body">
                        <h3>Plot</h3>
                        <p class="overview"></p>
                    </div>
                </div>
            </li>

            <li class="movie-inverted">
                <div class="movie-badge primary"><a><i class="glyphicon glyphicon-record invert" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
                <div class="movie-panel">
                    <div class="movie-body">
                        <h3>Movie Facts</h3>
                        <p class="movie-status"></p>
                        <p class="runtime"></p>
                        <p class="budget"></p>
                        <p class="revenue"></p>
                        <p class="genre"></p>
                        <p class="release-date"></p>
                        <p><a href="#" class="btn btn-primary imdb-button" role="button">IMDB Link</a></p>
                    </div>
                </div>
            </li>

            <li class="cast-main">
                <div class="movie-badge primary"><a><i class="glyphicon glyphicon-record" rel="tooltip" id=""></i></a></div>
                <div class="movie-panel">
                    <div class="movie-body cast-container">
                        <h3>Cast</h3>
                        <div class="cast">
                            <img src="" width="45" />
                            <p></p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="movie-inverted crew-main">
                <div class="movie-badge primary"><a><i class="glyphicon glyphicon-record invert" rel="tooltip" id=""></i></a></div>
                <div class="movie-panel">
                    <div class="movie-body crew-container">
                        <h3>Crew</h3>
                        <div class="crew">
                            <img src="" width="45" />
                            <p></p>
                        </div>
                    </div>
                </div>
            </li>

            <li class="review-main">
                <div class="movie-badge primary"><a><i class="glyphicon glyphicon-record" rel="tooltip" title="11 hours ago via Twitter" id=""></i></a></div>
                <div class="movie-panel">
                    <div class="movie-body review-container">
                        <h3>Reviews</h3>
                        <div class="review">
                            <h4></h4>
                            <p></p>
                        </div>
                    </div>
                </div>
            </li>
    </div>
</body>
<script src="../javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
<script src="../css/bootstrap/js/bootstrap.js"></script>
<script src="js/movieDetails.js"></script>
</html>
