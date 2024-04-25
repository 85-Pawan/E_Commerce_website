using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace New_Site
{
    public partial class Accountcrt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void UsernameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CreateAccountButton_Click(object sender, EventArgs e)
        {
            string userId = UsernameTextBox.Text;
            string password1 = PasswordTextBox.Text;
            string email = EmailTextBox.Text;

            
            if (IsUsernameAvailable(userId) && IsEmailAvailable(email))
            {
                
                using (SqlConnection con = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True"))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO llogin (UserId, password1, email) VALUES (@UserId, @password1, @email)", con);
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@password1", password1);
                    cmd.Parameters.AddWithValue("@email", email);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                
                Response.Redirect("Login.aspx");
            }
            else
            {
                
                Label1.Text = "Username or email already exists.";
                Label1.Visible = true;
            }
        }

        
        private bool IsUsernameAvailable(string username)
        {
            
            using (SqlConnection con = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True"))
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM llogin WHERE UserId = @UserId", con);
                cmd.Parameters.AddWithValue("@UserId", username);

                con.Open();
                int count = (int)cmd.ExecuteScalar();

                
                return count == 0;
            }
        }

        
        private bool IsEmailAvailable(string email)
        {
            
            using (SqlConnection con = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True"))
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM llogin WHERE email = @Email", con);
                cmd.Parameters.AddWithValue("@Email", email);

                con.Open();
                int count = (int)cmd.ExecuteScalar();

               
                return count == 0;
            }
        }

    }
}