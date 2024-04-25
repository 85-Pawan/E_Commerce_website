using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using System.Data.SqlClient;

namespace New_Site
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddToCart("Adidas Superstar", 8999.00m, "Mens", Convert.ToInt32(DropDownList2.SelectedValue), "Images/adidas_superstar.jpg");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AddToCart("Nike SB Force", 6999.00m, "Mens", Convert.ToInt32(DropDownList1.SelectedValue), "Images/nike_sb.jpg");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            AddToCart("Reebok Classic", 7999.00m, "Mens", Convert.ToInt32(DropDownList3.SelectedValue), "Images/rbk_classic.jpg");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            AddToCart("Puma Cell Rapid", 5599.00m, "Mens", Convert.ToInt32(DropDownList4.SelectedValue), "Images/puma_white.jpg");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            AddToCart("Nike AIRMAX", 15999.00m, "Womens", Convert.ToInt32(DropDownList5.SelectedValue), "Images/nike_airmax_w.jpg");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            AddToCart("Ascis Gel-Kayano", 12999.00m, "Womens", Convert.ToInt32(DropDownList6.SelectedValue), "Images/gel_kayano_w.jpg");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            AddToCart("Puma Cruise Rider", 4999.00m, "Womens", Convert.ToInt32(DropDownList7.SelectedValue), "Images/puma_cruise_w.jpg");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            AddToCart("Adidas UltraBounce", 10999.00m, "Womens", Convert.ToInt32(DropDownList8.SelectedValue), "Images/adidas_ultra_w.jpg");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            AddToCart("Puma Future Rider", 3499.00m, "Kids", Convert.ToInt32(DropDownList9.SelectedValue), "Images/puma_future_k.jpg");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            AddToCart("Adidas Tesaur", 5999.00m, "Kids", Convert.ToInt32(DropDownList10.SelectedValue), "Images/adidas_tensaur_kjpg.jpg");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            AddToCart("Nike Slip-On", 6999.00m, "Kids", Convert.ToInt32(DropDownList11.SelectedValue), "Images/nike_slip_k.jpg");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            AddToCart("Reebok Club", 8999.00m, "Kids", Convert.ToInt32(DropDownList12.SelectedValue), "Images/rbk_club_k.jpg");
        }

        protected void AddToCart(string productName, decimal price, string category, int size, string imageURL)
        {
            
            string userID = Session["UserID"].ToString();

            
            using (SqlConnection connection = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True"))
            {
                string query = "INSERT INTO ShoppingCart (UserID, ProductName, Price, Category, Size, DateAdded, ImageURL) " +
                               "VALUES (@UserID, @ProductName, @Price, @Category, @Size, GETDATE(), @ImageURL)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                   
                    command.Parameters.AddWithValue("@UserID", userID);
                    command.Parameters.AddWithValue("@ProductName", productName);
                    command.Parameters.AddWithValue("@Price", price);
                    command.Parameters.AddWithValue("@Category", category);
                    command.Parameters.AddWithValue("@Size", size);
                    command.Parameters.AddWithValue("@ImageURL", imageURL);

                    
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                           
                            Response.Redirect("cart.aspx");
                        }
                       
                   
                    
                }
            }
        }

    }
}