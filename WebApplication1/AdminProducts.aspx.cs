using System;
using System.Data;
using System.Data.OleDb;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AdminProducts : System.Web.UI.Page
    {
        private string connectionString =
            @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Users.accdb;Persist Security Info=False;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }


        // ============================
        // LOAD PRODUCTS
        // ============================

        private void LoadProducts()
        {
            using (OleDbConnection con =
                new OleDbConnection(connectionString))
            {
                string query =
                    "SELECT ProductId, ProductName, Price FROM Products";

                using (OleDbDataAdapter da =
                    new OleDbDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    gvProducts.DataSource = dt;

                    gvProducts.DataBind();
                }
            }
        }


        // ============================
        // ADD PRODUCT
        // ============================

        protected void btnAdd_Click(
            object sender,
            EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtProductName.Text))
            {
                lblMessage.Text =
                    "Please enter product name.";

                return;
            }

            decimal price;

            if (!decimal.TryParse(
                txtPrice.Text,
                out price))
            {
                lblMessage.Text =
                    "Please enter a valid price.";

                return;
            }


            using (OleDbConnection con =
                new OleDbConnection(connectionString))
            {
                string query =
                    "INSERT INTO Products " +
                    "(ProductName, Price) " +
                    "VALUES (?, ?)";


                using (OleDbCommand cmd =
                    new OleDbCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@ProductName",
                        txtProductName.Text.Trim());

                    cmd.Parameters.AddWithValue(
                        "@Price",
                        price);

                    con.Open();

                    cmd.ExecuteNonQuery();
                }
            }


            txtProductName.Text = "";

            txtPrice.Text = "";

            lblMessage.Text =
                "Product added successfully.";

            LoadProducts();
        }


        // ============================
        // DELETE PRODUCT
        // ============================

        protected void btnDelete_Command(
            object sender,
            CommandEventArgs e)
        {
            if (e.CommandName == "DeleteProduct")
            {
                int productId =
                    Convert.ToInt32(
                        e.CommandArgument);

                DeleteProduct(productId);

                LoadProducts();

                lblMessage.Text =
                    "Product deleted successfully.";
            }
        }


        private void DeleteProduct(
            int productId)
        {
            using (OleDbConnection con =
                new OleDbConnection(connectionString))
            {
                string query =
                    "DELETE FROM Products " +
                    "WHERE ProductId = ?";


                using (OleDbCommand cmd =
                    new OleDbCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@ProductId",
                        productId);

                    con.Open();

                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}