using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace New_Site
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sid"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                
                DataTable cartData = FetchShoppingCartData();

                
                GridView1.DataSource = cartData;
                GridView1.DataBind();

                DisplayTotalPrice();
            }
        }

        private DataTable FetchShoppingCartData()
        {
            DataTable cartData = new DataTable();

            using (SqlConnection connection = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True"))
            {
                
                string userID = Session["UserID"].ToString();

                
                string query = "SELECT ProductName, Price, Category, Size, ImageURL FROM ShoppingCart WHERE UserID = @UserID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    
                    command.Parameters.AddWithValue("@UserID", userID);

                   
                    connection.Open();

                    
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(cartData);
                    }
                }
            }

            return cartData;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                string productName = e.CommandArgument.ToString();
                RemoveFromCart(productName);
            }

            BindGridView();

            
            UpdateTotalPrice();
        }

        private void RemoveFromCart(string productName)
        {
            string userID = Session["UserID"].ToString();

            using (SqlConnection connection = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True"))
            {
                string query = "DELETE FROM ShoppingCart WHERE UserID = @UserID AND ProductName = @ProductName";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UserID", userID);
                    command.Parameters.AddWithValue("@ProductName", productName);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        
                        DataTable cartData = FetchShoppingCartData();
                        GridView1.DataSource = cartData;
                        GridView1.DataBind();
                    }
                    else
                    {
                        
                    }
                }
            }
        }

        private void DisplayTotalPrice()
        {
            decimal totalPrice = CalculateTotalPrice();
            TotalPrice.Text = "<strong>Total Price:</strong> " + totalPrice.ToString("C");
        }

        private decimal CalculateTotalPrice()
        {
            decimal totalPrice = 0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    decimal price = Convert.ToDecimal(((Label)row.FindControl("Price")).Text);
                    totalPrice += price;
                }
            }
            return totalPrice;
        }

        private void BindGridView()
        {
            
            GridView1.DataSource = FetchShoppingCartData();
            GridView1.DataBind();
        }

        private void UpdateTotalPrice()
        {
            
            decimal totalPrice = CalculateTotalPrice();

            TotalPrice.Text = totalPrice.ToString("C");
        }

    }

}