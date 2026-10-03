using System;
using System.Configuration;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminUsername"] == null)
            {
                Response.Redirect("AdminLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadCounts();
            }
        }

        private void LoadCounts()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["ElectronicsDB"].ConnectionString;

            using (OleDbConnection con =
                new OleDbConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Total Users
                    string userQuery =
                        "SELECT COUNT(*) FROM [Users]";

                    using (OleDbCommand cmd =
                        new OleDbCommand(userQuery, con))
                    {
                        lblUsers.Text =
                            Convert.ToInt32(cmd.ExecuteScalar()).ToString();
                    }

                    // Total Products
                    string productQuery =
                        "SELECT COUNT(*) FROM [Products]";

                    using (OleDbCommand cmd =
                        new OleDbCommand(productQuery, con))
                    {
                        lblProducts.Text =
                            Convert.ToInt32(cmd.ExecuteScalar()).ToString();
                    }

                    // Total Orders
                    string orderQuery =
                        "SELECT COUNT(*) FROM [Orders]";

                    using (OleDbCommand cmd =
                        new OleDbCommand(orderQuery, con))
                    {
                        lblOrders.Text =
                            Convert.ToInt32(cmd.ExecuteScalar()).ToString();
                    }
                }
                catch (Exception ex)
                {
                    lblUsers.Text = "Error";
                    lblProducts.Text = "Error";
                    lblOrders.Text = "Error";

                    Response.Write(
                        "<p style='color:red;'>Database Error: "
                        + ex.Message + "</p>");
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("AdminLogin.aspx");
        }
    }
}