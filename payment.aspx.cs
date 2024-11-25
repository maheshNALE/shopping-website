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
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Your connection string
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to insert data into the database
            string query = "INSERT INTO payment (fullnm, whatsapp_number, email) VALUES (@fullnm, @whatsapp_number, @email)";

            // Create a SqlConnection and SqlCommand
            using (SqlConnection connection = new SqlConnection(connectionString))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Add parameters to the SqlCommand
                command.Parameters.AddWithValue("@fullnm", TextBox1.Text);
                command.Parameters.AddWithValue("@whatsapp_number", TextBox2.Text);
                command.Parameters.AddWithValue("@email", TextBox3.Text);

                try
                {
                    // Open the connection
                    connection.Open();

                    // Execute the SqlCommand
                    int rowsAffected = command.ExecuteNonQuery();

                    // Check if the insertion was successful
                    if (rowsAffected > 0)
                    {
                        // Data inserted successfully
                        // You can perform any additional actions here
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        Response.Redirect("download.aspx");
                    }
                    else
                    {
                        // Insertion failed
                        // You can handle this scenario as per your requirement
                        // For example, display an error message to the user
                        Label1.Text = "Failed to insert data into the database.";
                    }
                }
                catch (Exception ex)
                {
                    // Handle the exception
                    // For example, display an error message to the user
                    Label1.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }
}