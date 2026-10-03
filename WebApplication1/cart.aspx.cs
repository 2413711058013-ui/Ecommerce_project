using System;
using System.Data;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayCart();
            }
        }

        private void DisplayCart()
        {
            if (Session["Cart"] == null)
            {
                lblTotal.Text = "Your cart is empty.";
                btnCheckout.Visible = false;
                return;
            }

            DataTable cart = (DataTable)Session["Cart"];

            gvCart.DataSource = cart;
            gvCart.DataBind();

            decimal total = 0;

            foreach (DataRow row in cart.Rows)
            {
                total += Convert.ToDecimal(row["Price"]);
            }

            lblTotal.Text = "Total Amount: ₹" + total.ToString("N2");

            btnCheckout.Visible = true;
        }

        protected void gvCart_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveItem")
            {
                int index = Convert.ToInt32(e.CommandArgument);

                DataTable cart = (DataTable)Session["Cart"];

                if (cart != null && index < cart.Rows.Count)
                {
                    cart.Rows.RemoveAt(index);

                    Session["Cart"] = cart;
                }

                DisplayCart();
            }
        }

        protected void btnCheckout_Click(
            object sender,
            EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }
    }
}