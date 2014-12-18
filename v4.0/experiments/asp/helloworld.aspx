<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/asp.css" />
    <link rel="stylesheet" type="text/css" href="../../css/common.css" />
    <title>ASP Experiment</title>
</head>
<body>
    <div class="main container">
        <!-- I use div tags to create a table like structure. You can consider this as 1 row and 2 coloums structure -->
        <div class="exp-row">
            <!-- This div tag represents the first coloumn -->
            <div class="exp-col-1">
                <h2>Purpose</h2>
                <p>
                    The purpose of this experiment is to work with different for loops and arrays in asp and generate content
                    on the web page.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            In this experiment, I want to get comfortable with syntax of ASP and hence I generate different
                            hello world texts. I believe this could be a real world where we have a lot of data from the api's
                            and we might want to process them using these loops.
                        </p>

                        <p>
                            Click the button to generate a static Label content dynamically. The output that you see would be 
                            Hello World Click!
                        </p>
                    </div>
                    <br />
                    <form id="form1" runat="server">
                        <div>
                            <h2>Hello Loops in ASP</h2>
                            <p>We can generate dynamic content in asp pages by using for loops.</p>
                            <ul>
                                <%	for (int i = 0; i < 10; i++)
                                    {
                                %>
                                <li>Hello World <%= i + 1 %></li>
                                <%	}
                                %>
                            </ul>

                            <h2>Hello Array Loops in ASP</h2>
                            <p>Iterating over arrays is also possible on asp pages.</p>
                            <ol>
                                <%
                                    string[] testArray = { "testArray 1", "testArray 2", "testArray 3" };
                                    for (int i = 0; i < testArray.Length; i++)
                                    {
                                %>
                                <li>Hello World <%= testArray[ i ] %></li>
                                <%	}
                                %>
                            </ol>

                            <h2>Generate Label</h2>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Click_Me" Text="Click Me!" />
                        </div>
                    </form>
                    <hr />


                    <div class="exp-source">
                        <h2>Source</h2>
                        <p>
                            <ul>
                                <li><a href="../../fileview/Default.aspx?~/experiments/asp/helloworld.aspx">Source Code</a></li>
                            </ul>
                        </p>
                        <hr />
                    </div>

                    <div class="exp-reference">
                        <h2>References</h2>
                        <p>
                            <ul>
                                Jose Annunziato's Tutorial Page.
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
            protected void Click_Me(object sender, EventArgs e)
            {
                Label1.Text = "Hello World Click";
            }
        </script>
</body>
</html>
