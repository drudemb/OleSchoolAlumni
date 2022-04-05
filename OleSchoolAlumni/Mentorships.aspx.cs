using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace OleSchoolAlumni
{
    public partial class Mentorships : System.Web.UI.Page
    {
        SqlConnection oleDB = new SqlConnection(WebConfigurationManager.ConnectionStrings["OleDB"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            // Define the Connection to the DB
            string connStr = WebConfigurationManager.ConnectionStrings["OleDB"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            // Create our Query
            String sqlQuery =
                "Select dbo.Members.FirstName, dbo.Members.LastName, dbo.Students.FirstName, dbo.Students.LastName " +
                "FROM dbo.Students " +
                "JOIN dbo.Mentorship " +
                    "ON dbo.Students.StudentID = dbo.Mentorship.StudentID " +
                "JOIN dbo.Members " +
                    "ON dbo.Members.MemberID = dbo.Mentorship.MemberID";

            // Create the SQL Command Itself (sends the query to the DB)
            SqlCommand sqlCommand = new SqlCommand(sqlQuery, conn);


            // Issue the query and retrive the result
            conn.Open();
            SqlDataReader queryResults = sqlCommand.ExecuteReader();

            GridView1.DataSource = queryResults;
            GridView1.DataBind();

            conn.Close();
            queryResults.Close();
        }

        protected void btnAssignMentor_Click(object sender, EventArgs e)
        {
            oleDB.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO Mentorship(MemberID, StudentID)values(@member, @stu)", oleDB);
            cmd.Parameters.AddWithValue("@member", HttpUtility.HtmlEncode(ddlMemberSelection.SelectedValue));
            cmd.Parameters.AddWithValue("@stu", HttpUtility.HtmlEncode(ddlStudentSelection.SelectedValue));

            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
            DataSet dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet);

            lblConfirmation.Text = "Assign Successful!";
        }
    }
}