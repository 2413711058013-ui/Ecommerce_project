<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Checkout.aspx.cs"
    Inherits="WebApplication1.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Checkout</title>

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

        .checkout
        {
            background-color: white;
            width: 600px;
            margin: 50px auto;
            padding: 35px;
            box-sizing: border-box;
        }

        .checkout h1
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
            margin: 25px auto 0 auto;
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


    <div class="checkout">

        <h1>Checkout</h1>


        <p><b>Name:</b></p>

        <asp:TextBox
            ID="txtName"
            runat="server"
            CssClass="textbox">
        </asp:TextBox>


        <p><b>Email:</b></p>

        <asp:TextBox
            ID="txtEmail"
            runat="server"
            CssClass="textbox">
        </asp:TextBox>


        <p><b>Phone:</b></p>

        <asp:TextBox
            ID="txtPhone"
            runat="server"
            CssClass="textbox">
        </asp:TextBox>


        <p><b>Address:</b></p>

        <asp:TextBox
            ID="txtAddress"
            runat="server"
            CssClass="textbox"
            TextMode="MultiLine"
            Rows="5">
        </asp:TextBox>


        <asp:Button
            ID="btnPlaceOrder"
            runat="server"
            Text="Continue to Payment"
            CssClass="button"
            OnClick="btnPlaceOrder_Click" />

    </div>

</form>

</body>

</html>