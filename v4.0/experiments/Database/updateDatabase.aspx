<%@ Page Language="C#" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../asp/css/asp.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common.css" />
    <title>Update Database Experiment</title>
</head>
<body>
    <div class="main container">
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <h2>Purpose</h2>
                <p>
                    The purpose of this experiment is to connect with the database and update values into the table using asp elements.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            The Values on the page you see are extracted from the database by querying the detailsTest Table. Click on edit
                            to change the Name Values in the database.
                        </p>

                    </div>
                    <br />

                    <form id="form2" runat="server">
                        <div class="1">
                            <asp:SqlDataSource
                                ID="detailsTest"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings:gsinghCS %>"
                                SelectCommand="SELECT [id],[name] FROM gsingh.detailsTest" UpdateCommand="Update gsingh.detailsTest Set name = @name where id = @id">
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                        <div class="2">
                            <asp:GridView
                                ID="GridView2"
                                DataSourceID="detailsTest"
                                runat="server" DataKeyNames="Id" AutoGenerateColumns="False" AllowSorting="True" AutoGenerateEditButton="True" CellPadding="4" AllowPaging="True">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="Name" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </form>
                    <hr />

                    <div class="exp-source">
                        <h2>Source</h2>
                        <p>
                            <ul>
                                <li><a href="../../fileview/Default.aspx?~/experiments/Database/updateDatabase.aspx">Source Code</a></li>
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

