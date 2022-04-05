using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace OleSchoolAlumni
{
    public partial class Apply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitApp_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPass.Text != "" && txtFName.Text != "" && txtLName.Text != "" && txtEmail.Text != "" && txtPhone.Text != "" && txtGradDate.Text != "" && txtMajor.Text != "")
            {
                try
                {
                    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["AUTH"].ConnectionString.ToString());
                    lblStatus.Text = "Database Connection Successful";

                    sc.Open();

                    System.Data.SqlClient.SqlCommand createStudent = new System.Data.SqlClient.SqlCommand();
                    createStudent.Connection = sc;
                    // INSERT Student RECORD
                    createStudent.CommandText = "INSERT INTO Students (UserName, FirstName, LastName, EmailAddress, PhoneNumber, ExpectedGradYear, Major, UniversityYear) VALUES (@UserName, @FName, @LName, @Email, @Phone, @GradYear, @Major, @CYear)";
                    createStudent.Parameters.Add(new SqlParameter("@UserName", txtUsername.Text));
                    createStudent.Parameters.Add(new SqlParameter("@FName", txtFName.Text));
                    createStudent.Parameters.Add(new SqlParameter("@LName", txtLName.Text));
                    createStudent.Parameters.Add(new SqlParameter("@Email", txtEmail.Text));
                    createStudent.Parameters.Add(new SqlParameter("@Phone", txtPhone.Text));
                    createStudent.Parameters.Add(new SqlParameter("@GradYear", txtGradDate.Text));
                    createStudent.Parameters.Add(new SqlParameter("@Major", txtMajor.Text));
                    createStudent.Parameters.Add(new SqlParameter("@CYear", ddlYear.SelectedValue));
                    createStudent.ExecuteNonQuery();

                    System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                    setPass.Connection = sc;
                    // INSERT PASSWORD RECORD AND CONNECT TO STUDENT
                    setPass.CommandText = "INSERT INTO StudentPass (StudentID, Username, PasswordHash) VALUES ((select max(studentid) from students), @Username, @Password)";
                    setPass.Parameters.Add(new SqlParameter("@Username", txtUsername.Text));
                    setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(txtPass.Text))); // hash entered password
                    setPass.ExecuteNonQuery();

                    sc.Close();

                    lblStatus.Text = "Application Sent!";
                    txtUsername.Enabled = false;
                    txtPass.Enabled = false;
                    txtFName.Enabled = false;
                    txtLName.Enabled = false;
                    txtEmail.Enabled = false;
                    txtPhone.Enabled = false;
                    txtGradDate.Enabled = false;
                    txtMajor.Enabled = false;
                    ddlYear.Enabled = false;
                    btnSubmitApp.Enabled = false;

                }
                catch
                {
                    lblStatus.Text = "Database Error - User not committed.";
                }
            }
            else
            {
                lblStatus.Text = "Fill all fields.";
            }
        }
    }
}