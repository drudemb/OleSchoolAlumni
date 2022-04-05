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
    public partial class EditStudents : System.Web.UI.Page
    {
        SqlConnection oleDB = new SqlConnection(WebConfigurationManager.ConnectionStrings["OleDB"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddStu_Click(object sender, EventArgs e)
        {
            if (txtFirstName.Text == "" || txtLastName.Text == "" || txtEmail.Text == "" || txtPhone.Text == "" || txtGradY.Text == "" || txtMajor.Text == "")
            {
                lblStatus.Text = "Text fields cannot be blank";
            }
            else
            {

                // Issue the query and retrive the result
                oleDB.Open();

                SqlCommand cmd = new SqlCommand("insert into Students(UserName, FirstName, LastName, EmailAddress, PhoneNumber, ExpectedGradYear, Major, UniversityYear)" +
                    "values(@user, @fName, @lName, @email, @phone, @gradYear, @major, @uniYear)", oleDB);
                cmd.Parameters.AddWithValue("@user", HttpUtility.HtmlEncode(txtUsername.Text));
                cmd.Parameters.AddWithValue("@fname", HttpUtility.HtmlEncode(txtFirstName.Text));
                cmd.Parameters.AddWithValue("@lName", HttpUtility.HtmlEncode(txtLastName.Text));
                cmd.Parameters.AddWithValue("@email", HttpUtility.HtmlEncode(txtEmail.Text));
                cmd.Parameters.AddWithValue("@phone", HttpUtility.HtmlEncode(txtPhone.Text));
                cmd.Parameters.AddWithValue("@gradYear", HttpUtility.HtmlEncode(txtGradY.Text));
                cmd.Parameters.AddWithValue("@major", HttpUtility.HtmlEncode(txtMajor.Text));
                cmd.Parameters.AddWithValue("@uniYear", HttpUtility.HtmlEncode(ddlYear.SelectedValue));

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet);

                lblStatus.Text = "Data has been sent to the DB";
                oleDB.Close();
            }
        }
    }
}