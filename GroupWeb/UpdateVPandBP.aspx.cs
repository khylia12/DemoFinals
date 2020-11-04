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
    public partial class UpdateVPandBP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //add Button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkifJewexists())
            {
                Response.Write("<script>alert('Jewellery Already Exists, try some other Jewellery ID');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("Add_Update_Delete", con);


                    cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@jewel_id", Jewel_ID.Text.Trim());
                    cmd.Parameters.AddWithValue("@metal_type", MetalType.Text.Trim());
                    cmd.Parameters.AddWithValue("@Descrip", Description.Text.Trim());
                    cmd.Parameters.AddWithValue("@v_price", V_Price.Text.Trim());
                    cmd.Parameters.AddWithValue("@used_jewellery", U_Jewel.Text.Trim());
                    cmd.Parameters.AddWithValue("@b_price", Buy_Price.Text.Trim());
                    cmd.Parameters.AddWithValue("@action", "Insert");
                    cmd.Parameters.AddWithValue("@QuantityAv", QuanAv.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Item Added successfully.');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
        }

        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkifJewexists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("Add_Update_Delete", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@jewel_id", Jewel_ID.Text.Trim());
                    cmd.Parameters.AddWithValue("@metal_type", MetalType.Text.Trim());
                    cmd.Parameters.AddWithValue("@Descrip", Description.Text.Trim());
                    cmd.Parameters.AddWithValue("@v_price", V_Price.Text.Trim());
                    cmd.Parameters.AddWithValue("@used_jewellery", U_Jewel.Text.Trim());
                    cmd.Parameters.AddWithValue("@b_price", Buy_Price.Text.Trim());
                    cmd.Parameters.AddWithValue("@action", "Update");
                    cmd.Parameters.AddWithValue("@QuantityAv", QuanAv.Text.Trim());

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Item updated successfully.');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Vehicle ID');</script>");
            }
        }

        bool checkifJewexists()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Jewellery1 where jewel_id='" + Jewel_ID.Text.Trim() + "';", con);
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
            getJewelid();
        }

        void getJewelid()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC; Initial Catalog=Adv_Database_project; Integrated Security=True;");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from Jewellery1 where jewel_id='" + Jewel_ID.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    Description.Text = dt.Rows[0]["Descrip"].ToString();
                    MetalType.Text = dt.Rows[0]["Metal_type"].ToString();
                    V_Price.Text = dt.Rows[0]["Valued_Price"].ToString();
                    U_Jewel.Text = dt.Rows[0]["used_jewellery"].ToString();
                    Buy_Price.Text = dt.Rows[0]["Buy_Price"].ToString();
                    QuanAv.Text = dt.Rows[0]["QuantityAvailable"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Jewellery ID');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}