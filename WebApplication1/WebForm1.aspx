<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="WebForm1.aspx.cs"
    Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Online Electronics Shopping</title>

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

        /* TOP MENU */

        .menu
        {
            background-color: #333;
            padding: 18px;
            text-align: center;
        }

        .menu a
        {
            color: white;
            text-decoration: none;
            font-size: 18px;
            margin: 0 30px;
        }

        .menu a:hover
        {
            color: yellow;
        }

        /* TITLE */

        .title
        {
            text-align: center;
            color: white;
            margin: 30px;
        }

        /* PRODUCTS */

        .products
        {
            width: 95%;
            margin: auto;
            text-align: center;
        }

        .product
        {
            display: inline-block;
            width: 220px;
            min-height: 310px;
            background-color: white;
            margin: 15px;
            padding: 15px;
            vertical-align: top;
            box-sizing: border-box;
        }

        .product img
        {
            width: 150px;
            height: 150px;
            object-fit: contain;
        }

        .product h3
        {
            color: #333;
        }

        .price
        {
            color: green;
            font-size: 18px;
            font-weight: bold;
        }

        /* BUY BUTTON */

        .button
        {
            padding: 10px 25px;
            font-size: 15px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <!-- MENU -->

    <div class="menu">

        <a href="WebForm1.aspx">Home</a>

        <a href="Cart.aspx">Cart</a>

        <a href="Login.aspx">Login</a>

        <a href="Register.aspx">Register</a>

    </div>


    <!-- TITLE -->

    <h1 class="title">
        Online Electronics Shopping System
    </h1>


    <!-- PRODUCTS -->

    <div class="products">


        <!-- LAPTOP -->

        <div class="product">

            <img src="Images/laptop.png"
                 alt="Laptop" />

            <h3>Laptop</h3>

            <p class="price">₹50,000</p>

            <asp:Button
                ID="btnLaptop"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnLaptop_Click" />

        </div>


        <!-- MOBILE -->

        <div class="product">

            <img src="Images/phone.png"
                 alt="Mobile Phone" />

            <h3>Mobile Phone</h3>

            <p class="price">₹20,000</p>

            <asp:Button
                ID="btnPhone"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnPhone_Click" />

        </div>


        <!-- HEADPHONE -->

        <div class="product">

            <img src="Images/headphone.png"
                 alt="Headphone" />

            <h3>Headphone</h3>

            <p class="price">₹2,000</p>

            <asp:Button
                ID="btnHeadphone"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnHeadphone_Click" />

        </div>


        <!-- KEYBOARD -->

        <div class="product">

            <img src="Images/keyboard.jpg"
                 alt="Keyboard" />

            <h3>Keyboard</h3>

            <p class="price">₹1,500</p>

            <asp:Button
                ID="btnKeyboard"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnKeyboard_Click" />

        </div>


        <!-- MOUSE -->

        <div class="product">

            <img src="Images/mouse.jpg"
                 alt="Mouse" />

            <h3>Mouse</h3>

            <p class="price">₹800</p>

            <asp:Button
                ID="btnMouse"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnMouse_Click" />

        </div>


        <!-- SMART WATCH -->

        <div class="product">

            <img src="Images/watch.png"
                 alt="Smart Watch" />

            <h3>Smart Watch</h3>

            <p class="price">₹3,000</p>

            <asp:Button
                ID="btnWatch"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnWatch_Click" />

        </div>


        <!-- SPEAKER -->

        <div class="product">

            <img src="Images/speaker.png"
                 alt="Bluetooth Speaker" />

            <h3>Bluetooth Speaker</h3>

            <p class="price">₹2,500</p>

            <asp:Button
                ID="btnSpeaker"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnSpeaker_Click" />

        </div>


        <!-- CAMERA -->

        <div class="product">

            <img src="Images/camera.png"
                 alt="Digital Camera" />

            <h3>Digital Camera</h3>

            <p class="price">₹35,000</p>

            <asp:Button
                ID="btnCamera"
                runat="server"
                Text="Buy Now"
                CssClass="button"
                OnClick="btnCamera_Click" />

        </div>


    </div>

</form>

</body>

</html>