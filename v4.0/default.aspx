<%@ Page Language="C#" %>

<script runat="server">
    <%-- This demo page has no server side script --%>
</script>

<!DOCTYPE html>

<html lang="en">

<head>

<meta charset='utf-8' />
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
<title>Gaurav Singh's Home Page</title>

<style type="text/css" media="screen">

</style>
<link rel="stylesheet" type="text/css" href="css/header.css" />
</head>

<body>

<div class="pad">

<form id="form1" runat="server">

<!-- main container -->
    <div class="navigationbar navigationbar-fixed-header" role="navigation">
        <div class="containerheader">
            <div class="navigationbar-header">
                <a class="navbar-brand" href="#">Gaurav Singh</a>
            </div> <!-- navigation bar header -->
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="blog/" target="_blank">Blog</a></li>
                    <li><a href="project/upcomingMovies.aspx" target="_blank">Project</a></li>
                    <li><a href="http://net4.ccs.neu.edu/home/gsingh/story/index.htm?../documentation/story.txt" target="_blank">Project Documentation</a></li>
                </ul>
            </div> <!-- collapse -->
        </div><!-- container -->
    </div><!-- navigationbar -->
<div>

<div class="main container">        
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <div class ="header-divs">
                    <div class ="ui-header">About Me</div>
                </div>
                <div class ="split-text-image-block">
                    <div class = "div-image-block" >
                        <img class="exp-responsive-image" src="images/GauravSingh.gif" alt="Smiley face" height="200" width="150" />
                    </div>
                    <div class = "div-text-block">
                        <p>
                        Hi I am Gaurav Singh. I am currently pursuing master of science in computer science at Northeastern Univerty. I am developing
                        this website under the guidance of Jose Annunziato. The main goal of this course is to understand HTML and CSS through experiments.
                       </p>
                       <p>
                           The topics that I intend to explore in depth are responsive design, jQuery, Information Retrieval and 
                           possibly a lot of beautiful CSS.
                       </p>
                    </div>
                </div>                
            </div><!-- exp-col-1 -->

            <!--this tag is used for creating a side bar and is the second coloumn-->
                <div class="exp-col-2">
                    <div class ="header-divs">
                        <div class ="ui-header">Connect With Me</div>
                    </div>
                    <div class ="connect-divs">
                        <div class="exp-social-media-buttons">
                            <a href="https://www.facebook.com/gaurav.singh.35" title="Connect With Me on Facebook"><img class="fade" src="images/Facebook.png" /></a>
                            <a href="https://www.linkedin.com/in/gauravsinghgs/" title="Connect With Me on LinkedIn"><img class="fade" src="images/linkedin.png" /></a>
                            <a href="https://www.google.com/+GauravSingh2012" title="Connect With Me on GooglePlus"><img class="fade" src="images/googleplus.png" /></a>
                            <a href="mailto:gaurav.singh2012@gmail.com" title="Connect With Me on E-mail"><img class="fade" src="images/Gmail-icon.png" /></a>
                            <a href="http://www.twitter.com/GauravSingh500" title="Connect With Me on Twitter"><img class="fade" src="images/twitter.png" /></a>
                        </div>
                    </div>
                    <div class ="header-divs">
                        <div class ="ui-header">Quick Links</div>
                    </div>
                    <div class = "quick-links">
                        <ul>
                            <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
                            <li><a href="statistics/" target="_blank">Statistics</a></li>
                            <li><a href="source/" target="_blank">Source</a></li>
                            <li><a href="search/" target="_blank">Search</a></li>
                            <li><a href="searchtree/" target="_blank">SearchTree</a></li>
                            <li><a href="textview/" target="_blank">TextView</a></li>
                            <li><a href="filelist.aspx" target="_blank">FileList</a></li>
                            <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
                            <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
                        </ul>
                    </div>
                </div><!-- exp-col-2 -->
        </div><!-- row -->
</div><!-- main container -->    
</div>

</form>

</div>
<div class="footer">
    <div class="git-hub">
        <a href ="https://github.com/gauravsingh2012" target ="_blank">Github</a>
        <br />
        <p>Follow Me On My Github for my work</p>
    </div>
    <div class="experiments">
        <a href ="experiments.html" target ="_blank">Experiments</a>
        <br />
        <p>My Experiments for Web Development</p>
    </div>
    <div class="resume">
        <a href ="Gaurav Singh.pdf" target ="_blank">Resume</a>
        <br />
        <p>Click Resume for a detailed CV</p>
    </div>
</div>
<script src="javascript/jquery-2.1.0.min.js" type="text/javascript"></script>
<script src="javascript/homePage.js" type="text/javascript"></script>
</body>
</html>
