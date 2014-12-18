<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/search.css" />
    <title>Search TV Shows</title>
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
                    <li>
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control search-movie" placeholder="Search" />
                            </div>
                            <button type="button" class="btn btn-default search-movie-button" onclick="getMovieTrailer()">Search TV Shows</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
        <!-- container -->
    </div>


    <div class="container-fluid">
        <div class="container container-pad" id="movie-container">

            <div class="row">
                <div class="col-md-12">
                    <br />
                    <br />
                    <h1></h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12 movie-container">
                    <div class="brdr bgc-fff pad-10 box-shad btm-mrg-20 movie-search-container">
                        <div class="media">
                            <a class="pull-left movie-details-image" href="#" target="_parent">
                                <img alt="image" class="img-responsive" src=""></a>

                            <div class="clearfix visible-sm"></div>

                            <div class="media-body fnt-smaller">
                                <a href="#" target="_parent"></a>
                                <h4 class="media-heading">
                                    <a href="#" class="movie-title movie-details-header" target="_self">Movie Name</a></h4>
                                <label class="hidden-id-label"></label>
                                <p class="hidden-xs"></p>
                                <p><a href="#" class="btn btn-primary movie-detail-button" role="button">Get TV Details</a> <a href="#" class="btn btn-primary movie-trailer-button" role="button">Watch All Trailers</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End row -->

        </div>
        <!-- End container -->
    </div>
</body>
<script src="../javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
<script src="../css/bootstrap/js/bootstrap.js"></script>
<script src="js/searchTvShows.js"></script>
</html>
