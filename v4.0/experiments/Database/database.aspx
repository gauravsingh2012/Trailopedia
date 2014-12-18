<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../asp/css/asp.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common.css" />
    <title>Database Experiment</title>
</head>
<body>
    <div class="main container">
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <h2>Purpose</h2>
                <p>
                    The purpose of this experiment is to connect with the database and retrieve the values using
                    the Grid View.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            The Values on the page you see are extracted from the database by querying the detailsTest Table. How we
                            do this is by providing a SqlDataSource to the webpage with a select query.
                        </p>

                    </div>
                    <br />

                    <form id="form2" runat="server">
                        <asp:SqlDataSource
                            ID="GridView2SqlSource"
                            runat="server"
                            ConnectionString="<%$ ConnectionStrings:gsinghCS %>"
                            SelectCommand="SELECT * FROM gsingh.detailsTest"></asp:SqlDataSource>
                        <asp:GridView
                            ID="GridView2"
                            DataSourceID="GridView2SqlSource"
                            runat="server">
                        </asp:GridView>
                    </form>
                    <hr />

                    <div class="exp-source">
                        <h2>Source</h2>
                        <p>
                            <ul>
                                <li><a href="../../fileview/Default.aspx?~/experiments/Database/database.aspx">Source Code</a></li>
                            </ul>
                        </p>
                        <hr />
                    </div>

                    <div class="exp-reference">
                        <h2>References</h2>
                        <p>
                            <ul>
                                <li><a href="http://www.ccs.neu.edu/teaching/web/connection_strings.htm">Professor Rasala's Tutorial on Database</a></li>
                            </ul>
                        </p>
                    </div>

                </div>
                <!-- exp-col-1 -->
            </div>
            <!-- row -->
        </div>
        <!-- main container -->
    </div>
</body>
</html>

