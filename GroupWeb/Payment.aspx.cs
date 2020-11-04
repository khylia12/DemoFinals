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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                SqlCommand cmd = new SqlCommand("SELECT * from Payment where Emp_id='" + Empid.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Admin.Text = dt.Rows[0]["Admin_Id"].ToString();
                    Empid.Text = dt.Rows[0]["EmployeeID"].ToString();
                    AdminBal.Text = dt.Rows[0]["AdminBal"].ToString();
                    EmpBal.Text = dt.Rows[0]["Employee_Bal"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Employee ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog = Adv_Database_project; Integrated Security=true;");
            con.Open();
            SqlTransaction tran = con.BeginTransaction();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.Transaction = tran;
            cmd.CommandText = "update Payment set Emp_Account=Emp_Account,Admin_Account=Admin_Account where Emp_id = @emp and Emp_Account <= @amt and Admin_Account = Admin_Account";

            cmd.Parameters.Clear();
            cmd.Parameters.Add("@emp", SqlDbType.VarChar).Value = Empid.Text;
            cmd.Parameters.Add("@adm", SqlDbType.VarChar).Value = Admin.Text;
            cmd.Parameters.Add("@amt", SqlDbType.Decimal).Value = Trans.Text;

            int flag1 = cmd.ExecuteNonQuery();
            if (flag1 > 0)
            {
                cmd.CommandText = "update Payment set Emp_Account=Emp_Account+@amt, Admin_Account=Admin_Account-@amt where Emp_id=@Emp and Emp_Account <= @amt and Admin_Account = Admin_Account";
                cmd.Parameters["@emp"].Value = Empid.Text;
                flag1 = cmd.ExecuteNonQuery();
                if (flag1 > 0)
                {
                    tran.Commit();
                    Response.Write("Transaction Success");
                }
                else
                {
                    tran.Rollback();
                    Response.Write("Transaction Failed");
                }
            }
            else
            {
                Response.Write("Transaction Failed");
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog = Adv_Database_project; Integrated Security=true;");
            con.Open();
            SqlDataAdapter sqa;
            DataTable dt;
            sqa = new SqlDataAdapter("Select *from Payment", con);
            dt = new DataTable();
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