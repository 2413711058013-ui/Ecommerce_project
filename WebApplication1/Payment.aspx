<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Payment.aspx.cs"
    Inherits="WebApplication1.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">

    <title>Payment</title>

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


        /* HOME MENU */

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


        /* PAYMENT WHITE BOX */

        .payment
        {
            background-color: white;
            width: 650px;
            margin: 50px auto;
            padding: 35px;
            box-sizing: border-box;
        }

        .payment h1
        {
            text-align: center;
            margin-bottom: 30px;
        }


        /* PAYMENT OPTIONS */

        .option
        {
            margin: 18px 0;
            font-size: 18px;
        }


        /* DETAILS BOX */

        .details
        {
            background-color: #f2f2f2;
            padding: 25px;
            margin-top: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .details h3
        {
            text-align: center;
        }


        /* TEXT BOX */

        .textbox
        {
            width: 100%;
            padding: 12px;
            margin: 8px 0 15px 0;
            box-sizing: border-box;
            font-size: 15px;
        }


        /* PAYMENT BUTTON */

        .button
        {
            padding: 12px 30px;
            font-size: 16px;
            display: block;
            margin: 25px auto 0 auto;
        }


        /* QR CODE */

        .qrArea
        {
            text-align: center;
        }

        .qr
        {
            width: 220px;
            height: 220px;
            margin: 15px auto;
        }


        /* MESSAGE */

        .message
        {
            color: red;
            font-weight: bold;
            display: block;
            text-align: center;
            margin-top: 10px;
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


    <!-- PAYMENT BOX -->

    <div class="payment">

        <h1>Payment</h1>


        <p>
            <b>Select Payment Method:</b>
        </p>


        <!-- COD -->

        <div class="option">

            <asp:RadioButton
                ID="rbCOD"
                runat="server"
                GroupName="PaymentMethod"
                Text="Cash on Delivery"
                AutoPostBack="true"
                OnCheckedChanged="PaymentMethod_CheckedChanged" />

        </div>


        <!-- UPI -->

        <div class="option">

            <asp:RadioButton
                ID="rbUPI"
                runat="server"
                GroupName="PaymentMethod"
                Text="UPI / Online Payment"
                AutoPostBack="true"
                OnCheckedChanged="PaymentMethod_CheckedChanged" />

        </div>


        <!-- CARD -->

        <div class="option">

            <asp:RadioButton
                ID="rbCard"
                runat="server"
                GroupName="PaymentMethod"
                Text="Credit / Debit Card"
                AutoPostBack="true"
                OnCheckedChanged="PaymentMethod_CheckedChanged" />

        </div>


        <!-- NET BANKING -->

        <div class="option">

            <asp:RadioButton
                ID="rbNetBanking"
                runat="server"
                GroupName="PaymentMethod"
                Text="Net Banking"
                AutoPostBack="true"
                OnCheckedChanged="PaymentMethod_CheckedChanged" />

        </div>


        <asp:Label
            ID="lblMessage"
            runat="server"
            CssClass="message">
        </asp:Label>


        <!-- UPI -->

        <asp:Panel
            ID="pnlUPI"
            runat="server"
            CssClass="details"
            Visible="false">

            <div class="qrArea">

                <h3>
                    UPI / Online Payment
                </h3>

                <p>
                    Scan the QR Code to make payment.
                </p>


                <img
                    src="Images/qr.png"
                    alt="UPI QR Code"
                    class="qr" />


                <p>
                    <b>Demo UPI ID:</b>
                    electronics@upi
                </p>

                <p>
                    Use your UPI application to scan the QR code.
                </p>

            </div>

        </asp:Panel>


        <!-- CARD -->

        <asp:Panel
            ID="pnlCard"
            runat="server"
            CssClass="details"
            Visible="false">

            <h3>
                Credit / Debit Card
            </h3>


            <p>
                Card Holder Name:
            </p>

            <asp:TextBox
                ID="txtCardName"
                runat="server"
                CssClass="textbox">
            </asp:TextBox>


            <p>
                Card Number:
            </p>

            <asp:TextBox
                ID="txtCardNumber"
                runat="server"
                CssClass="textbox"
                MaxLength="16">
            </asp:TextBox>


            <p>
                Expiry Date:
            </p>

            <asp:TextBox
                ID="txtExpiry"
                runat="server"
                CssClass="textbox"
                placeholder="MM/YY">
            </asp:TextBox>


            <p>
                CVV:
            </p>

            <asp:TextBox
                ID="txtCVV"
                runat="server"
                CssClass="textbox"
                MaxLength="3"
                TextMode="Password">
            </asp:TextBox>

        </asp:Panel>


        <!-- NET BANKING -->

        <asp:Panel
            ID="pnlNetBanking"
            runat="server"
            CssClass="details"
            Visible="false">

            <h3>
                Net Banking
            </h3>


            <p>
                Select Bank:
            </p>


            <asp:DropDownList
                ID="ddlBank"
                runat="server"
                CssClass="textbox">

                <asp:ListItem
                    Text="-- Select Bank --"
                    Value="" />

                <asp:ListItem
                    Text="State Bank of India"
                    Value="SBI" />

                <asp:ListItem
                    Text="HDFC Bank"
                    Value="HDFC" />

                <asp:ListItem
                    Text="ICICI Bank"
                    Value="ICICI" />

                <asp:ListItem
                    Text="Axis Bank"
                    Value="AXIS" />

            </asp:DropDownList>

        </asp:Panel>


        <!-- COD -->

        <asp:Panel
            ID="pnlCOD"
            runat="server"
            CssClass="details"
            Visible="false">

            <h3>
                Cash on Delivery
            </h3>


            <p style="text-align:center;">

                You can pay the amount when your
                order is delivered.

            </p>


            <p style="text-align:center;">

                No online payment is required.

            </p>

        </asp:Panel>


        <!-- PAYMENT BUTTON -->

        <asp:Button
            ID="btnPay"
            runat="server"
            Text="Make Payment"
            CssClass="button"
            OnClick="btnPay_Click" />

    </div>

</form>

</body>

</html>