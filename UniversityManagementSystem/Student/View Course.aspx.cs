using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace UniversityManagementSystem.Student
{
    public partial class View_Course : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-J3DHBNP\SQLEXPRESS;Initial Catalog=UMS;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {

                con.Close();

            }
            con.Open();



        }

        private void Bindgrid()
        {
            using (SqlCommand cmd = new SqlCommand("Select * from Registeredcourse where Studentname='" + Session["Student"].ToString() + "'",con))
            {
                cmd.CommandType = CommandType.Text;

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                    }
                }
            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }
    }
}