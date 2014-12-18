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
                    The purpose of this experiment is to create form elements using ASP like text box , radio buttons and 
                    Labels and generate content ddynamically.
                </p>

                <hr />
                <div class="exp-main">
                    <h2>Experiment</h2>
                    <div class="exp-content">
                        <p>
                            Enter the values in the form and submit the form to see values being generated dynamically on the 
                            page. This experiment combines the basics of the previous experiments and is a very good start for
                            a sign up page for my project.
                        </p>

                    </div>
                    <br />

                    <form id="form1" runat="server">
                        <div>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Field</th>
                                        <th>Values</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Name</td>
                                        <td>
                                            <asp:TextBox ID="nameInput" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="nameInput"
                                                ErrorMessage="Name is a required field."
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="regexpName" runat="server"
                                                ErrorMessage="Please Enter Only Characters"
                                                ControlToValidate="nameInput"
                                                ForeColor="Red"
                                                ValidationExpression="^[a-zA-Z]*$" />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Age</td>
                                        <td>
                                            <asp:TextBox ID="ageInput" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                ControlToValidate="ageInput"
                                                ErrorMessage="Age is a required field."
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                            <asp:CompareValidator ID="CompareValidator2" runat="server"
                                                ForeColor="Red"
                                                ControlToValidate="ageInput"
                                                ValueToCompare="0"
                                                Type="Integer"
                                                Operator="GreaterThanEqual"
                                                ErrorMessage="Please Enter only Integers">
                                            </asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Gender</td>
                                        <td>
                                            <asp:RadioButton ID="male" Text="Male" Checked="True" GroupName="gender" runat="server" />
                                        </td>
                                        <td>
                                            <asp:RadioButton ID="female" Text="Female" GroupName="gender" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <table>
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Age</th>
                                        <th>Gender</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="ageLabel" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="genderLabel" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </form>
                    <hr />

                    <div class="exp-source">
                        <h2>Source</h2>
                        <p>
                            <ul>
                                <li><a href="../../fileview/Default.aspx?~/experiments/asp/form.aspx">Source Code</a></li>
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
            protected void Button1_Click(object sender, EventArgs e)
            {
                nameLabel.Text = nameInput.Text;
                ageLabel.Text = ageInput.Text;
                if (male.Checked)
                {
                    genderLabel.Text = male.Text;
                }
                else if (female.Checked)
                {
                    genderLabel.Text = female.Text;
                }
            }
        </script>
</body>
</html>
