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
    public partial class detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                if (!IsPostBack)
                {
                    BindProductData();
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }


        private void BindProductData()
        {
            Int64 id = Convert.ToInt64(Request.QueryString["id"]);
            //homeshopRepeater
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

            connection.Open();
            SqlCommand command = new SqlCommand("select * from shop where item_id="+id, connection);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            Shopdetail.DataSource = dt;
            Shopdetail.DataBind();
            connection.Close();
        }

    }
}