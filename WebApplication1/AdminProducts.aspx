<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="AdminProducts.aspx.cs"
    Inherits="WebApplication1.AdminProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Manage Products</title>

    <style>
        body {
            font-family: Arial;
            margin: 40px;
            background-color: #f5f5f5;
        }

        .container {
            width: 800px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
        }

        h2 {
            margin-bottom: 25px;
        }

        .form-row {
            margin-bottom: 15px;
        }

        .form-row label {
            display: inline-block;
            width: 120px;
        }

        .textbox {
            width: 250px;
            padding: 8px;
        }

        .button {
            padding: 8px 20px;
            cursor: pointer;
        }

        .message {
            display: block;
            margin: 15px 0;
            font-weight: bold;
        }

        .grid {
            width: 100%;
            margin-top: 25px;
        }

        .grid th {
            padding: 10px;
            background-color: #333;
            color: white;
        }

        .grid td {
            padding: 10px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="container">

        <h2>Manage Products</h2>

        <!-- ADD PRODUCT -->

        <div class="form-row">

            <label>Product Name:</label>

            <asp:TextBox
                ID="txtProductName"
                runat="server"
                CssClass="textbox">
            </asp:TextBox>

        </div>

        <div class="form-row">

            <label>Price:</label>

            <asp:TextBox
                ID="txtPrice"
                runat="server"
                CssClass="textbox">
            </asp:TextBox>

        </div>

        <asp:Button
            ID="btnAdd"
            runat="server"
            Text="Add Product"
            CssClass="button"
            OnClick="btnAdd_Click" />

        <asp:Label
            ID="lblMessage"
            runat="server"
            CssClass="message">
        </asp:Label>


        <!-- PRODUCT LIST -->

        <asp:GridView
            ID="gvProducts"
            runat="server"
            AutoGenerateColumns="False"
            CssClass="grid"
            DataKeyNames="ProductId">

            <Columns>

                <asp:BoundField
                    DataField="ProductId"
                    HeaderText="ID" />

                <asp:BoundField
                    DataField="ProductName"
                    HeaderText="Product Name" />

                <asp:BoundField
                    DataField="Price"
                    HeaderText="Price" />

                <asp:TemplateField
                    HeaderText="Action">

                    <ItemTemplate>

                        <asp:Button
                            ID="btnDelete"
                            runat="server"
                            Text="Delete"
                            CommandName="DeleteProduct"
                            CommandArgument='<%# Eval("ProductId") %>'
                            OnCommand="btnDelete_Command"
                            OnClientClick="return confirm('Are you sure you want to delete this product?');" />

                    </ItemTemplate>

                </asp:TemplateField>

            </Columns>

        </asp:GridView>

    </div>

</form>

</body>
</html>