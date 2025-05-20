using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhamDinhVanLy
{
    public partial class PopUpThongTinKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["MaKH"]))
                {
                    LoadKhachHang(Request.QueryString["MaKH"]);
                }
            }
        }

        private void LoadKhachHang(string maKH)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT * FROM KhachHang WHERE MaKH = @MaKH";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@MaKH", maKH);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    txtMaKH.Text = reader["MaKH"].ToString();
                    txtMaKH.Enabled = false; // Không cho sửa mã KH
                    txtTenKH.Text = reader["TenKH"].ToString();
                    txtSDT.Text = reader["SoDienThoai"].ToString();
                    txtemail.Text = reader["Email"].ToString();
                    txtDC.Text = reader["DiaChi"].ToString();
                }
                reader.Close();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string maKH = txtMaKH.Text.Trim();
            string tenKH = txtTenKH.Text.Trim();
            string sdt = txtSDT.Text.Trim();
            string email = txtemail.Text.Trim();
            string diaChi = txtDC.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string sql;
                if (txtMaKH.Enabled) // Thêm mới
                {
                    sql = "INSERT INTO KhachHang (MaKH, TenKH, SoDienThoai, Email, DiaChi) " +
                          "VALUES (@MaKH, @TenKH, @SoDienThoai, @Email, @DiaChi)";
                }
                else // Cập nhật
                {
                    sql = "UPDATE KhachHang SET TenKH = @TenKH, SoDienThoai = @SoDienThoai, Email = @Email, DiaChi = @DiaChi " +
                          "WHERE MaKH = @MaKH";
                }

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@MaKH", maKH);
                cmd.Parameters.AddWithValue("@TenKH", tenKH);
                cmd.Parameters.AddWithValue("@SoDienThoai", sdt);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@DiaChi", diaChi);

                cmd.ExecuteNonQuery();
            }

            // Gửi tín hiệu về parent để reload hoặc đóng popup
            Response.Write("<script>window.parent.location.reload();</script>");
        }
    }
}