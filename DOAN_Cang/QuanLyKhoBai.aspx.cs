using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuynhThiVy
{
    public partial class QuanLyKhoBai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadKhoBaiData();
            }
        }

        private void LoadKhoBaiData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();

                    string query = "SELECT MaKhoBai,TenKhoBai,DienTich,NguoiPhuTrach,TrangThai,LoaiKhu FROM KhoBai";
                    SqlCommand cmd = new SqlCommand(query, conn);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    rptKhoBai.DataSource = dt;
                    rptKhoBai.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("Lỗi kết nối dữ liệu: " + ex.Message);
                }
            }
        }
    }
}