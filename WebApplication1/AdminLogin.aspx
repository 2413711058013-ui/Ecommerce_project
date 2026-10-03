<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminLogin.aspx.cs"
    Inherits="WebApplication1.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Admin Login</title>

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;

            background-image: url('Images/background.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;

            min-height: 100vh;
        }

        .top-menu {
            width: 100%;
            background-color: rgba(0,0,0,0.75);
            padding: 18px 30px;
        }

        .home {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .home:hover {
            color: yellow;
        }

        .login-container {
            width: 500px;
            max-width: 90%;

            background-color: rgba(255,255,255,0.95);

            margin: 80px auto;

            padding: 40px;

            border-radius: 10px;

            box-shadow: 0px 5px 25px rgba(0,0,0,0.4);
        }

        .login-container h1 {
            text-align: center;
            margin-bottom: 35px;
            color: #333;
        }

        .label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
        }

        .textbox {
            width: 100%;
            padding: 13px;

            border: 1px solid #ccc;
            border-radius: 5px;

            font-size: 16px;

            margin-bottom: 20px;
        }

        .login-button {
            display: block;

            margin: 25px auto 15px auto;

            padding: 13px 35px;

            background-color: #333;

            color: white;

            border: none;

            border-radius: 5px;

            font-size: 16px;

            cursor: pointer;
        }

        .login-button:hover {
            background-color: #555;
        }

        .message {
            display: block;

            text-align: center;

            margin-top: 20px;

            color: red;

            font-weight: bold;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="top-menu">

        <a href="WebForm1.aspx" class="home">
            Home
        </a>

    </div>


    <div class="login-container">

        <h1>Admin Login</h1>


        <asp:Label
            ID="lblUsername"
            runat="server"
            Text="Username"
            CssClass="label">
        </asp:Label>


        <asp:TextBox
            ID="txtUsername"
            runat="server"
            CssClass="textbox">
        </asp:TextBox>


        <asp:Label
            ID="lblPassword"
            runat="server"
            Text="Password"
            CssClass="label">
        </asp:Label>


        <asp:TextBox
            ID="txtPassword"
            runat="server"
            TextMode="Password"
            CssClass="textbox">
        </asp:TextBox>


        <asp:Button
            ID="btnLogin"
            runat="server"
            Text="Admin Login"
            CssClass="login-button"
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