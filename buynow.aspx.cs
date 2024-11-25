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
    public partial class buynow : System.Web.UI.Page
    {
        //SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call a method to retrieve address details from the database
                DisplayAddressFromDatabase();
            }
        }
        protected void DisplayAddressFromDatabase()
        {
            // Assuming you have a connection string in your web.config file
            //string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // Assuming you have a stored procedure to retrieve the address details
            string query = "SELECT fullnm, address, city, state, pincode, delivery_time, saturday_delivery, sunday_delivery, additional_info FROM address_details WHERE user_id = @UserId";

            // Assuming you have a UserId associated with the current user
            int user_id = GetUserIdFromSession(); // Implement this method to get the UserId from session or any other source

            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection strcon = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, strcon))
                {
                    command.Parameters.AddWithValue("@UserId", user_id);

                    strcon.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        TextBox1.Text = reader["fullnm"].ToString();
                        TextBox2.Text = reader["address"].ToString();
                        TextBox3.Text = reader["city"].ToString();
                        TextBox4.Text = reader["state"].ToString();
                        TextBox5.Text = reader["pin_code"].ToString();
                        DropDownList1.SelectedValue = reader["delivery_time"].ToString();

                        // Check if Saturday delivery is selected and set the CheckBoxList accordingly
                        CheckBoxList1.Items[0].Selected = Convert.ToBoolean(reader["saturday_delivery"]);

                        // Check if Sunday delivery is selected and set the CheckBoxList accordingly
                        CheckBoxList2.Items[0].Selected = Convert.ToBoolean(reader["sunday_delivery"]);

                        TextBox6.Text = reader["additional_info"].ToString();
                    }

                    reader.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Get connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // Assuming you have a method to check if the user exists in the database
            bool userExists = CheckIfUserExists(TextBox7.Text); // Pass the user_id from TextBox7

            if (userExists)
            {
                // Create SQL connection
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the connection
                    connection.Open();

                    // Create SQL command
                    string query = "INSERT INTO address_details (fullnm, address, city, state, pincode, delivery_time, saturday_delivery, sunday_delivery, additional_info,user_id) VALUES (@FullName, @Address, @City, @State, @PinCode, @DeliveryTime, @SaturdayDelivery, @SundayDelivery, @AdditionalInfo,@UserId)";
                    SqlCommand command = new SqlCommand(query, connection);

                    // Add parameters
                    command.Parameters.AddWithValue("@FullName", TextBox1.Text);
                    command.Parameters.AddWithValue("@Address", TextBox2.Text);
                    command.Parameters.AddWithValue("@City", TextBox3.Text);
                    command.Parameters.AddWithValue("@State", TextBox4.Text);
                    command.Parameters.AddWithValue("@PinCode", TextBox5.Text);
                    command.Parameters.AddWithValue("@DeliveryTime", DropDownList1.SelectedValue);
                    command.Parameters.AddWithValue("@SaturdayDelivery", CheckBoxList1.Items[0].Selected);
                    command.Parameters.AddWithValue("@SundayDelivery", CheckBoxList2.Items[0].Selected);
                    command.Parameters.AddWithValue("@AdditionalInfo", TextBox6.Text);
                    command.Parameters.AddWithValue("@UserId", TextBox7.Text);

                    // Execute the command
                    command.ExecuteNonQuery();

                    // Close the connection
                    connection.Close();
                }

                // Clear form fields after successful insertion
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                //DropDownList1.Items.Clear();
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
            else
            {
                //Label1.Text = "Invalid user ID. Please enter a valid user ID.";
            }
        }
        // Method to get the UserId associated with the current user (you need to implement this)
        protected int GetUserIdFromSession()
        {
            // Example implementation:
            return 123; // Replace with your actual logic to retrieve the UserId
        }




        // Method to check if the user exists in the database
        protected bool CheckIfUserExists(string user_id)
        {
            // Get connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // Create a flag to indicate whether the user exists
            bool userExists = false;

            // Create SQL connection
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Create SQL command to check if the user exists
                string query = "SELECT COUNT(*) FROM user1 WHERE user_id = @UserId";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserId", user_id);

                // Execute the command to get the count of users with the specified user ID
                int userCount = (int)command.ExecuteScalar();

                // If the count is greater than 0, the user exists
                if (userCount > 0)
                {
                    userExists = true;
                }

                // Close the connection
                connection.Close();
            }

            // Return the flag indicating whether the user exists
            return userExists;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Get the user ID entered by the user
            string userId = TextBox7.Text;

            // Check if the user exists in the address_details table
            if (CheckIfUserExistsInAddressDetails(userId))
            {
                // If the user exists, retrieve and display their address details
                DisplayAddressFromDatabase(userId);
            }
            else
            {

                ClearAddressFields();
                TextBox7.Text = "";

            }
        }
        protected bool CheckIfUserExistsInAddressDetails(string userId)
        {
            // Get the connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // Create a flag to indicate whether the user exists
            bool userExists = false;

            // Create SQL connection
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the connection
                connection.Open();

                // Create SQL command to check if the user exists in the address_details table
                string query = "SELECT COUNT(*) FROM address_details WHERE user_id = @UserId";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserId", userId);

                // Execute the command to get the count of users with the specified user ID
                int userCount = (int)command.ExecuteScalar();

                // If the count is greater than 0, the user exists
                if (userCount > 0)
                {
                    userExists = true;
                }

                // Close the connection
                connection.Close();
            }

            // Return the flag indicating whether the user exists
            return userExists;
        }

        protected void DisplayAddressFromDatabase(string userId)
        {
            // Get the connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // Query to retrieve address details for the given user ID
            string query = "SELECT fullnm, address, city, state, pincode, delivery_time, saturday_delivery, sunday_delivery, additional_info FROM address_details WHERE user_id = @UserId";

            using (SqlConnection strcon = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, strcon))
                {
                    command.Parameters.AddWithValue("@UserId", userId);

                    strcon.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        // Display the retrieved address details
                        TextBox1.Text = reader["fullnm"].ToString();
                        TextBox2.Text = reader["address"].ToString();
                        TextBox3.Text = reader["city"].ToString();
                        TextBox4.Text = reader["state"].ToString();
                        TextBox5.Text = reader["pincode"].ToString();
                        DropDownList1.SelectedValue = reader["delivery_time"].ToString();
                        CheckBoxList1.Items[0].Selected = Convert.ToBoolean(reader["saturday_delivery"]);
                        CheckBoxList2.Items[0].Selected = Convert.ToBoolean(reader["sunday_delivery"]);
                        TextBox6.Text = reader["additional_info"].ToString();
                    }

                    reader.Close();
                }
            }
        }

        protected void ClearAddressFields()
        {
            // Clear the address fields
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            DropDownList1.SelectedIndex = 0;
            CheckBoxList1.Items[0].Selected = false;
            CheckBoxList2.Items[0].Selected = false;
            TextBox6.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Get connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // Assuming you have a method to check if the user exists in the database
            bool userExists = CheckIfUserExists(TextBox7.Text); // Pass the user_id from TextBox7

            if (userExists)
            {
                // Create SQL connection
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the connection
                    connection.Open();

                    // Create SQL command for UPDATE
                    string query = @"UPDATE address_details 
                             SET fullnm = @FullName, address = @Address, city = @City, state = @State, 
                                 pincode = @PinCode, delivery_time = @DeliveryTime, 
                                 saturday_delivery = @SaturdayDelivery, sunday_delivery = @SundayDelivery, 
                                 additional_info = @AdditionalInfo
                             WHERE user_id = @UserId";

                    SqlCommand command = new SqlCommand(query, connection);

                    // Add parameters
                    command.Parameters.AddWithValue("@FullName", TextBox1.Text);
                    command.Parameters.AddWithValue("@Address", TextBox2.Text);
                    command.Parameters.AddWithValue("@City", TextBox3.Text);
                    command.Parameters.AddWithValue("@State", TextBox4.Text);
                    command.Parameters.AddWithValue("@PinCode", TextBox5.Text);
                    command.Parameters.AddWithValue("@DeliveryTime", DropDownList1.SelectedValue);
                    command.Parameters.AddWithValue("@SaturdayDelivery", CheckBoxList1.Items[0].Selected);
                    command.Parameters.AddWithValue("@SundayDelivery", CheckBoxList2.Items[0].Selected);
                    command.Parameters.AddWithValue("@AdditionalInfo", TextBox6.Text);
                    command.Parameters.AddWithValue("@UserId", TextBox7.Text);

                    // Execute the command
                    int rowsAffected = command.ExecuteNonQuery();

                    // Close the connection
                    connection.Close();

                    // Check if any rows were affected
                    if (rowsAffected > 0)
                    {
                        // Display success message or perform any other actions
                        // For example:
                        // Label1.Text = "Address details updated successfully.";
                    }
                    else
                    {
                        // Handle the case when no rows were affected (e.g., user ID not found)
                        // For example:
                        // Label1.Text = "User ID not found. Please enter a valid user ID.";
                    }
                }

                // Clear form fields after successful update or handle this according to your requirement
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                DropDownList1.SelectedIndex = 0;
                CheckBoxList1.Items[0].Selected = false;
                CheckBoxList2.Items[0].Selected = false;
                TextBox6.Text = "";
                TextBox7.Text = "";
            }
            else
            {
                // Handle the case when the user does not exist (e.g., display error message)
                // For example:
                // Label1.Text = "Invalid user ID. Please enter a valid user ID.";
            }
        }
    }
}
