using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ecomerce_Website
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string pwd = Encrypt.EncryptString(txt_user_name.Text, txt_password.Text);
                if (BL_user.check_login(txt_user_name.Text, pwd))
                {
                    Session.Add("username", txt_user_name.Text);
                    if (cb_remember_me.Checked)
                    {
                        //define obj
                        HttpCookie co = new HttpCookie("local");
                        //add values
                        co.Values.Add("username", txt_user_name.Text);
                        //limit expire
                        co.Expires = DateTime.Now.AddDays(15);
                        //write cookie
                        Response.Cookies.Add(co);
                    }
                    //Response.Redirect("~/profile.aspx");
                    lb_invaild_user.Text = "done";

                }
                else
                {
                    lb_invaild_user.Text = "Invaild UserName or Password";

                }
            }
            else
            {
            
            }

        }
    }
}