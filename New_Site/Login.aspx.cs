using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;

namespace New_Site
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=DESKTOP-79DNUV8\\SQLEXPRESS;Database=mysite;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("Select * from llogin where UserId=@UserId and password1=@password1",con);
            cmd.Parameters.AddWithValue("@UserId", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password1", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);   
            DataSet ds = new DataSet();

            da.Fill(ds,"UserId");

            if (ds.Tables["UserId"].Rows.Count ==0)
            {
                ErrorMessageLabel.Visible = true;
            }
            else
            {
                Session ["sid"] = Session.SessionID;
                Session["UserId"] = TextBox1.Text;
                Response.Redirect("Home.aspx");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}