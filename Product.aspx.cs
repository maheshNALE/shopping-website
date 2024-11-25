using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace masterpage3
{
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection strcon = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            // Determine product type (mobile or laptop)
            string productType = DropDownList1.SelectedItem.Text.ToLower();
            string imagePath = "";
            if (productType == "mobile")
            {
                // Save image into mobile image folder
                imagePath = "~/mobile_img/" + FileUpload1.FileName;
            }
            else if (productType == "laptop")
            {
                // Save image into laptop image folder
                imagePath = "~/laptop_img/" + FileUpload1.FileName;
            }
            FileUpload1.SaveAs(Server.MapPath(imagePath));

            //insert data
            string query = "insert into product values(@product_id,@product_nm,@product_category,@product_qty,@product_price,@product_img,@product_description)";
            SqlCommand cmd = new SqlCommand(query, strcon);

            // Set parameters
            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@product_nm", TextBox2.Text);
            cmd.Parameters.AddWithValue("@product_category", productType); // Use determined product type
            cmd.Parameters.AddWithValue("@product_qty", TextBox3.Text);
            cmd.Parameters.AddWithValue("@product_price", TextBox4.Text);
            cmd.Parameters.AddWithValue("@product_img", imagePath); // Use determined image path
            cmd.Parameters.AddWithValue("@product_description", TextBox5.Text);

            // Open connection
            if (strcon.State == System.Data.ConnectionState.Closed)
            {
                strcon.Open();
            }
            cmd.ExecuteNonQuery();

            //after that refresh the page
            Page_Load(sender, e);

            // show UI image
            Image1.ImageUrl = imagePath;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string query = "select * from product where product_id=@product_id";

            SqlCommand cmd = new SqlCommand(query, strcon);

            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text);

            if (strcon.State == System.Data.ConnectionState.Closed)
            {
                strcon.Open();
            }

            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (TextBox1.Text == dr["product_id"].ToString())
                {
                    //hide the dropdownlist because search case mdhe je pn pro_id
                    //select kren taychich fkt pro_category disli pahije
                    //taysathi dropdownlist shejari ek label ghetlay.
                    DropDownList1.Visible = false;
                    TextBox2.Text = dr[1].ToString();
                    Label1.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                    TextBox4.Text = dr[4].ToString();
                    Image1.ImageUrl = dr[5].ToString();
                    TextBox5.Text = dr[6].ToString();
                }
                else
                {
                    //product_id is not match
                    Label2.Text = "Please Enter Valid product_id";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DropDownList1.Visible = true;

            //update data
            string query = "update product set product_nm=@product_nm,product_category=@product_category,product_qty=@product_qty,product_price=@product_price,product_description=@product_description where product_id=@product_id";
            SqlCommand cmd = new SqlCommand(query, strcon);


            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@product_nm", TextBox2.Text);
            cmd.Parameters.AddWithValue("@product_category", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@product_qty", TextBox3.Text);
            cmd.Parameters.AddWithValue("@product_price", TextBox4.Text);
            cmd.Parameters.AddWithValue("@product_description", TextBox5.Text);


            if (strcon.State == System.Data.ConnectionState.Closed)
            {
                strcon.Open();
            }
            cmd.ExecuteNonQuery();


            Label2.Text = "Data Updated";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //delete data
            string query = "delete from product where product_id=@product_id";
            SqlCommand cmd = new SqlCommand(query, strcon);


            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text);

            if (strcon.State == System.Data.ConnectionState.Closed)
            {
                strcon.Open();
            }
            cmd.ExecuteNonQuery();

            Label2.ForeColor = System.Drawing.Color.Green;
            Label2.Text = "Data deleted successfully";


            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            Image1.ImageUrl = "";
            TextBox5.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            /*
            //save image into image folder
            string path = "~/product_img/" + FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath(path));

            DropDownList1.Visible = true;

            //update data
            string query = "update product set product_img=@product_img where product_id=@product_id";
            SqlCommand cmd = new SqlCommand(query, strcon);


            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@product_img", path);


            if (strcon.State == System.Data.ConnectionState.Closed)
            {
                strcon.Open();
            }
            cmd.ExecuteNonQuery();


            Label2.Text = "Please Enter Valid product_id";

            //after that refresh the page
            Page_Load(sender, e);

            // show UI image
            Image1.ImageUrl = path;*/

            // Determine product type (mobile or laptop)
            string productType = DropDownList1.SelectedItem.Text.ToLower();
            string imagePath = "";
            if (productType == "mobile")
            {
                // Save image into mobile image folder
                imagePath = "~/mobile_img/" + FileUpload2.FileName;
            }
            else if (productType == "laptop")
            {
                // Save image into laptop image folder
                imagePath = "~/laptop_img/" + FileUpload2.FileName;
            }
            FileUpload2.SaveAs(Server.MapPath(imagePath));

            DropDownList1.Visible = true;

            //update data
            string query = "update product set product_img=@product_img where product_id=@product_id";
            SqlCommand cmd = new SqlCommand(query, strcon);

            cmd.Parameters.AddWithValue("@product_id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@product_img", imagePath);

            if (strcon.State == System.Data.ConnectionState.Closed)
            {
                strcon.Open();
            }
            cmd.ExecuteNonQuery();

            Label2.Text = "Please Enter Valid product_id";

            //after that refresh the page
            Page_Load(sender, e);

            // show UI image
            Image1.ImageUrl = imagePath;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}