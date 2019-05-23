using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomerce_Website
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (Session["login_id"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Redirect("~/Register.aspx");
            }
        }

        protected void btn_My_Account_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Contact_Us_Click(object sender, EventArgs e)
        {

        }
    }
}