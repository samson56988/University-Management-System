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
    public partial class Payment : System.Web.UI.Page
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
            F1.SaveAs(Request.PhysicalApplicationPath + "/Student/payment_slip/" + F1.FileName.ToString());
            path = "payment_slip/" + F1.FileName.ToString();

            SqlCommand cmd = new SqlCommand("insert into PaymentSlip(StudentName,Year,Paymentslip)values(@StudentName,@Year,@Paymentslip)", con);

            cmd.Parameters.AddWithValue("@StudentName", txtname.Text.Trim());
            cmd.Parameters.AddWithValue("@Year",DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Paymentslip", path.ToString());
            cmd.ExecuteNonQuery();

            msg.Style.Add("display", "block");



        }
    }
}