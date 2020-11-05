using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupWeb
{
	public partial class Admin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        protected void Customers_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateVPandBP.aspx");
        }

        protected void Promotion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Promotion.aspx");
        }

        protected void UpdateSalary(object sender, EventArgs e)
        {
            Response.Redirect("UpdateSalary.aspx");
        }

        protected void Payment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }

        protected void Sales_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostSales.aspx");
        }

        protected void CustRent_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustRent.aspx");
        }

        protected void ViewRent(object sender, EventArgs e)
        {
            Response.Redirect("ViewCustRent.aspx");
        }

        protected void ValueRent(object sender, EventArgs e)
        {
            Response.Redirect("totalval");
        }

        protected void AmtEarned(object sender, EventArgs e)
        {
            Response.Redirect("AmtEarned");
        }

        protected void AmtPurchases(object sender, EventArgs e)
        {
            Response.Redirect("AmtRent");
        }

        protected void Amtsales(object sender, EventArgs e)
        {
            Response.Redirect("Amtsales");
        }
    }
}