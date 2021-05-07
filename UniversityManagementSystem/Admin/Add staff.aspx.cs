using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;


namespace UniversityManagementSystem.Admin
{
    public partial class Add_staff : System.Web.UI.Page
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

        public void Addnewstaff()
        {



            SqlCommand cmd = new SqlCommand(" insert into AddStaff (Fullname,Firstname,Secondname,Username,Password,Email,Contact,Department) values (@Fullname,@Firstname,@Secondname,@Username,@Password,@Email,@Contact,@Department)", con);
            cmd.Parameters.AddWithValue("@Fullname", fullname.Text.Trim());
            cmd.Parameters.AddWithValue("@Firstname", firstname.Text.Trim());
            cmd.Parameters.AddWithValue("@Secondname", Lastname.Text.Trim());

            cmd.Parameters.AddWithValue("@Username", Username.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@Contact", Contact.Text.Trim());
            cmd.Parameters.AddWithValue("@Department", DropDownList1.SelectedItem.Value);


            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Staff Added Successfully');</script>");

        }

        protected void B1_Click(object sender, EventArgs e)
        {
            Addnewstaff();
        }
    }
}