using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dang_nhap
{
    public partial class Dang_nhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btndangnhap_click(object sender, EventArgs e)
        {
            string user = txtuser.Text;
            string password = txtMatkhau.Text;

            // Giả lập đăng nhập - thay bằng kiểm tra CSDL
            if ((user == "admin@gmail.com" || user == "0123456789") && password == "Abc123@")
            {
                Response.Redirect("trangchu.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Thông tin đăng nhập không đúng');", true);
            }
        }
        protected void btnThoat_click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }


    }
}