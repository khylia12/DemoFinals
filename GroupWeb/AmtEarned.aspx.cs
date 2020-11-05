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
    public partial class AmtEarned : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-0C5T5JD\SQLEXPRESS; Initial Catalog=Advance_Database_Project1;Integrated Security=true;");
            SqlDataAdapter dhl = new SqlDataAdapter("Select *from [Total earned from purchases1]", con);
            DataTable ph = new DataTable();
            dhl.Fill(ph);
            GridView1.DataSource = ph;
            GridView1.DataBind();
        }
    }
}