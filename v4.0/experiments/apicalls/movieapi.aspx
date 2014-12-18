<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../asp/css/asp.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common.css" />
    <title>API Experiment</title>
</head>


<body>
    <div class="templates">
        <h2 class="header-template"></h2>
        <img class="imgtag-template" src="#" />
        <div class="next-line"></div>
    </div>
    <div class="main container">
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <h2>Purpose</h2>
                <p>
                    The purpose of this experiment is to use rotten tomatoes api and retrieve a list of movies.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            In this experiment, my primary motive was to use the rotten tomatoes api with the developer key that I generated
                            from the website. The hack here is to the callback method and retrieve the data as typr jsonp.

                        </p>
                        <p>
                            Click the button to retrieve the movie Inception.
                        </p>


                    </div>
                    <br />

                    <form id="form1" runat="server">
                        <button type="button" class="retrieve-movie">Click Me To generate the Movie Inception!</button>
                        <br />
                        <br />
                        <div class="movie-container">
                            <div class="movie-display">
                                <img class="movie-poster" src="#" />
                                <h3 class="movie-title">Demo Title</h3>
                            </div>
                        </div>
                    </form>
                    <hr />


                    <div class="exp-source">
                        <h2>Source</h2>
                        <p>
                            <ul>
                                <li><a href="../../fileview/Default.aspx?~/experiments/apicalls/movieapi.aspx">Source Code</a></li>
                            </ul>
                        </p>
                        <hr />
                    </div>

                    <div class="exp-reference">
                        <h2>References</h2>
                        <p>
                            <ul>
                                Jose Annunziato's Tutorial on working with Web Services.
                            </ul>
                        </p>
                    </div>

                </div>
            </div>
            <!-- exp-col-1 -->
        </div>
        <!-- row -->
    </div>
    <!-- main container -->
    <script src="../../javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
    <script src="../../javascript/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
    <script src="../../javascript/jquery-2.1.0.min.js"></script>
    <script src="js/movieapi.js"></script>
</body>
</html>
