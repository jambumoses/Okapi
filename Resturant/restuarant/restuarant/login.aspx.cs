using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace restuarant
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Request.Cookies["Uemail"] != null && Request.Cookies["Upassword"] != null)
                {
                    email.Text = Request.Cookies["Uemail"].Value;
                    passwordField.Text = Request.Cookies["Upassword"].Value;
                    RememberMeCheckBox.Checked = true;
                }
            }
        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from cjs_users where email='@email' and password='@password'", connection);
            command.Parameters.AddWithValue("@email", email.Text);
            command.Parameters.AddWithValue("@password", passwordField.Text);

            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            if(dt.Rows.Count != 0)
            {
                if (RememberMeCheckBox.Checked)
                {
                    Request.Cookies["Uemail"].Value = email.Text;
                    Request.Cookies["Upassword"].Value = passwordField.Text;

                    Request.Cookies["Uemail"].Expires = DateTime.Now.AddDays(10);
                    Request.Cookies["Upassword"].Expires = DateTime.Now.AddDays(10);
                }
                else {
                    Request.Cookies["Uemail"].Expires = DateTime.Now.AddDays(-1);
                    Request.Cookies["Upassword"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["email"] = email.Text;
                Response.Redirect("~/dashboardHome.aspx");
            }
            else
            {
                iblError.Text = "Invalid Email or Password";
            }
            //                Response.Write("<script> alert('Registration Successful'); </script>");
            clr();
            connection.Close();
        }




        private void clr()
        {
            email.Text = string.Empty;
            passwordField.Text = string.Empty;
        }
    }
}