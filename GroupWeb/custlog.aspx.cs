using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupWeb
{
    public partial class custlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0C5T5JD\SQLEXPRESS; Initial Catalog=Advance_Database_Project1; Integrated Security=True;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("Select * from Stafflogin where Staffid='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Successful Login');</script>");
                    Session["id"] = dr.GetValue(2).ToString();
                    Session["Password"] = dr.GetValue(3).ToString();
                    Session["role"] = "staff";
                }
                Response.Redirect("Staff.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid credentials');</script>");
            }
        }
    }
}