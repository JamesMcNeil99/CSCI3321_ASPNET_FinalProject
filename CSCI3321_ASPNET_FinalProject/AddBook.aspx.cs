﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace CSCI3321_ASPNET_FinalProject
{
    public partial class AddBook : System.Web.UI.Page
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

            cmd.CommandText = " INSERT INTO Books VALUES ('" + txtTitle.Text + "'," + drpAuthor.SelectedValue + ", " + txtPrice.Text + ", '" + txtDatePub.Text + "', " + drpPublisher.SelectedValue + " , " + drpGenre.SelectedValue + ", " + txtWordCount.Text + ")";
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}