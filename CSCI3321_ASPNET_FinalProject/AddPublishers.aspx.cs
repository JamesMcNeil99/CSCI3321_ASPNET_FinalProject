using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddPublishers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn.ConnectionString = WebConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;

            cmd.Connection = conn;

            cmd.CommandText = " INSERT INTO Publishers VALUES ('" + txtPublisherName.Text + "','" + txtAddress.Text + "', '" + txtCity.Text + "', '" + txtPostalCode.Text + "','" + txtCountry.Text + "','" + txtPhone.Text + "')";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}