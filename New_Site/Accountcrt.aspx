<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accountcrt.aspx.cs" Inherits="New_Site.Accountcrt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body style="background-color:#212529">
    <div>
        <div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <h2 class="text-center text-light mt-5">Create Account</h2>
                        <div class="card my-5">
                            <form id="form2" runat="server">
                                <br />
                                <div class="text-center">
                                    <img src="Images/brand-logo-black-transparent.png" width="100px" height="50px" alt="Brand Logo" />
                                </div>
                                <br />
                               
                                <div class="mb-3 text-center">
                                    <asp:TextBox ID="UsernameTextBox" runat="server" Width="335px" placeholder="Username"></asp:TextBox>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameTextBox" ErrorMessage="Username cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <br />
                                </div>
                                <div class="mb-3 text-center">
                                    <asp:TextBox ID="EmailTextBox" runat="server" Width="335px" placeholder="Email" TextMode="Email"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Enter correct email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                                <div class="mb-3 text-center">
                                    <asp:TextBox ID="PasswordTextBox" runat="server" Width="335px" TextMode="Password" placeholder="Password"></asp:TextBox>
                                    <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ConfirmPassword" ControlToValidate="PasswordTextBox" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                                    <br />
                                </div>
                                <div class="mb-3 text-center">
                                    <asp:TextBox ID="ConfirmPassword" runat="server" Width="335px" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="UserName or Email already Exists" Visible="False"></asp:Label>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="CreateAccountButton" runat="server" OnClick="CreateAccountButton_Click" Text="Create Account" class="btn btn-color px-5 mb-5" />
                                </div>
                                <div id="emailHelp" class="form-text text-center mb-5 text-dark">Already registered? <a href="Login.aspx" class="text-dark fw-bold">Login</a></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>




</html>
