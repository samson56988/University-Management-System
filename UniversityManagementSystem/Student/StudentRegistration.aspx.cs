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



namespace UniversityManagementSystem.Student
{
    public partial class StudentRegistration : System.Web.UI.Page
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
    

        protected void B1_Click(object sender, EventArgs e)
        {
            
            

                Addnewstudent();
            

        }

       

        

        public void Addnewstudent()
        {


            
             SqlCommand cmd = new SqlCommand(" insert into AddStudent (Firstname,Secondname,enrollnum,Username,Password,Email,Contact) values (@Firstname,@Secondname,@enrollnum,@Username,@Password,@Email,@Contact)", con);

            cmd.Parameters.AddWithValue("@Firstname", firstname.Text.Trim());
            cmd.Parameters.AddWithValue("@Secondname", Lastname.Text.Trim());
            cmd.Parameters.AddWithValue("@enrollnum", enrollmentno.Text.Trim());
            cmd.Parameters.AddWithValue("@Username", Username.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", Password.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@Contact", Contact.Text.Trim());

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Student Added Successfully');</script>");
            
           }

    }
}