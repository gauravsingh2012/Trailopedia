<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/newsFeed.css" />
    <title>RSS Feeds </title>
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
        <h1>TV News Feed</h1>
    </div>
    <br />

    <div class="container feed-container">
        <div id="feed" class="row">
            <div class="col-md-10 feedShort">
                <h3></h3>
                <p>
                </p>
                <a class="btn btn-feed pull-right marginBottom10" href="#">READ MORE</a>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script src="../javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="../css/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
    google.load("feeds", "1")
</script>
<script type="text/javascript" src="js/tvNewsFeed.js"></script>
</html>
