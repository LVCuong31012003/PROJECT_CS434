<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyCSKH.aspx.cs" Inherits="PhanThiLeThi.QuanLyCSKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Danh sách khách hàng</title>
    <link rel="stylesheet" href="StyleSheetT.css" />
    <style>
        .logout-btn {
    display: block;        
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    background: orange;
    border: none;
    font-weight: bold;
    border-radius: 4px;
    cursor: pointer;
    color: white;           
    text-align: center;       
    text-decoration: none;     
}

        .warehouse-table {
            width: 95%;
            margin: 20px auto;
            border-collapse: separate;
            border-spacing: 0;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            overflow: hidden;
            font-family: 'Segoe UI', sans-serif;
            font-size: 14px;
            color: #333;
        }

        .warehouse-table thead {
            background-color: #1d2b64;
            color: white;
        }

        .warehouse-table th,
        .warehouse-table td {
            padding: 10px 8px;
            text-align: center;
            border-bottom: 1px solid #eee;
        }

        .warehouse-table .action-icons img {
            transition: transform 0.2s, filter 0.2s;
            cursor: pointer;
        }

        .warehouse-table .action-icons img:hover {
            filter: brightness(1.2);
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar" style="width: 260px;">
            <div class="admin-info">
                <img src="img/man.png" alt="Admin Avatar" />
                <div class="admin-name">ADMIN</div>
            </div>
            <a href="LoginAdmin.aspx" class="logout-btn">Log out</a>
            <nav class="menu">
                <a href="#">Báo cáo thống kê</a>
                <a href="trangchukhobai.aspx">Quản lý kho bãi</a>
                <a href="#">Quản lý điều phối</a>
                <a href="#">Quản lý vận chuyển</a>
                <a href="QLyCSKH.aspx" class="active">Quản lý chăm sóc khách hàng</a>
                <a href="HoaDonDaThanhToan.aspx">Quản lý thanh toán</a>
            </nav>
        </aside>

        <main class="content">
            <h1>QUẢN LÝ CHĂM SÓC KHÁCH HÀNG</h1>

            <div class="toolbar">
                <a href="#" class="icon-link"><img src="img/pdf.png" alt="PDF" class="icon" /></a>
                <a href="#" class="icon-link"><img src="img/doc.png" alt="DOC" class="icon" /></a>
                <label for="date-update" class="date-label">Ngày cập nhật:</label>
                <input type="date" id="date-update" class="update-date" />
                <button class="refresh-btn" onclick="location.reload()">Refresh</button>
            </div>

            <table class="warehouse-table">
                <thead>
                    <tr>
                        <th>Thao tác</th>
                        <th>Mã khách hàng</th>
                        <th>Tên Khách hàng</th>
                        <th>Số Điện Thoại</th>
                        <th>Email</th>
                        <th>Địa chỉ</th>
                        <th>Mã Tài khoản</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptKhachHang" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td class="action-icons" style="display: flex; justify-content: center; align-items: center; gap: 8px;">
                                    <button type="button" class="icon-button" onclick='openEditPopup("<%# Eval("MaKH") %>")'>
                                        <img src="img/edit.png" alt="Sửa" style="width: 20px; height: 20px;" />
                                    </button>
                                    <button type="button" class="icon-button" onclick='openDeletePopup("<%# Eval("MaKH") %>")'>
                                        <img src="img/delete.png" alt="Xóa" style="width: 20px; height: 20px;" />
                                    </button>
                                </td>
                                <td><%# Eval("MaKH") %></td>
                                <td><%# Eval("TenKH") %></td>
                                <td><%# Eval("SoDienThoai") %></td>
                                <td><%# Eval("Email") %></td>
                                <td><%# Eval("DiaChi") %></td>
                                <td><%# Eval("MaTaiKhoan") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </main>
    </div>
</body>
</html>

