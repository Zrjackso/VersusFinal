using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace VersusFinal3
{
    public partial class Index : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=essql1.walton.uark.edu;Initial Catalog=PROJECTF2156;User ID=PROJECTF2156;Password=MU99mac$";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {
                
                string ins = "INSERT INTO Account(FirstName,Lastname,Email,Dob,Username,Password) VALUES('" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + txtEmail.Text + "','" + txtDob.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
                SqlCommand comm = new SqlCommand(ins, sqlcon);
                sqlcon.Open();
                comm.ExecuteNonQuery();
                sqlcon.Close();
            }
        }
        void Clear()
        {
            
        }
    }
}