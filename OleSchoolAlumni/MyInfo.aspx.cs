using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OleSchoolAlumni
{
    public partial class MyInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"].ToString() == "member")
            {
                StudentSection.Visible = false;
                
                sqlsrcMemberQuery.SelectCommand = "Select * FROM Members WHERE UserName = " + "'" + Session["UserName"].ToString() + "'";
            }
            else
            {
                MemberSection.Visible = false;
                sqlsrcStudentQuery.SelectCommand = "Select * FROM Students WHERE UserName = " + "'" + Session["UserName"].ToString() + "'";
            }
        }
    }
}