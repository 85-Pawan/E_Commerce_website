using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Site
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sid"] == null)
            {
              
                    Response.Redirect("Login.aspx");
                
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["sid"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {

        }
    }
}