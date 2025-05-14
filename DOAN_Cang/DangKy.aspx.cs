using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dangky
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string hoten = txtHoTen.Text.Trim();
            string email = txtEmail.Text.Trim();
            string sdt = txtSDT.Text.Trim();
            string diachi = txtDiaChi.Text.Trim();
            string matkhau = txtMatKhau.Text;
            string nhaplai = txtNhapLai.Text;

            if (matkhau != nhaplai)
            {
                Response.Write("<script>alert('Mật khẩu nhập lại không khớp!');</script>");
                return;
            }

            Response.Write("<script>alert('Đăng ký thành công!');</script>");
            Response.Redirect("DangNhap.aspx");
        }

        protected void btnThoat_Click(object sender, EventArgs e)
        {
            Response.Redirect("trangchu.aspx");
        }

    }
}