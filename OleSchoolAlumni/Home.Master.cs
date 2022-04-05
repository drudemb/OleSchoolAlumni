using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OleSchoolAlumni
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void btnMemberLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberLogin.aspx");
        }

        protected void btnEvents_Click(object sender, EventArgs e)
        {
            Response.Redirect("Events.aspx");
        }

        protected void btnAboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Response.Redirect("Apply.aspx");
        }

        protected void btnDonate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donate.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

        }
    }
}