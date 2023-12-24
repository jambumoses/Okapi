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
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadFoods();
                loadDrinks();
                loadIce_creams();
            }
        }

        private void loadFoods()
        {
            //foodsRepeater
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from foods", connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            foodsRepeater.DataSource = dt;
            foodsRepeater.DataBind();
            connection.Close();
        }// load foods

        private void loadDrinks()
        {
            //drinksRepeater
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from drinks", connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            drinksRepeater.DataSource = dt;
            drinksRepeater.DataBind();
            connection.Close();
        }// load drinks

        private void loadIce_creams()
        {
            //icecreamRepeater
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from ice_creams", connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            icecreamRepeater.DataSource = dt;
            icecreamRepeater.DataBind();
            connection.Close();
        }// load ice-cream
    }
}