using System;
using System.Data.OleDb;

namespace WebApplication1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Check empty fields
            if (txtUsername.Text.Trim() == "" ||
                txtPassword.Text == "" ||
                txtConfirmPassword.Text == "")
            {
                lblMessage.Text = "Please fill all fields.";
                return;
            }

            // Check password and confirm password
            if (txtPassword.Text != txtConfirmPassword.Text)
            {
                lblMessage.Text = "Passwords do not match.";
                return;
            }

            // Exact location of Access database
            string databasePath =
                Server.MapPath("~/App_Data/Users.accdb");

            string connectionString =
                @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" +
                databasePath + ";";

            using (OleDbConnection con =
                new OleDbConnection(connectionString))
            {
                try
                {
                    con.Open();

                    // Check whether username already exists
                    string checkQuery =
                        "SELECT COUNT(*) FROM [Users] WHERE [User name]=?";

                    using (OleDbCommand checkCmd =
                        new OleDbCommand(checkQuery, con))
                    {
                        checkCmd.Parameters.AddWithValue(
                            "@UserName",
                            txtUsername.Text.Trim());

                        int count =
                            Convert.ToInt32(
                                checkCmd.ExecuteScalar());

                        if (count > 0)
                        {
                            lblMessage.Text =
                                "Username already exists.";

                            return;
                        }
                    }

                    // Insert user
                    string insertQuery =
                        "INSERT INTO [Users] ([User name], [Password]) VALUES (?, ?)";

                    using (OleDbCommand cmd =
                        new OleDbCommand(insertQuery, con))
                    {
                        cmd.Parameters.AddWithValue(
                            "@UserName",
                            txtUsername.Text.Trim());

                        cmd.Parameters.AddWithValue(
                            "@Password",
                            txtPassword.Text);

                        int rows =
                            cmd.ExecuteNonQuery();

                        if (rows > 0)
                        {
                            lblMessage.Text =
                                "Registration successful!";

                            // Clear the fields
                            txtUsername.Text = "";
                            txtPassword.Text = "";
                            txtConfirmPassword.Text = "";
                        }
                        else
                        {
                            lblMessage.Text =
                                "Registration failed. User was not saved.";
                        }
                    }
                }
                catch (Exception ex)
                {
                    lblMessage.Text =
                        "Database Error: " + ex.Message;
                }
            }
        }
    }
}