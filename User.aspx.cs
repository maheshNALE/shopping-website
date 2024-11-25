using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpage3
{
    public partial class User : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            strcon.Open();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {

            string query = "select * from user1 where user_id=@user_id and password=@password";
            SqlCommand cmd = new SqlCommand(query, strcon);

            cmd.Parameters.AddWithValue("@user_id", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["User"] = TextBox3.Text;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Login Failed !!')</script>");
            }
            TextBox3.Text = "";
            PasswordTextBox.Text = "";
            TextBox3.Focus();
        }
        protected void Button4_Click1(object sender, EventArgs e)
        {

            TextBox3.Text = "";
            PasswordTextBox.Text = "";
            TextBox3.Focus();
        }
    }
}
