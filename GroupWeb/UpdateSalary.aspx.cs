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
    public partial class UpdateSalary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        bool checkifSalexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Salary1 where Salary_no='" + Salary_No.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        protected void Gobutton(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Salary1 where Salary_no='" + Salary_No.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Salary_No.Text = dt.Rows[0]["Salary_no"].ToString();
                    Salary_Amt.Text = dt.Rows[0]["Salary_Amount"].ToString();
                    jobTyoe.Text = dt.Rows[0]["Job_Type"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Salary ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkifSalexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("upd_Salary", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Salary_no", Salary_No.Text.Trim());
                    cmd.Parameters.AddWithValue("@Salary_Amount", Salary_Amt.Text.Trim());
                    cmd.Parameters.AddWithValue("@Job_Type", jobTyoe.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Salary Update successfully.');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Salary ID');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}