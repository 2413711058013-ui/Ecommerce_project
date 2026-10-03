using System;

namespace WebApplication1
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(
            object sender,
            EventArgs e)
        {
        }


        protected void PaymentMethod_CheckedChanged(
            object sender,
            EventArgs e)
        {
            pnlUPI.Visible = false;

            pnlCard.Visible = false;

            pnlNetBanking.Visible = false;

            pnlCOD.Visible = false;


            if (rbUPI.Checked)
            {
                pnlUPI.Visible = true;
            }

            else if (rbCard.Checked)
            {
                pnlCard.Visible = true;
            }

            else if (rbNetBanking.Checked)
            {
                pnlNetBanking.Visible = true;
            }

            else if (rbCOD.Checked)
            {
                pnlCOD.Visible = true;
            }
        }


        protected void btnPay_Click(
            object sender,
            EventArgs e)
        {
            string paymentMethod = "";


            if (rbUPI.Checked)
            {
                paymentMethod =
                    "UPI / Online Payment";
            }

            else if (rbCard.Checked)
            {
                paymentMethod =
                    "Credit / Debit Card";
            }

            else if (rbNetBanking.Checked)
            {
                paymentMethod =
                    "Net Banking";
            }

            else if (rbCOD.Checked)
            {
                paymentMethod =
                    "Cash on Delivery";
            }

            else
            {
                lblMessage.Text =
                    "Please select a payment method.";

                return;
            }


            Session["PaymentMethod"] =
                paymentMethod;


            Response.Redirect(
                "OrderSuccess.aspx");
        }

    }
}