using System;
using System.Data;
using System.Data.SqlClient;

namespace VersusFinal3
{
    public partial class Play : System.Web.UI.Page

    {
        string PROJECTF2156ConnectionString1 = @"Data Source=essql1.walton.uark.edu;Initial Catalog=PROJECTF2156;User ID=PROJECTF2156;Password=MU99mac$";
        public DataTable GetDataTable(string sql)
        {
            DataTable dt = new DataTable();

            SqlConnection conn = new SqlConnection(PROJECTF2156ConnectionString1);

            string sql1 = "SELECT * FROM Passing";
            DataTable dt1 = GetDataTable(sql1);
           

            GridView1.DataSource = dt1;
            GridView1.DataBind();
           

            using (conn) ;
            {
                SqlDataAdapter da = new SqlDataAdapter(sql1, conn);
                da.Fill(dt1);
               
            }
            return dt1;

           




        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            
        }

       
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = GridView2.SelectedRow.Cells[2].Text;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }


}