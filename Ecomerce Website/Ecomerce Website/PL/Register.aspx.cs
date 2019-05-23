using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomerce_Website.PL
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int x = 0;
                string pwd = Encrypt.EncryptString(txt_username.Text, txt_password.Text);
                x=BL_user.add_user(txt_Name.Text, txt_email.Text,txt_username.Text, Convert.ToDateTime(txt_birth_date.Text), pwd, txt_phone.Text, txt_address.Text, img_upload.FileName);
                System.Web.HttpContext.Current.Response.Write(@"<SCRIPT LANGUAGE='JavaScript'>alert('Hello "+x.ToString()+"this is an Alert')</SCRIPT>");

            }
        }
    }
}