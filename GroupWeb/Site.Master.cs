using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    adminlogbutton.Visible = false;
                    LinkButton1.Visible = true;
                }
                else if (Session["role"].Equals("admin"))
                {
                    adminlogbutton.Visible = true;
                    LinkButton1.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void AdminNav(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void Adminlog(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void logbutton(object sender, EventArgs e)
        {
            Response.Redirect("custlog.aspx");
        }

        protected void logutton(object sender, EventArgs e)
        {
            Session["Email"] = "";
            Session["Password"] = "";
            Session["role"] = "";

            adminlogbutton.Visible = true;
            LinkButton1.Visible = false;

            Response.Redirect("homepage.aspx");
        }
        protected void AboutP(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void HomeP(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
        protected void ProductP(object sender, EventArgs e)
        {
            Response.Redirect("Jewels.aspx");
        }
    }
}