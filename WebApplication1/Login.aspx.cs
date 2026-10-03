using System;

namespace WebApplication1
{
    public partial class Login :
        System.Web.UI.Page
    {
        protected void Page_Load(
            object sender,
            EventArgs e)
        {
        }


        protected void btnLogin_Click(
            object sender,
            EventArgs e)
        {
            if (Session["RegisteredUsername"] == null)
            {
                lblMessage.Text =
                    "Please register first.";

                return;
            }


            string username =
                Session["RegisteredUsername"].ToString();


            string password =
                Session["RegisteredPassword"].ToString();


            if (txtUsername.Text.Trim() ==
                    username &&
                txtPassword.Text ==
                    password)
            {
                Session["LoggedIn"] =
                    true;

                Response.Redirect(
                    "WebForm1.aspx");
            }
            else
            {
                lblMessage.Text =
                    "Invalid username or password.";
            }
        }

    }
}