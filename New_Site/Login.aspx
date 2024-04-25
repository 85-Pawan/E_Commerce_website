

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="New_Site.Login" %>

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
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center text-light mt-5">Login</h2>
                <div class="card my-5">
                    <form id="form1" runat="server">
                        <br />
                        <div class="text-center">
                            <img src="Images/brand-logo-black-transparent.png" width="100px" height="50px" alt="Brand Logo" />
                        </div>
                        <br />
                        <div class="mb-3 text-center">
                            <asp:TextBox ID="TextBox1" runat="server" Width="335px" placeholder="Username"></asp:TextBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Username cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                        </div>
                        <div class="mb-3 text-center">
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="335px" placeholder="Password"></asp:TextBox>
                        </div>
                        <div class="text-center"><asp:Label ID="ErrorMessageLabel" runat="server" Text="Invalid Username or Password" CssClass="text-danger" ForeColor="Red" Visible="False"></asp:Label></div>
                        <div class="text-center">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="btn btn-color px-5 mb-5 w-100" />
                        </div>
                        <div id="emailHelp" class="form-text text-center mb-5 text-dark">Not Registered? <a href="Accountcrt.aspx" class="text-dark fw-bold">Create an Account</a></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
     

</body>
</html>
