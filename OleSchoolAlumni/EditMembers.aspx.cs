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
    public partial class EditMembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddMember_Click(object sender, EventArgs e)
        {
            if (txtMembUser.Text != "" && txtMembPass.Text != "" && txtMFname.Text != "" && txtMLname.Text != "" && txtMEmail.Text != "" && txtMPhone.Text != "" && txtMGrad.Text != "" && txtMJob.Text != "")
            {
                try
                {
                    System.Data.SqlClient.SqlConnection sc = new SqlConnection(WebConfigurationManager.ConnectionStrings["AUTH"].ConnectionString.ToString());
                    lblStatus.Text = "Database Connection Successful";

                    sc.Open();
                    System.Data.SqlClient.SqlCommand createMember = new System.Data.SqlClient.SqlCommand();
                    createMember.Connection = sc;
                    // INSERT Student RECORD
                    // INSERT USER RECORD
                    createMember.CommandText = "INSERT INTO Members (UserName, FirstName, LastName, EmailAddress, PhoneNumber, GraduationYear, Title) VALUES (@UserName, @FName, @LName, @Email, @Phone, @GradYear, @Title)";
                    createMember.Parameters.Add(new SqlParameter("@UserName", txtMembUser.Text));
                    createMember.Parameters.Add(new SqlParameter("@FName", txtMFname.Text));
                    createMember.Parameters.Add(new SqlParameter("@LName", txtMLname.Text));
                    createMember.Parameters.Add(new SqlParameter("@Email", txtMEmail.Text));
                    createMember.Parameters.Add(new SqlParameter("@Phone", txtMPhone.Text));
                    createMember.Parameters.Add(new SqlParameter("@GradYear", txtMGrad.Text));
                    createMember.Parameters.Add(new SqlParameter("@Title", txtMJob.Text));
                    createMember.ExecuteNonQuery();

                    System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                    setPass.Connection = sc;
                    // INSERT PASSWORD RECORD AND CONNECT TO USER
                    setPass.CommandText = "INSERT INTO MemberPass (MemberID, Username, PasswordHash) VALUES ((select max(memberid) from members), @Username, @Password)";
                    setPass.Parameters.Add(new SqlParameter("@Username", txtMembUser.Text));
                    setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(txtMembPass.Text))); // hash entered password
                    setPass.ExecuteNonQuery();

                    sc.Close();

                    lblStatus.Text = "User committed!";
                    txtMembUser.Enabled = false;
                    txtMembPass.Enabled = false;
                    txtMFname.Enabled = false;
                    txtMLname.Enabled = false;
                    txtMEmail.Enabled = false;
                    txtMPhone.Enabled = false;
                    txtMGrad.Enabled = false;
                    txtMJob.Enabled = false;
                    btnAddMember.Enabled = false;
                    
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