<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminDashboard.aspx.cs"
    Inherits="WebApplication1.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Admin Dashboard</title>

    <style>

        body
        {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f2f2f2;
        }

        .header
        {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container
        {
            width: 800px;
            max-width: 90%;
            margin: 40px auto;
            background-color: white;
            padding: 40px;
            text-align: center;
            box-sizing: border-box;
            border-radius: 8px;
        }

        .cards
        {
            display: flex;
            justify-content: space-around;
            margin: 30px 0;
        }

        .card
        {
            width: 200px;
            padding: 25px 10px;
            background-color: #eeeeee;
            border-radius: 8px;
        }

        .card h3
        {
            margin: 0 0 15px 0;
        }

        .number
        {
            font-size: 30px;
            font-weight: bold;
        }

        .button
        {
            display: inline-block;
            padding: 15px 30px;
            margin: 10px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .button:hover
        {
            background-color: #555;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="header">

        <h1>Admin Dashboard</h1>

    </div>

    <div class="container">

        <h2>Welcome Admin</h2>

        <p>Admin Control Panel</p>

        <div class="cards">

            <div class="card">

                <h3>Total Users</h3>

                <asp:Label
                    ID="lblUsers"
                    runat="server"
                    CssClass="number"
                    Text="0">
                </asp:Label>

            </div>

            <div class="card">

                <h3>Total Products</h3>

                <asp:Label
                    ID="lblProducts"
                    runat="server"
                    CssClass="number"
                    Text="0">
                </asp:Label>

            </div>

            <div class="card">

                <h3>Total Orders</h3>

                <asp:Label
                    ID="lblOrders"
                    runat="server"
                    CssClass="number"
                    Text="0">
                </asp:Label>

            </div>

        </div>

        <a href="AdminProducts.aspx" class="button">
            Manage Products
        </a>

        <a href="WebForm1.aspx" class="button">
            Home
        </a>

        <br />

        <asp:Button
            ID="btnLogout"
            runat="server"
            Text="Logout"
            CssClass="button"
            OnClick="btnLogout_Click" />

    </div>

</form>

</body>

</html>