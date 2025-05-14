<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trading Schedule</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }

    body {
      background-color: #fff;
      color: #333;
      line-height: 1.6;
    }

    .header {
      background: #6e9496;
      color: #fff;
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 1rem 2rem;
    }

    .logo {
      font-size: 24px;
      font-weight: bold;
    }

    .logo .highlight {
      color: #f3c144;
    }

    nav a {
      color: #fff;
      margin: 0 1rem;
      text-decoration: none;
      font-weight: bold;
    }

    nav a.active {
      text-decoration: underline;
    }

    .user-actions {
      display: flex;
      align-items: center;
    }

    .user-actions input {
      padding: 0.3rem;
      margin-right: 0.5rem;
    }

    .login-btn {
      background: #222;
      color: #fff;
      border: none;
      padding: 0.4rem 0.8rem;
      border-radius: 5px;
      cursor: pointer;
    }

    .form-container {
      padding: 2rem;
      max-width: 1000px;
      margin: 2rem auto;
      background-color: #f9f9f9;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    .form-grid {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      gap: 1.5rem 2rem;
    }

    .form-group {
      display: flex;
      flex-direction: column;
    }

    .form-group label {
      margin-bottom: 0.5rem;
      font-weight: bold;
    }

    .form-group input,
    .form-group select {
      padding: 0.6rem;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    .checkbox-group {
      grid-column: span 2;
      display: flex;
      align-items: center;
    }

    .checkbox-group input {
      margin-right: 0.5rem;
    }

    .form-actions {
      grid-column: span 2;
      display: flex;
      justify-content: center;
      gap: 2rem;
      margin-top: 1.5rem;
    }

    .btn-clear {
      background-color: #2d4f4f;
      color: #fff;
      padding: 0.7rem 2rem;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .btn-search {
      background-color: #ea6d50;
      color: #fff;
      padding: 0.7rem 2rem;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .chat-icon {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #46cad5;
      color: #fff;
      padding: 1rem;
      border-radius: 50%;
      font-size: 20px;
      cursor: pointer;
      box-shadow: 0 0 10px rgba(0,0,0,0.3);
    }

    .footer {
      background-color: #2d4f4f;
      color: #fff;
      display: flex;
      justify-content: space-around;
      padding: 2rem;
      margin-top: 3rem;
    }

    .footer .col h4 {
      margin-bottom: 1rem;
    }

    .footer .col p {
      margin-bottom: 0.5rem;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <header class="header">
    <div class="logo">TRA<span class="highlight">DING</span></div>
    <nav>
      <a href="#">GIỚI THIỆU</a>
      <a href="#">BIỂU PHÍ</a>
      <a class="active" href="#">LỊCH TRÌNH</a>
      <a href="#">HOẠT ĐỘNG CẢNG</a>
    </nav>
    <div class="user-actions">
      <input type="text" placeholder="🔍">
      <button class="login-btn">🔒 Login</button>
    </div>
  </header>

  <main class="form-container">
    <form id="scheduleForm">
      <div class="form-grid">
        <div class="form-group">
          <label for="start">VỊ TRÍ BẮT ĐẦU</label>
          <input type="text" id="start" name="start" placeholder="📍 Nhập vị trí bắt đầu" required>
        </div>

        <div class="form-group">
          <label for="end">VỊ TRÍ KẾT THÚC</label>
          <input type="text" id="end" name="end" placeholder="📍 Nhập vị trí kết thúc" required>
        </div>

        <div class="form-group">
          <label for="startDate">NGÀY BẮT ĐẦU</label>
          <input type="date" id="startDate" name="startDate" required>
        </div>

        <div class="form-group">
          <label for="containerType">LOẠI CONTAINER</label>
          <select id="containerType" name="containerType" required>
            <option value="">-- Chọn loại container --</option>
            <option value="20ft">20 feet</option>
            <option value="40ft">40 feet</option>
            <option value="reefer">Reefer</option>
          </select>
        </div>

        <div class="checkbox-group">
          <input type="checkbox" id="dangerous" name="dangerous">
          <label for="dangerous">Hàng hóa nguy hiểm</label>
        </div>

        <div class="form-actions">
          <button type="reset" class="btn-clear">Clear</button>
          <button type="submit" class="btn-search">Tìm</button>
        </div>
      </div>
    </form>

    <div class="chat-icon" title="Nhắn tin tư vấn">
      💬
    </div>
  </main>

  <footer class="footer">
    <div class="col">
      <h4>GIỚI THIỆU</h4>
      <p>Về Trading</p>
      <p>Quy định và chính sách</p>
    </div>
    <div class="col">
      <h4>HƯỚNG DẪN</h4>
      <p>Hướng dẫn sử dụng dịch vụ</p>
      <p>Biểu phí vận chuyển</p>
    </div>
    <div class="col">
      <h4>LIÊN HỆ</h4>
      <p>Liên hệ với chúng tôi</p>
    </div>
  </footer>
</body>
</html>
