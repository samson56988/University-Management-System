using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;


namespace UniversityManagementSystem.Admin
{
    public partial class Addcourse : System.Web.UI.Page
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

        protected void btnadd_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand(" insert into Addcourse (CourseName) values (@CourseName)", con);

            cmd.Parameters.AddWithValue("@CourseName", course.Text.Trim());
            

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Course Added Successfully');</script>");

        }
    }
}