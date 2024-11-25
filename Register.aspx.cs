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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            strcon.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            /*Valid Password:-
               minimum length(8),both uppercase and lowercase letters,
               at least one digit, and may include special characters.*/
            {
                string query = "insert into user1 (user_id,username,email,password,confirm_password,first_name,last_name,mobile_number) values(@user_id,@username,@email,@password,@confirm_password,@first_name,@last_name,@mobile_number)";
                SqlCommand cmd = new SqlCommand(query, strcon);

                cmd.Parameters.AddWithValue("@user_id", TextBox10.Text);
                cmd.Parameters.AddWithValue("@username", TextBox11.Text);
                cmd.Parameters.AddWithValue("@email", TextBox12.Text);
                cmd.Parameters.AddWithValue("@password", TextBox13.Text);
                cmd.Parameters.AddWithValue("@confirm_password", TextBox14.Text);
                cmd.Parameters.AddWithValue("@first_name", TextBox15.Text);
                cmd.Parameters.AddWithValue("@last_name", TextBox16.Text);
                cmd.Parameters.AddWithValue("@mobile_number", TextBox17.Text);


                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Label1.Text = "User Registered Successfully";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label1.Text = "Please check the Error";
                    Label1.ForeColor = System.Drawing.Color.DarkRed;
                }
            }
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
        }
    }
}