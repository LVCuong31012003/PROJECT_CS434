<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchukhobai.aspx.cs" Inherits="DoAnCang.trangchukhobai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Quản lý kho bãi</title>
   <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
  <div class="sidebar">
    <div class="admin-info">
      <img src="img/man.png" alt="Admin Avatar" />
      <p>ADMIN</p>
    </div>
    <button class="logout-btn">Log out</button>
    <ul class="menu">
      <li><a href="#">Báo cáo thống kê</a></li>
      <li class="active"><a href="#">Quản lý kho bãi</a></li>
      <li><a href="#">Quản lý điều phối</a></li>
      <li><a href="#">Quản lý vận chuyển</a></li>
      <li><a href="#">Quản lý chăm sóc khách hàng</a></li>
      <li><a href="#">Quản lý thanh toán</a></li>
    </ul>
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

    <table class="warehouse-table">
      <thead>
        <tr>
          <th>Thao tác</th>
          <th>Mã Kho bãi</th>
          <th>Tên Kho bãi</th>
          <th>Diện tích kho bãi</th>
          <th>Người phụ trách</th>
          <th>Tình trạng</th>
          <th>Loại khu</th>
        </tr>
      </thead>
      <tbody>
        <!-- Dữ liệu sẽ được đổ từ database vào đây -->
      </tbody>
    </table>
  </div>
</body>
</html>
