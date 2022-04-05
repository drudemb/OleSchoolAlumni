using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Web.Configuration;

namespace OleSchoolAlumni
{
    public partial class StudentLogin : System.Web.UI.Page
    {
        System.Data.SqlClient.SqlConnection authDB = new SqlConnection(WebConfigurationManager.ConnectionStrings["AUTH"].ConnectionString.ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MustLogin"] != null)
            {
                lblStatus.Text = Session["MustLogin"].ToString();
            }
            else
            {
                lblStatus.Text = "Please Login to Continue";
            }
        }

        protected void btnStudentLogin_Click(object sender, EventArgs e)
        {
            // connect to database to retrieve stored password string
            try
            {

                lblStatus.Text = "Database Connection Successful";

                authDB.Open();

                System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
                findPass.Connection = authDB;
                // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
                findPass.CommandText = "SELECT PasswordHash FROM StudentPass WHERE Username = @Username";
                findPass.Parameters.Add(new SqlParameter("@Username", HttpUtility.HtmlEncode(txtUserID.Text)));

                SqlDataReader reader = findPass.ExecuteReader(); // create a reader

                if (reader.HasRows) // if the username exists, it will continue
                {
                    while (reader.Read()) // this will read the single record that matches the entered username
                    {
                        string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable

                        if (PasswordHash.ValidatePassword(txtUserPass.Text, storedHash)) // if the entered password matches what is stored, it will show success
                        {
                            lblStatus.Text = "Success!";
                            Session["UserName"] = txtUserID.Text;
                            Session["User"] = "student";
                            Response.Redirect("Dashboard.aspx");
                        }
                        else
                            lblStatus.Text = "Password is wrong.";
                    }
                }
                else // if the username doesn't exist, it will show failure
                    lblStatus.Text = "Login failed.";

                authDB.Close();
            }
            catch
            {
                lblStatus.Text = "Database Error.";
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            Response.Redirect("Apply.aspx");
        }
    }
}