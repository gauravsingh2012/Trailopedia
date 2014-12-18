<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../asp/css/asp.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common.css" />
    <title>Insert Database Experiment</title>
</head>
<body>
    <div class="main container">
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <h2>Purpose</h2>
                <p>
                    The purpose of this experiment is to connect with the database and insert values into the table using asp forms.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            The Values on the page you see are extracted from the database by querying the detailsTest Table. Click on the
                            new button to insert a record in the table. Observe that we do not need to provide Id's to insert. The table
                            has the property to autoincrement it.
                        </p>

                    </div>
                    <br />

                    <form id="form2" runat="server">
                        <div class="1">
                            <asp:DetailsView ID="detailsTestView"
                                runat="server" Height="50px" Width="125px" DataSourceID="detailsTest"
                                AutoGenerateInsertButton="True" OnItemInserted="insert_details">
                            </asp:DetailsView>
                            <br />
                            <asp:SqlDataSource
                                ID="detailsTest"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings:gsinghCS %>"
                                SelectCommand="SELECT [name] FROM gsingh.detailsTest" InsertCommand="INSERT INTO  gsingh.detailsTest ([name]) VALUES (@name)">
                                <InsertParameters>

                                    <asp:Parameter Name="name" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </div>

                        <div class="2">
                            <asp:GridView
                                ID="GridView2"
                                DataSourceID="SqlDataSource1"
                                runat="server">
                            </asp:GridView>

                            <asp:SqlDataSource
                                ID="SqlDataSource1"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings:gsinghCS %>"
                                SelectCommand="SELECT * FROM gsingh.detailsTest"></asp:SqlDataSource>
                        </div>
                    </form>
                    <hr />

                    <div class="exp-source">
                        <h2>Source</h2>
                        <p>
                            <ul>
                                <li><a href="../../fileview/Default.aspx?~/experiments/Database/insertDatabase.aspx">Source Code</a></li>
                            </ul>
                        </p>
                        <hr />
                    </div>

                    <div class="exp-reference">
                        <h2>References</h2>
                        <p>
                            <ul>
                                <li><a href="http://net4.ccs.neu.edu/home/jga/">Professor Jose Annunziato's Tutorial on Database</a></li>
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
    <script runat="server">
        protected void insert_details(object sender, DetailsViewInsertedEventArgs e)
        {
            Response.Redirect("insertDatabase.aspx");
        }
    </script>
</body>
</html>

