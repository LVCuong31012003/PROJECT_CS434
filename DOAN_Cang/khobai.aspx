<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="khobai.aspx.cs" Inherits="DoAnCang.khobai" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin bãi</title>
    <link rel="stylesheet" href="style.css" />
  
</head>
<body>
     <div class="form-container">
    <div class="header">THÔNG TIN BÃI</div>
     
  <div class="form-group">
    <label>Mã kho bãi</label>
    <input type="text" placeholder="Nhập mã kho bãi..."/>
  </div>

  <div class="form-group">
    <label>Khu vực kho bãi</label>
    <input type="text" placeholder="Nhập khu vực kho bãi..."/>
  </div>

  <div class="form-group">
    <label>Diện tích kho bãi</label>
    <input type="text" placeholder="Nhập diện tích kho bãi..."/>
  </div>

  <div class="form-group">
    <label>Người phụ trách kho bãi</label>
    <input type="text" placeholder="Nhập tên người phụ trách kho bãi..."/>
  </div>

  <div class="row">
    <div class="form-group">
      <label>Tình trạng kho bãi</label>
      <select>
        <option>Đã full</option>
        <option>Đang xếp hàng</option>
        <option>Đang chờ hàng đến</option>
        <option>Trống</option>
        <option>Đang bảo trì</option>
      </select>
    </div>

    <div class="form-group">
      <label>Loại khu</label>
      <select>
        <option>Khu lạnh</option>
        <option>Khu khô</option>
        <option>Bãi container</option>
        <option>Bãi hàng rời</option>
      </select>
    </div>
  </div>

  <div class="buttons">
    <button class="btn btn-save">LƯU</button>
    <button class="btn btn-exit">THOÁT</button>
  </div>
 </div>
</body>
</html>
