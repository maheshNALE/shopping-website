using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace masterpage3
{
    public partial class Home1 : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }
        void LoadProducts()
        {
            string query = "SELECT * FROM product WHERE product_category = 'Mobile'";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DataList1.DataSource = reader;
                    DataList1.DataBind();
                }
            }
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            // Get the ImageButton that was clicked
            ImageButton btnAddToCart = (ImageButton)sender;

            // Get the DataListItem associated with the ImageButton
            DataListItem item = (DataListItem)btnAddToCart.NamingContainer;

            // Find the Label controls inside the DataListItem
            System.Web.UI.WebControls.Label lblProductId = (System.Web.UI.WebControls.Label)item.FindControl("Label1");
            System.Web.UI.WebControls.Label lblProductName = (System.Web.UI.WebControls.Label)item.FindControl("Label2");
            System.Web.UI.WebControls.Label lblProductPrice = (System.Web.UI.WebControls.Label)item.FindControl("Label3");

            DropDownList ddlQuantity = (DropDownList)item.FindControl("DropDownList1");


            // You can now access the product details using the labels
            string product_id = lblProductId.Text;
            string product_nm = lblProductName.Text;
            string product_price = lblProductPrice.Text;

            // Create an instance of the product class with the retrieved details
            Product product = new Product(product_id, product_nm, product_price);

            // Add the selected quantity to the product
            product.Quantity = ddlQuantity.SelectedValue;

            // Add the product to the shopping cart stored in session
            List<Product> cart = Session["Cart"] as List<Product>;
            if (cart == null)
            {
                // If the cart doesn't exist in session, create a new one
                cart = new List<Product>();
            }
            cart.Add(product);

            // Update the session variable with the updated cart
            Session["Cart"] = cart;


            // Redirect to a new page and pass the product ID as a query parameter
            Response.Redirect("show_Mob.aspx?productId=" + product_id + "&quantity=" + product.Quantity);


        }
        public class Product
        {
            public string ID { get; set; }
            public string Name { get; set; }
            public string Price { get; set; }
            public string Quantity { get; set; }


            // Constructor with three arguments
            public Product(string id, string name, string price)
            {
                ID = id;
                Name = name;
                Price = price;
            }
        }
    }
}
