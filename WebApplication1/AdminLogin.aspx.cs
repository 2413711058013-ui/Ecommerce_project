using System;
using System.Configuration;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (username == "" || password == "")
            {
                lblMessage.Text = "Please enter username and password.";
                return;
            }

            string connectionString =
                ConfigurationManager.ConnectionStrings["ElectronicsDB"].ConnectionString;

            using (OleDbConnection con = new OleDbConnection(connectionString))
            {
                try
                {
                    con.Open();

                    string query =
                        "SELECT COUNT(*) FROM [Admin] WHERE [username] = ? AND [password] = ?";

                    using (OleDbCommand cmd = new OleDbCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", username);
                        cmd.Parameters.AddWithValue("@password", password);

                        int count = Convert.ToInt32(cmd.ExecuteScalar());

                        if (count > 0)
                        {
                            Session["AdminUsername"] = username;
                            Response.Redirect("AdminDashboard.aspx");
                        }
                        else
                        {
                            lblMessage.Text = "Invalid admin username or password.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Database Error: " + ex.Message;
                }
            }
        }
    }
}