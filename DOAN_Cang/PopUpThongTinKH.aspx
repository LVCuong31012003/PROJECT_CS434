<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpThongTinKH.aspx.cs" Inherits="PhamDinhVanLy.PopUpThongTinKH" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin khách hàng</title>
    <link rel="stylesheet" href="StyleSheetL.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
    html, body { height: 100%; margin: 0; padding: 0; overflow: hidden; }
    ::-webkit-scrollbar {
    display: none;
}
</style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="form-container">
            <div class="header">THÔNG TIN KHÁCH HÀNG</div>

            <div class="form-group">
                <label for="txtMaKH">Mã khách hàng</label>
                <asp:TextBox ID="txtMaKH" runat="server" placeholder="Nhập mã khách hàng..."></asp:TextBox>
                
            </div>

            <div class="form-group">
                <label for="txtTenKH">Tên khách hàng</label>
                <asp:TextBox ID="txtTenKH" runat="server" placeholder="Nhập tên khách hàng..."></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Vui lòng nhập Tên khách hàng !!!" Display="Dynamic" ControlToValidate="txtTenKH" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Tên khách hàng phải từ 3 đến 30 ký tự" Display="Dynamic" ControlToValidate="txtTenKH" ValidationExpression="^.{3,30}$"  ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
            
            <div class="form-group">
                <label for="txtSDT">Số Điện Thoại</label>
                <asp:TextBox ID="txtSDT" runat="server" placeholder="Nhập số điện thoại..."></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Vui lòng nhập Số Điện Thoại !!!" Display="Dynamic" ControlToValidate="txtSDT" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Số điện thoại phải bắt đầu bằng số 0" Display="Dynamic" ControlToValidate="txtSDT" ValidationExpression="^0.*$" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Số điện thoại phải có đúng 10 chữ số" Display="Dynamic" ControlToValidate="txtSDT" ValidationExpression="^\d{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtemail" runat="server" placeholder="Nhập email..."></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Vui lòng nhập Email !!!" Display="Dynamic" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </div>
            
            <div class="form-group">
<label for="txtDC">Địa Chỉ</label>
                <asp:TextBox ID="txtDC" runat="server" placeholder="Nhập địa chỉ..."></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Vui lòng nhập Địa Chỉ !!!" Display="Dynamic" ControlToValidate="txtDC" ForeColor="Red"></asp:RequiredFieldValidator>
    
            </div>

            <div class="buttons" >
                <asp:Button CssClass="btn btn-save" ID="submit" runat="server" Text="LƯU" OnClick="submit_Click" />
                <button class="btn btn-exit" type="button" onclick="closePopup()">THOÁT</button>
            </div>
        </div>

        <script>
            // Hàm để đóng popup khi nhấn nút "THOÁT"
            function closePopup() {
                window.parent.closeEditModal();
            }
        </script>
    </form>
</body>
</html>
