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
    public partial class totalval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0C5T5JD\SQLEXPRESS; Initial Catalog=Advance_Database_Project1;Integrated Security=true;");
            SqlDataAdapter sqa = new SqlDataAdapter("Select *from Total_Value1", con);
            DataTable dt = new DataTable();
            sqa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        /*protected void Button1_Click(object sender, EventArgs e)
        {
           


           
        }*/

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}