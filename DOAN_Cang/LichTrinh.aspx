<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LichTrinh.aspx.cs" Inherits="DoAn_Cang.LichTrinh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LichTrinh.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="headerr">
                <header>
                    <div class="trading-text">
                        TRA<span class="letter-d">D</span>ING
                    </div>
                    <nav>
                        <asp:HyperLink ID="HyperLink2" runat="server">GIỚI THIỆU</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink3" runat="server">BIỂU PHÍ</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink4" runat="server">LỊCH TRÌNH</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink5" runat="server">HOẠT ĐỘNG CẢNG</asp:HyperLink>
                    </nav>
                    <div class="header-actions">
                        <div class="search">
                            <asp:ImageButton CssClass="imgsearch" ID="ImageButton1" runat="server" ImageUrl="./img/search.png" />
                        </div>
                        <div class="line"></div>
                        <div class="login">
                            <asp:LinkButton ID="btnlogin" runat="server" CssClass="login-btn">Login</asp:LinkButton>
                        </div>
                    </div>
                </header>
            </div>
             <div class="main">
                 <div class="form-container">
                    <div>
                        <label for="startLocation" class="label">VỊ TRÍ BẮT ĐẦU</label>
                        <input type="text" id="startLocation" class="input" placeholder="&#x1F4CD">
                    </div>
                    <div>
                        <label for="endLocation" class="label">VỊ TRÍ KẾT THÚC</label>
                        <input type="text" id="endLocation" class="input" placeholder="&#x1F4CD">
                    </div>
                    <div>
                        <label for="startDate" class="label">NGÀY BẮT ĐẦU</label>
                        <input type="date" id="startDate" class="input">
                    </div>
                    <div>
                        <label for="containerType" class="label">LOẠI CONTAINER</label>
                        <select id="containerType" class="input">
                            <option value="">Chọn loại container</option>
                            <option value="20ft">20ft</option>
                            <option value="40ft">40ft</option>
                        </select>
                        <div class="mt-2">
                            <label class="inline-flex items-center">
                                <input type="checkbox" class="form-checkbox">
                                <span class="ml-2">Hàng hóa nguy hiểm</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-span-2 flex justify-between mt-6">
                        <button class="btn-clear">Clear</button>
                        <button class="btn-submit">Tìm</button>
                    </div>
                </div>
             </div>
             <div class="fooder">
                 <div class="fooder_1">
                     TRA<span class="letter-d">D</span>ING
                 </div>
                 <div class="fooder_2">
                     <a href="#">GIỚI THIỆU</a>
                     <a href="#">Về Tranding</a>
                     <a href="#"> Quy định và chính sách</a>
                 </div>
                 <div class="fooder_3">
                     <a href="#">HƯỚNG DẪN</a>
                     <a href="#">Hướng dẫn sử dụng dịch vụ</a>
                     <a href="#">Biểu phí vận chuyển</a>
                 </div>
                 <div class="fooder_4">
                     <a href="#">LIÊN HỆ</a>
                     <a href="#">Liên hệ với chúng tôi</a>
                 </div>
             </div>
         </div>
    </form>
</body>
</html>
