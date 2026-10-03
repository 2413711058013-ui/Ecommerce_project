<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Login</title>

    <style type="text/css">

        body
        {
            font-family: Arial;
            margin: 0;
            background-image: url('Images/background.jpg');
            background-size: cover;
            background-attachment: fixed;
            background-position: center;
        }


        .menu
        {
            background-color: #333;
            padding: 18px;
            text-align: left;
        }

        .menu a
        {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .menu a:hover
        {
            color: yellow;
        }


        .login
        {
            background-color: white;
            width: 500px;
            margin: 60px auto;
            padding: 35px;
            box-sizing: border-box;
        }


        .login h1
        {
            text-align: center;
            margin-bottom: 30px;
        }


        .textbox
        {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            box-sizing: border-box;
            font-size: 15px;
        }


        .button
        {
            padding: 12px 30px;
            font-size: 16px;
            display: block;
            margin: 20px auto;
        }


        .message
        {
            color: red;
            font-weight: bold;
            display: block;
            text-align: center;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">


    <div class="menu">

        <a href="WebForm1.aspx">
            Home
        </a>

    </div>


    <div class="login">

        <h1>
            Login
        </h1>


        <p>
            <b>Username:</b>
        </p>

        <asp:TextBox
            ID="txtUsername"
            runat="server"
            CssClass="textbox">
        </asp:TextBox>


        <p>
            <b>Password:</b>
        </p>

        <asp:TextBox
            ID="txtPassword"
            runat="server"
            CssClass="textbox"
            TextMode="Password">
        </asp:TextBox>


        <asp:Button
            ID="btnLogin"
            runat="server"
            Text="Login"
            CssClass="button"
            OnClick="btnLogin_Click" />


        <asp:Label
            ID="lblMessage"
            runat="server"
            CssClass="message">
        </asp:Label>

    </div>

</form>

</body>

</html>