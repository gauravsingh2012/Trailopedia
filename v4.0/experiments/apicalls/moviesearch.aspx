<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

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
                    The purpose of this experiment is to use rotten tomatoes api and search a movie.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            In this experiment , I call the rotten tomatoes to search for a movie through a text box. The key here is
                            to use the text as input and grap its information on the button click. Right now , I am not able to
                            retrieve other data as my developer key is not active yet. Note that I am currently using Jose 
                            Annunziato's Key so as to test whether my data is being retrieved or not.
                        </p>
                        <p>
                            Enter a movie name to retrieve the poster and the title of the movie
                        </p>


                    </div>
                    <br />

                    <form id="form1" runat="server">
                        <div class="search-div">
                            <input class="search-text" type="text" placeholder="Enter Movie Name" />&nbsp
                            <button type="button" class="retrieve-movie">Search</button>
                        </div>

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
                                <li><a href="../../fileview/Default.aspx?~/experiments/apicalls/moviesearch.aspx">Source Code</a></li>
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
                <!-- exp-col-1 -->
            </div>
            <!-- row -->
        </div>
        <!-- main container -->
</body>
<script src="../../javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
<script src="../../javascript/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.min.js" type="text/javascript"></script>
<script src="../../javascript/jquery-2.1.0.min.js"></script>
<script src="js/moviesearch.js"></script>
</html>
