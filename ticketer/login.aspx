<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ticketer.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="MainCSS.css" rel="stylesheet" />
    <title></title>
    <style>

    </style>
</head>
<body>
    <form id="form1" runat="server">

                  <div class="imgcontainer">
                      <img src="assets/user.png" alt="Avatar" class="avatar"//>
                 </div>
        <div class="container">
                    <asp:Label ID="usernameLabel" runat="server" Text="Username: "></asp:Label>
                        <asp:TextBox ID="usernameTextbox" runat="server"></asp:TextBox>
                
                    <asp:Label ID="passwordLabel" runat="server" Text="Password: "></asp:Label>
                        <asp:TextBox ID="passwordTextbox" runat="server" TextMode="Password"></asp:TextBox>
                
                    <asp:Button ID="loginSubmit" runat="server" Text="Login" OnClick="loginSubmit_Click" />

                <asp:Button ID="ForgotPasswordBtn" runat="server" Text="Forgot Password" OnClick="ForgotPasswordBtn_Click"/>
            <br />
                        <asp:Label ID="loginMessage" runat="server" Text="Label"></asp:Label>

            </div>

    </form>
</body>

    <script>


    </script>
</html>
