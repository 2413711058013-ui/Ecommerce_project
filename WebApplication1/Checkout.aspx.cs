using System;

namespace WebApplication1
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(
            object sender,
            EventArgs e)
        {
        }


        protected void btnPlaceOrder_Click(
            object sender,
            EventArgs e)
        {
            if (txtName.Text.Trim() == "" ||
                txtEmail.Text.Trim() == "" ||
                txtPhone.Text.Trim() == "" ||
                txtAddress.Text.Trim() == "")
            {
                Response.Write(
                    "<script>alert('Please fill all customer details!');</script>");

                return;
            }


            Session["CustomerName"] =
                txtName.Text.Trim();

            Session["CustomerEmail"] =
                txtEmail.Text.Trim();

            Session["CustomerPhone"] =
                txtPhone.Text.Trim();

            Session["CustomerAddress"] =
                txtAddress.Text.Trim();


            Response.Redirect(
                "Payment.aspx");
        }
    }
}