<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyKhoBai.aspx.cs" Inherits="HuynhThiVy.QuanLyKhoBai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản lý kho bãi</title>
    <link rel="stylesheet" href="StyleSheetvy.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
      .admin-info {
        text-align: center;
        margin-bottom: 20px;
    }

        .admin-info img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
        }

    .admin-name {
        margin-top: 10px;
        font-weight: bold;
    }

    .logout-btn {
    display: block; /* Cho nó chiếm toàn bộ chiều ngang */
    width: 90%;
    padding: 10px;
    margin-bottom: 20px;
    background: orange;
    border: none;
    font-weight: bold;
    border-radius: 4px;
    cursor: pointer;
    color: white; /* Chữ trắng như nút */
    text-align: center; /* Căn giữa chữ */
    text-decoration: none; /* Bỏ gạch chân của thẻ a */
}
    .menu {
        list-style: none;
        padding: 0;
    }

        .menu a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
            transition: background-color 0.2s;
        }

            .menu a:hover {
                background-color: #2a348f;
            }

        .menu .active {
            background-color: #515bb3;
        }

    </style>
</head>
<body>
    <div class="sidebar" style="width: 260px; ">
        <div class="admin-info">
              <img src="img/man.png" alt="Admin Avatar" />
              <div class="admin-name">ADMIN</div>
            </div>
            <a href="LoginAdmin.aspx" class="logout-btn">Log out</a>
            <nav class="menu">
              <a href="BaoCaoThongKe.aspx">Báo cáo thống kê</a>
            <a href="trangchukhobai.aspx"  class="active">Quản lý kho bãi</a>
            <a href="#">Quản lý điều phối</a>
            <a href="QlyVanChuyen.aspx">Quản lý vận chuyển</a>
            <a href="QLyCSKH.aspx">Quản lý chăm sóc khách hàng</a>
            <a href="HoaDonDaThanhToan.aspx" >Quản lý thanh toán</a>
            </nav>
    </div>

    <div class="main-content">
        <div class="header">
            <h2>QUẢN LÝ KHO BÃI</h2>
            <div class="refresh-section">
                <div class="date-wrapper">
                    <label for="date-update">Ngày cập nhật:</label>
                    <input type="date" id="date-update" class="update-date" />
                </div>
                <button class="refresh-btn" onclick="location.reload()">Refresh</button>
            </div>
        </div>

        <table class="warehouse-table" >
            <thead>
                <tr>
                    <th>Thao tác</th>
                    <th>Mã Kho bãi</th>
                    <th>Tên Kho bãi</th>
                    <th>Diện tích kho bãi (m&sup2;)</th>
                    <th>Người phụ trách</th>
                    <th>Tình trạng</th>
                    <th>Loại khu</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptKhoBai" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td class="action-icons" style="display: flex; justify-content: center; align-items: center;">
                                <button type="button" class="icon-button" onclick="openEditPopup('<%# Eval("MaKhoBai") %>')">
                                    <img src="img/image 11.png" alt="Sửa" style="width: 20px; height: 20px;" />
                                </button>
                                <button type="button" class="icon-button" onclick="openDeletePopup('<%# Eval("MaKhoBai") %>')">
                                    <img src="img/image 10.png" alt="Xóa" style="width: 20px; height: 20px;" />
                                </button>
                            </td>
                            <td><%# Eval("MaKhoBai") %></td>
                            <td><%# Eval("TenKhoBai") %></td>
                            <td><%# Eval("DienTich") %></td>
                            <td><%# Eval("NguoiPhuTrach") %></td>
                            <td><%# Eval("TrangThai") %></td>
                            <td><%# Eval("LoaiKhu") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

</body>
</html>
