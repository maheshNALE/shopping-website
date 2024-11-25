using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace masterpage3
{
    public partial class mob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                // Retrieve the product ID from the query string
                string productId = Request.QueryString["productId"];


                int quantity = 0;
                if (Request.QueryString["quantity"] != null)
                {
                    int.TryParse(Request.QueryString["quantity"], out quantity);
                }


                // Fetch the product details including the image path from the database
                //string query = "SELECT product_img FROM product WHERE product_id = @ProductId";
                string query = "SELECT product_img, product_nm, product_price FROM product WHERE product_id = @ProductId";

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
                {
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@ProductId", productId);
                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            // Set the ImageUrl property of the Image control to display the product image
                            ProductImage.ImageUrl = reader["product_img"].ToString();

                            // Set product name, price, and selected quantity labels
                            lblProductName.Text = "Product Name: " + reader["product_nm"].ToString();
                            lblProductPrice.Text = "Price: $" + reader["product_price"].ToString();
                            lblSelectedQuantity.Text = "Selected Quantity: " + Request.QueryString["quantity"];

                            // Calculate and display total price
                            decimal totalPrice = Convert.ToDecimal(reader["product_price"]) * Convert.ToInt32(Request.QueryString["quantity"]);
                            lblTotalPrice.Text = "Total Price: $" + totalPrice.ToString();
                        }
                    }
                }
            }
        }
    }
}


