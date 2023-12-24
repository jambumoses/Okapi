using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace restuarant
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_button_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

                connection.Open();

                if (isFormValid())
                {
                    SqlCommand command = new SqlCommand("insert into cjs_users(username,email, dof,address,country,city,gender,tel,password) values('"+username.Text+"','"+email.Text+ "','"+dof.Text+ "','"+address.Text + "','"+country.Text + "','"+city.Text + "','"+gender.Text + "','"+tel.Text + "','"+password.Text + "')",connection);
                    command.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Successful'); </script>");
                    Response.Redirect("~/login.aspx");
                    clr();
                }else
                {
                    Response.Write("<script> alert('Registration Failed'); </script>");
                }
                connection.Close();
        }// end of signupButton


        //function level
        private bool isFormValid()
        {
            if (email.Text == "") {
                Response.Write("<script> alert('Email is Invalid'); </script>");
                email.Focus();
                return false;
            }
            else if (address.Text == "") {
                Response.Write("<script> alert('Address is Invalid'); </script>");
                address.Focus();
                return false;
            }
            else if (city.Text == "") {
                Response.Write("<script> alert('City is Invalid'); </script>");
                return false;
            }
            else if (country.Text == "") {
                Response.Write("<script> alert('Country is Invalid'); </script>");
                country.Focus();
                return false;
            }
            else if (username.Text == "") {
                Response.Write("<script> alert('Username is Invalid'); </script>");
                username.Focus();
                return false;
            }
            else if (gender.Text == "") {
                Response.Write("<script> alert('Gender is Invalid'); </script>");
                gender.Focus();
                return false;
            }
            else if (dof.Text == "") {
                Response.Write("<script> alert('Date of Birth is Invalid'); </script>");
                dof.Focus();
                return false;
            }
            else if (password.Text != confirmpassword.Text) {
                Response.Write("<script> alert('Password Does Not Match'); </script>");
                password.Focus();
                return false;
            }
            return true;
        }



        private void clr()
        {
            email.Text = string.Empty;
            address.Text = string.Empty;
            city.Text = string.Empty;
            country.Text = string.Empty;
            username.Text = string.Empty;
            gender.Text = string.Empty;
            dof.Text = string.Empty;
            password.Text = string.Empty;
            confirmpassword.Text = string.Empty;
        }
    }

}