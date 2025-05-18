<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dang_nhap.aspx.cs" Inherits="Dang_nhap.Dang_nhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập hệ thống</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>ĐĂNG NHẬP</h2>

            <div class="form-group">
                <asp:Label ID="lbuser" runat="server" Text="Email hoặc số điện thoại "></asp:Label>
                <asp:TextBox ID="txtuser" runat="server" placeholder="Nhập email hoặc số điện thoại (*)" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lbMatkhau" runat="server" Text="Mật khẩu"></asp:Label>
                <asp:TextBox ID="txtMatkhau" TextMode="Password" runat="server" placeholder="Nhập mật khẩu (*)" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:CheckBox ID="ckremember" runat="server" Text="Nhớ mật khẩu"/>
            </div>

            <div class="btn">
                <asp:Button ID="btngui" runat="server" Text="Đăng nhập" OnClick="btndangnhap_click" Height="33px" Width="115px" />
                 <asp:Button ID="btnThoat" runat="server" Text="Thoát" CssClass="btn-outline" OnClick="btnThoat_click" Height="35px" Width="83px" />
            </div>

            <div class="links">
               <a href="quenmatkhau.aspx">Quên mật khẩu?</a>
            </div>
            <div class="log_link">
                <a href="#">Đăng ký tài khoản mới</a>
                <a href="#">Nhân viên TRADING? Đăng nhập ở đây</a>
            </div>
        </div>

    </form>
</body>
</html>
