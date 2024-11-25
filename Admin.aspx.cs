using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace masterpage3
{
    public partial class Admin2 : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            strcon.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select * from admin1 where admin_id=@admin_id and password=@password";
            SqlCommand cmd = new SqlCommand(query, strcon);

            cmd.Parameters.AddWithValue("@admin_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                // Login successful, redirect to NewWebForm.aspx
                Response.Redirect("Product.aspx");
            }
            else
            {
                // No matching credentials found, display error message
                Label3.Text = "Incorrect admin ID or password.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            PasswordTextBox.Text = "";
            TextBox1.Focus();
        }
    }
}