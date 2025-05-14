<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="dangky.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Ký</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f8f8f8;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px #aaa;
        }
        h2 {
            background-color: #2F4F4F;
            color: white;
            padding: 15px;
            text-align: center;
            margin: -30px -30px 30px -30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
        }
        .btn {
            padding: 10px 20px;
            margin-right: 10px;
            border: none;
            background-color: #2F4F4F;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background-color: #1e2e2e;
        }
        .link {
            text-decoration: underline;
            color: blue;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>ĐĂNG KÝ</h2>

            <div class="form-group">
                <label>Họ và Tên</label>
                <asp:TextBox ID="txtHoTen" runat="server" placeholder="Nhập họ và tên (*)"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Nhập email (*)"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>SDT</label>
                <asp:TextBox ID="txtSDT" runat="server" placeholder="Nhập số điện thoại (*)"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Địa chỉ</label>
                <asp:TextBox ID="txtDiaChi" runat="server" placeholder="Nhập địa chỉ (*)"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Mật khẩu</label>
                <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" placeholder="Nhập mật khẩu (*)"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Nhập lại mật khẩu</label>
                <asp:TextBox ID="txtNhapLai" runat="server" TextMode="Password" placeholder="Nhập lại mật khẩu (*)"></asp:TextBox>
            </div>
            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" CssClass="btn" OnClick="btnDangKy_Click" />
            <asp:Button ID="btnThoat" runat="server" Text="Thoát" CssClass="btn" OnClick="btnThoat_Click" />

            <br /><br />
            <asp:HyperLink ID="lnkDangNhap" runat="server" NavigateUrl="DangNhap.aspx" CssClass="link">Đăng nhập</asp:HyperLink>
        </div>
    </form>
    </body>
</html>
