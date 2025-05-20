using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeVanCuong
{
    public partial class PopUpThongTinBai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["MaKhoBai"]))
                {
                    LoadData(Request.QueryString["MaKhoBai"]);
                }
            }
        }

        private void LoadData(string maKhoBai)
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string sql = "SELECT * FROM KhoBai WHERE MaKhoBai = @MaKhoBai";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@MaKhoBai", maKhoBai);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    txtMaKhoBai.Text = reader["MaKhoBai"].ToString();
                    txtMaKhoBai.Enabled = false; // không cho sửa khóa chính
                    txtKhuVuc.Text = reader["TenKhoBai"].ToString();
                    txtDienTich.Text = reader["DienTich"].ToString();
                    txtNguoiPhuTrach.Text = reader["NguoiPhuTrach"].ToString();
                    ddlTrangThai.SelectedValue = reader["TrangThai"].ToString();
                    ddlLoaiKhu.SelectedValue = reader["LoaiKhu"].ToString();
                }

                reader.Close();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string maKhoBai = txtMaKhoBai.Text.Trim();
            string khuVuc = txtKhuVuc.Text.Trim();
            string dienTich = txtDienTich.Text.Trim();
            string nguoiPhuTrach = txtNguoiPhuTrach.Text.Trim();
            string trangThai = ddlTrangThai.SelectedValue;
            string loaiKhu = ddlLoaiKhu.SelectedValue;

            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                string sql;
                if (txtMaKhoBai.Enabled) // thêm mới
                {
                    sql = "INSERT INTO KhoBai (MaKhoBai,TenKhoBai, DienTich, NguoiPhuTrach, TrangThai, LoaiKhu) " +
                          "VALUES (@MaKhoBai, @TenKhoBai, @DienTich, @NguoiPhuTrach, @TrangThai, @LoaiKhu)";
                }
                else // cập nhật
                {
                    sql = "UPDATE KhoBai SET TenKhoBai=@TenKhoBai, DienTich=@DienTich, NguoiPhuTrach=@NguoiPhuTrach, " +
                          "TrangThai=@TrangThai, LoaiKhu=@LoaiKhu WHERE MaKhoBai=@MaKhoBai";
                }

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@MaKhoBai", maKhoBai);
                cmd.Parameters.AddWithValue("@TenKhoBai", khuVuc);
                cmd.Parameters.AddWithValue("@DienTich", dienTich);
                cmd.Parameters.AddWithValue("@NguoiPhuTrach", nguoiPhuTrach);
                cmd.Parameters.AddWithValue("@TrangThai", trangThai);
                cmd.Parameters.AddWithValue("@LoaiKhu", loaiKhu);

                cmd.ExecuteNonQuery();
            }

            // Gửi tín hiệu về cha để reload hoặc đóng modal
            Response.Write("<script>window.parent.location.reload();</script>");
        }
    }
}