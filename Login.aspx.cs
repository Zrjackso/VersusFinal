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
    public partial class Login : System.Web.UI.Page
    {
        string connectionstring = @"Data Source=essql1.walton.uark.edu;Initial Catalog=PROJECTF2156;User ID=PROJECTF2156;Password=MU99mac$";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlcon = new SqlConnection(connectionstring))
            {

                string chk = "SELECT COUNT(*) FROM Account WHERE Username = '" + txtUsername.Text + "' AND Password = '" + txtPassword.Text + "' ";
                SqlCommand comm = new SqlCommand(chk, sqlcon);
                sqlcon.Open();
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                sqlcon.Close();

                if(temp == 1)
                {
                    Response.Redirect("Homepage.aspx");
                }
                
                else
                {
                    Label3.ForeColor = System.Drawing.Color.Red;
                    Label3.Text = "Your Username and/or Password is incorrect";
                }
            }

        }
    }
}