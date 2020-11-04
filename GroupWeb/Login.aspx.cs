using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace GroupWeb
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("Select * from login where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Successful Login');</script>");
                    Session["Email"] = dr.GetValue(2).ToString();
                    Session["Password"] = dr.GetValue(3).ToString();
                    Session["role"] = "admin";
                }
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }
        }

    }
}