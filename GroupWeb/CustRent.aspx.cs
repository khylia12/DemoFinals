using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace GroupWeb
{
    public partial class CustRent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog = Adv_Database_project; Integrated Security=true;");
            con.Open();
            SqlDataAdapter sqa;
            DataTable dt;
            sqa = new SqlDataAdapter("Select *from Customer1 where cust_id = (select dbo.MostRent() as Most_Rent)", con);
            dt = new DataTable();
            sqa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            sqa = new SqlDataAdapter("Select *from Rent2 where cust_id = (select dbo.MostRent() as Most_Rent)", con);
            dt = new DataTable();
            sqa.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}