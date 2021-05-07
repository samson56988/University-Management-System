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


namespace UniversityManagementSystem.Staff
{
    public partial class Staffcomplaint : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("insert into Complaint(Complaint)values(@Complaint)", con);
            cmd.Parameters.AddWithValue("@Complaint", Complaintxt.Text.Trim());
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block");

        }
    }
}