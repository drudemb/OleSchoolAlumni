using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Drawing;

namespace OleSchoolAlumni
{
    public partial class ApproveApps : System.Web.UI.Page
    {
        SqlConnection authDB = new SqlConnection(WebConfigurationManager.ConnectionStrings["AUTH"].ConnectionString.ToString());
        SqlConnection oleDB = new SqlConnection(WebConfigurationManager.ConnectionStrings["OleDB"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearchUser_Click(object sender, EventArgs e)
        {
            authDB.Open();
            SqlCommand command = new SqlCommand("Select * From Students where UserName = @Username", authDB);
            command.Parameters.AddWithValue("@Username", txtUsername.Text);
            SqlDataReader srd = command.ExecuteReader();
            while (srd.Read())
            {
                txtFirstName.Text = srd.GetValue(2).ToString();
                txtLastName.Text = srd.GetValue(3).ToString();
                txtEmail.Text = srd.GetValue(4).ToString();
                txtPhone.Text = srd.GetValue(5).ToString();
                txtGradY.Text = srd.GetValue(6).ToString();
                txtMajor.Text = srd.GetValue(7).ToString();
                ddlYear.SelectedValue = srd.GetValue(8).ToString();
            }
            authDB.Close();
        }

        protected void btnApprove_Click(object sender, EventArgs e)
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

        protected void btnDeny_Click(object sender, EventArgs e)
        {

        }
    }
}