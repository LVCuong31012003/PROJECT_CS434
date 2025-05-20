<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopUpThongTinBai.aspx.cs" Inherits="LeVanCuong.PopUpThongTinBai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin bãi</title>
    <link rel="stylesheet" href="StyleSheet.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
    html, body { height: 100%; margin: 0; padding: 0; overflow: hidden; }
    ::-webkit-scrollbar {
    display: none;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <div class="header">THÔNG TIN BÃI</div>

            <div class="form-group">
                <label for="txtMaKhoBai">Mã kho bãi<asp:RequiredFieldValidator ID="rfvMaKhoBai" runat="server"
                        ControlToValidate="txtMaKhoBai"
                        ErrorMessage="* Bắt buộc nhập mã kho bãi"
                        ForeColor="Red"
                        Display="Dynamic" />

                    <asp:RegularExpressionValidator ID="revMaKhoBai" runat="server"
                        ControlToValidate="txtMaKhoBai"
                        ErrorMessage="* Chỉ được nhập số"
                        ValidationExpression="^\d+$"
                        ForeColor="Red"
                        Display="Dynamic" />           

                </label>
                &nbsp;<asp:TextBox ID="txtMaKhoBai" runat="server" CssClass="input" MaxLength="50" />

            </div>

            <div class="form-group">
                <label for="txtKhuVuc">Khu vực kho bãi<asp:RequiredFieldValidator ID="rfvKhuVuc" runat="server"
                        ControlToValidate="txtKhuVuc"
                        ErrorMessage="* Bắt buộc nhập khu vực"
                        ForeColor="Red"
                        Display="Dynamic" />

                </label>
                &nbsp;<asp:TextBox ID="txtKhuVuc" runat="server" CssClass="input" MaxLength="50" />

            </div>

            <div class="form-group">
                <label for="txtDienTich">Diện tích kho bãi<asp:RequiredFieldValidator ID="rfvDienTich" runat="server"
                    ControlToValidate="txtDienTich"
                    ErrorMessage="* Bắt buộc nhập diện tích"
                    ForeColor="Red"
                    Display="Dynamic" />

                <asp:RegularExpressionValidator ID="revDienTich" runat="server"
                    ControlToValidate="txtDienTich"
                    ErrorMessage="* Chỉ được nhập số"
                    ValidationExpression="^\d+(\.\d{1,2})?$"
                    ForeColor="Red"
                    Display="Dynamic" />

                </label>
                &nbsp;<asp:TextBox ID="txtDienTich" runat="server" CssClass="input" MaxLength="50" />

            </div>

            <div class="form-group">
                <label for="txtNguoiPhuTrach">Người phụ trách kho bãi<asp:RequiredFieldValidator ID="rfvNguoiPhuTrach" runat="server"
                    ControlToValidate="txtNguoiPhuTrach"
                    ErrorMessage="* Bắt buộc nhập người phụ trách"
                    ForeColor="Red"
                    Display="Dynamic" />

                </label>
                &nbsp;<asp:TextBox ID="txtNguoiPhuTrach" runat="server" CssClass="input" MaxLength="50" />

            </div>

            <div class="row">
                <div class="form-group">
                    <label for="ddlTrangThai">Tình trạng kho bãi</label>
                    <asp:DropDownList ID="ddlTrangThai" runat="server" CssClass="input">
                        <asp:ListItem Text="Đã full" />
                        <asp:ListItem Text="Đang xếp hàng" />
                        <asp:ListItem Text="Đang chờ hàng đến" />
                        <asp:ListItem Text="Trống" />
                        <asp:ListItem Text="Đang bảo trì" />
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="ddlLoaiKhu">Loại khu</label>
                    <asp:DropDownList ID="ddlLoaiKhu" runat="server" CssClass="input">
                        <asp:ListItem Text="Khu lạnh" />
                        <asp:ListItem Text="Khu khô" />
                        <asp:ListItem Text="Bãi container" />
                        <asp:ListItem Text="Bãi hàng rời" />
                    </asp:DropDownList>
                </div>
            </div>

            <div class="buttons">
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-save" Text="LƯU" OnClick="btnSave_Click" />
                <button class="btn btn-exit" type="button" onclick="closePopup()">THOÁT</button>
            </div>
        </div>
    </form>

    <script>
        function closePopup() {
            window.parent.closeEditModal();
        }
    </script>
</body>
</html>

