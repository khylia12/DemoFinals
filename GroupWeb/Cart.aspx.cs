using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace GroupWeb
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Buyitems"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }
                //adding product to Gridview
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("Csr");
                dt.Columns.Add("Jid");
                dt.Columns.Add("Jimage");
                dt.Columns.Add("Jname");
                dt.Columns.Add("type");
                dt.Columns.Add("Jprice");
                dt.Columns.Add("JAMT");
                dt.Columns.Add("Jtotal");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC;Initial Catalog=Adv_Database_project; Integrated Security=True;");

                        SqlDataAdapter da = new SqlDataAdapter("Select * from Jewellery1 where jewel_id="+Request.QueryString["id"], conn);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["Csr"] = 1;
                        dr["Jid"] = ds.Tables[0].Rows[0]["jewel_id"].ToString();
                        dr["Jimage"] = ds.Tables[0].Rows[0]["Images"].ToString();
                        dr["Jname"] = ds.Tables[0].Rows[0]["Descrip"].ToString();
                        dr["type"] = ds.Tables[0].Rows[0]["Metal_type"].ToString();
                        dr["Jprice"] = ds.Tables[0].Rows[0]["Valued_price"].ToString();
                        dr["JAMT"] = Request.QueryString["Amount"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Valued_price"].ToString());
                        int amount = Convert.ToInt16(Request.QueryString["Amount"].ToString());
                        int Totalp = price * amount;
                        dr["Jtotal"] = Totalp;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[6].Text = "Total Amount $";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("Cart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["Buytitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        SqlConnection scon = new SqlConnection(@"Data Source=LAPTOP-UHQJEQAC;Initial Catalog=Adv_Database_project;Integrated Security=True;");

                        SqlDataAdapter da = new SqlDataAdapter("Select jewel_id, Images, Discrip, Metal_type, Values_price from Jewellery1 where jewel_id=" + Request.QueryString["id"], scon);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        dr["Csr"] = 1;
                        dr["Jid"] = ds.Tables[0].Rows[0]["jewel_id"].ToString();
                        dr["Jimage"] = ds.Tables[0].Rows[0]["Images"].ToString();
                        dr["Jname"] = ds.Tables[0].Rows[0]["Descrip"].ToString();
                        dr["type"] = ds.Tables[0].Rows[0]["Metal_type"].ToString();
                        dr["Jprice"] = ds.Tables[0].Rows[0]["Valued_price"].ToString();
                        dr["JAMT"] = Request.QueryString["Amount"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["Valued_price"].ToString());
                        int amount = Convert.ToInt16(Request.QueryString["Amount"].ToString());
                        int Totalp = price * amount;
                        dr["Jtotal"] = Totalp;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["Buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[6].Text = "Total Amount $";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                        Response.Redirect("Cart.aspx");

                    }

                }
                else
                {
                    dt = (DataTable)Session["Buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[6].Text = "Total Amount $";
                        GridView1.FooterRow.Cells[7].Text = grandtotal().ToString();
                    }
                }
            }
            string orderDate = DateTime.Now.ToShortDateString();
            Session["orderDate"] = orderDate;
            orderid();
        }
        // Calculate the Grand Price 
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];
            int? nrow;
            nrow = dt.Rows.Count;

            int i = 0;
            int totalPc = 0;

            while (i < nrow)
            {
                totalPc = totalPc + Convert.ToInt32(dt.Rows[i]["Jtotal"].ToString());
                i = i + 1;
            }
            return totalPc;
        }

        public void orderid()
        {
            string alpha = "abCdeFgHiJKlMnOpqrsTuVwXyZ123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            string orderid;
            orderid = "Order_Id: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString()
                + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myArray) + DateTime.Now.Minute.ToString()
                + DateTime.Now.Second.ToString();
            Session["Orderid"] = orderid;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["Csr"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //items has been removed from shopping cart
                    break;
                }
            }
            //Setting Sno. after deleting  row item from cart

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["Csr"] = i;
                dt.AcceptChanges();
            }
            Session["Buyitems"] = dt;
            Response.Redirect("Cart.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

    }
}
