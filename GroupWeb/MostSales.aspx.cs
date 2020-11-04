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
    public partial class MostSales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project;Integrated Security=true;");
            SqlCommand cmd = new SqlCommand("select dbo.MostSales() as Most_Sales", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            Sales.Text = cmd.ExecuteScalar().ToString();
            con.Close();

            SqlDataAdapter sqa = new SqlDataAdapter("Select *from Buy2 where Emp_id = (select dbo.MostSales() as Most_Sales)", con);
            DataTable dt = new DataTable();
            sqa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}