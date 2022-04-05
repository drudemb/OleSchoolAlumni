using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OleSchoolAlumni
{
    public partial class Jobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.amazon.jobs/en/jobs/1976939/system-dev-engineer?no_int_redir=1");
        }
    }
}