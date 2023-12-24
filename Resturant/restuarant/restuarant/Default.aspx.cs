using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace restuarant
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadCategories();
                loadShop();
            }
        }


        protected void searchButton(object sender, EventArgs e)
        {
            //
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
            string search = Convert.ToString(searchInput.Text);
            connection.Open();
            SqlCommand command = new SqlCommand("select * from shop where category='" + search + "' or title='" + search + "' ", connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            homeshopRepeater.DataSource = dt;
            homeshopRepeater.DataBind();
            connection.Close();
        }

        private void loadShop()
        {
            //homeshopRepeater
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from shop", connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            homeshopRepeater.DataSource = dt;
            homeshopRepeater.DataBind();
            connection.Close();
        }


        private void loadCategories()
        {
            //categoriesRepeater
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from categories", connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            categoriesRepeater.DataSource = dt;
            categoriesRepeater.DataBind();
            connection.Close();
        }// load foods
    }
}