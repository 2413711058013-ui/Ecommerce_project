<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="OrderSuccess.aspx.cs"
    Inherits="WebApplication1.OrderSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Order Successful</title>

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


        .success
        {
            background-color: white;
            width: 600px;
            margin: 80px auto;
            padding: 40px;
            text-align: center;
            box-sizing: border-box;
        }


        .success h1
        {
            color: green;
            margin-bottom: 25px;
        }


        .success p
        {
            font-size: 17px;
        }


        .paymentMethod
        {
            font-weight: bold;
            color: #333;
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


    <!-- HOME -->

    <div class="menu">

        <a href="WebForm1.aspx">
            Home
        </a>

    </div>


    <!-- SUCCESS -->

    <div class="success">

        <h1>
            Order Successful!
        </h1>


        <p>
            Thank you for shopping with us.
        </p>


        <p>
            Your order has been placed successfully.
        </p>


        <p>
            Payment Method:
            <br />

            <asp:Label
                ID="lblPayment"
                runat="server"
                CssClass="paymentMethod">
            </asp:Label>

        </p>


        <asp:Button
            ID="btnHome"
            runat="server"
            Text="Continue Shopping"
            CssClass="button"
            OnClick="btnHome_Click" />

    </div>

</form>

</body>

</html>