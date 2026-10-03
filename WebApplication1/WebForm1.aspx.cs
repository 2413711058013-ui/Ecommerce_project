using System;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        private void AddToCart(
            string productName,
            decimal price)
        {
            DataTable cart;

            if (Session["Cart"] == null)
            {
                cart = new DataTable();

                cart.Columns.Add("ProductName");

                cart.Columns.Add(
                    "Price",
                    typeof(decimal));

                Session["Cart"] = cart;
            }
            else
            {
                cart =
                    (DataTable)Session["Cart"];
            }


            DataRow row =
                cart.NewRow();

            row["ProductName"] =
                productName;

            row["Price"] =
                price;

            cart.Rows.Add(row);

            Session["Cart"] =
                cart;


            Response.Redirect(
                "Cart.aspx");
        }


        protected void btnLaptop_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Laptop",
                50000);
        }


        protected void btnPhone_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Mobile Phone",
                20000);
        }


        protected void btnHeadphone_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Headphone",
                2000);
        }


        protected void btnKeyboard_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Keyboard",
                1500);
        }


        protected void btnMouse_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Mouse",
                800);
        }


        protected void btnWatch_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Smart Watch",
                3000);
        }


        protected void btnSpeaker_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Bluetooth Speaker",
                2500);
        }


        protected void btnCamera_Click(
            object sender,
            EventArgs e)
        {
            AddToCart(
                "Digital Camera",
                35000);
        }

    }
}