<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/commonMovieTV.css" />
    <title>Now Playing Movies</title>
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

    <div class="main container">
        <h1>Now Playing Movies</h1>
    </div>
    <br />

    <div class="main container">
        <div class="row">
            <div class="movie-trailer-container col-sm-6 col-md-4">
                <div class="thumbnail brdr bgc-fff pad-10 box-shad btm-mrg-20">
                    <iframe class="iFrameYouTube" allowfullscreen=""></iframe>
                    <div class="caption">
                        <h3>Thumbnail label</h3>
                        <h5>Main Cast: </h5>
                        <p></p>
                        <p>
                            <a href="#" class="btn btn-primary movie-detail-button" role="button">Get Movie Details</a> <a href="#" class="btn btn-primary movie-trailer-button" role="button">Watch Trailer</a>
                            <label class="hidden-id-label"></label>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <center>
        <ul class="pagination pagination-lg">
          <li class = "pagination-list"><a href="#" class ="prev-page">&laquo; Prev</a></li>
          <li class = "pagination-list"><a href="#" class ="next-page">Next &raquo;</a></li>
        </ul>
    </center>
</body>
<script src="../javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
<script src="../css/bootstrap/js/bootstrap.js"></script>
<script src="js/nowPlayingMovies.js"></script>
</html>
