<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Cart.aspx.cs"
    Inherits="WebApplication1.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Shopping Cart</title>

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


        /* MENU */

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


        /* CART BOX */

        .cart
        {
            background-color: white;
            width: 750px;
            margin: 50px auto;
            padding: 30px;
            box-sizing: border-box;
        }

        .cart h1
        {
            text-align: center;
        }


        /* GRID */

        #gvCart
        {
            width: 100%;
            border-collapse: collapse;
        }

        #gvCart th
        {
            background-color: #333;
            color: white;
            padding: 12px;
        }

        #gvCart td
        {
            padding: 12px;
            text-align: center;
        }


        /* TOTAL */

        .total
        {
            display: block;
            text-align: right;
            color: green;
            font-size: 20px;
            font-weight: bold;
        }


        /* BUTTON */

        .button
        {
            padding: 12px 30px;
            font-size: 16px;
            display: block;
            margin: 20px auto;
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


    <!-- CART -->

    <div class="cart">

        <h1>
            Shopping Cart
        </h1>


        <asp:GridView
            ID="gvCart"
            runat="server"
            AutoGenerateColumns="false"
            OnRowCommand="gvCart_RowCommand">

            <Columns>

                <asp:BoundField
                    DataField="ProductName"
                    HeaderText="Product" />

                <asp:BoundField
                    DataField="Price"
                    HeaderText="Price"
                    DataFormatString="₹{0:N2}" />

                <asp:ButtonField
                    ButtonType="Button"
                    Text="Remove"
                    CommandName="RemoveItem" />

            </Columns>

        </asp:GridView>


        <br />


        <asp:Label
            ID="lblTotal"
            runat="server"
            CssClass="total">
        </asp:Label>


        <br />


        <asp:Button
            ID="btnCheckout"
            runat="server"
            Text="Proceed to Checkout"
            CssClass="button"
            OnClick="btnCheckout_Click" />


    </div>

</form>

</body>

</html>