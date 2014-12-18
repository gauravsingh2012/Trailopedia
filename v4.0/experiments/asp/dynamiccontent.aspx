<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/asp.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common.css" />
    <title>ASP Dynamic Content Experiment</title>
</head>
<body>
    <div class="main container">
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <h2>Purpose</h2>
                <p>
                    The purpose of this experiment is to to use a text box to generate values dynamically through a controller method.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            Enter Your name and see that the user can generate the content dynamically on the webpage. Greet yourself
                            with as many names you want. This experiments is a base for creating sign up pages and retrieving values
                            from the text boxes on button click through a controller method.
                        </p>
                    </div>
                    <br />
                    <form id="form1" runat="server">
                        <div>
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Name</td>
                                        <td>
                                            <asp:TextBox ID="nameInput" runat="server" Text="Enter Name"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" OnClick="Greet_Click" Text="Greet Yourself!" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </form>
                </div>
                <hr />


                <div class="exp-source">
                    <h2>Source</h2>
                    <p>
                        <ul>
                            <li><a href="../../fileview/Default.aspx?~/experiments/asp/dynamiccontent.aspx">Source Code</a></li>
                        </ul>
                    </p>
                    <hr />
                </div>

                <div class="exp-reference">
                    <h2>References</h2>
                    <p>
                        <ul>
                            Jose Annunziato's Tutorial on ASP pages.
                        </ul>
                    </p>
                </div>


            </div>
            <!-- exp-col-1 -->
        </div>
        <!-- row -->
    </div>
    <!-- main container -->
    <script runat="server">
        protected void Greet_Click(object sender, EventArgs e)
        {
            Label1.Text = "Hi " + nameInput.Text;
        }
    </script>
</body>
</html>
