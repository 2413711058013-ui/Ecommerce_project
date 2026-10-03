using System;

namespace WebApplication1
{
    public partial class OrderSuccess :
        System.Web.UI.Page
    {
        protected void Page_Load(
            object sender,
            EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["PaymentMethod"] != null)
                {
                    lblPayment.Text =
                        Session["PaymentMethod"].ToString();
                }
            }
        }


        protected void btnHome_Click(
            object sender,
            EventArgs e)
        {
            Session["Cart"] = null;

            Session["PaymentMethod"] = null;

            Response.Redirect(
                "WebForm1.aspx");
        }

    }
}