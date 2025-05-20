using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhanThiLeThi
{
    public partial class QuanLyCSKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadKhachHangData();
            }
        }

        private void LoadKhachHangData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();

                    // Câu lệnh SELECT lấy đúng các cột bạn muốn hiển thị
                    string query = "SELECT MaKH,  TenKH, SoDienThoai, Email, DiaChi,  MaTaiKhoan FROM KhachHang";

                    SqlCommand cmd = new SqlCommand(query, conn);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    // Gán dữ liệu vào Repeater
                    rptKhachHang.DataSource = dt;
                    rptKhachHang.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("Lỗi kết nối dữ liệu: " + ex.Message);
                }
            }
        }
    }
}
