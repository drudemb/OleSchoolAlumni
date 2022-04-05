using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OleSchoolAlumni
{
    public partial class Dash : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Makes sure user is logged in to access the page
            if (Session["UserName"] != null)
            {
                lblCurrentUser.Text = Session["UserName"].ToString();
            }
            else
            {
                Session["MustLogin"] = "You Must Be Logged In To Acces That Page!";
                Response.Redirect("Home.aspx");
            }

            if (Session["User"].ToString() == "admin")
            {
                studentSidebar.Visible = false;
                memberSidebar.Visible = false;
            }
            else if (Session["User"].ToString() == "student")
            {
                memberSidebar.Visible = false;
                adminSidebar.Visible = false;
            }
            else //member logged in
            {
                studentSidebar.Visible = false;
                adminSidebar.Visible = false;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void btnLogout1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }

        protected void btnLogout2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}