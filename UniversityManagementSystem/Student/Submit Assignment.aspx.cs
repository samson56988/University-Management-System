using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;


namespace UniversityManagementSystem.Student
{
    public partial class Submit_Assignment : System.Web.UI.Page
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
            string path = "";
            F1.SaveAs(Request.PhysicalApplicationPath + "/Student/Assignment/" + F1.FileName.ToString());
            path = "Assignment/" + F1.FileName.ToString();

            SqlCommand cmd = new SqlCommand("insert into Assignment(Lecturername,Studentname,Assignment)values(@Lecturername,@Studentname,@Assignment)", con);

            cmd.Parameters.AddWithValue("@Lecturername", lecturerlist.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Studentname", txtfullname.Text.Trim());
            cmd.Parameters.AddWithValue("@Assignment", path.ToString());
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block");

        }
    }
}