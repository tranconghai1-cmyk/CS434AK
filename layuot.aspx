<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="layuot.aspx.cs" Inherits="layout.layuot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Layout Sân Bóng</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* NAVBAR */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #fff;
            padding: 12px 20px;
            border-bottom: 1px solid #ddd;
            position: sticky;
            top: 0;
            z-index: 999;
        }
        
        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: bold;
            font-size: 20px;
        }

        .logo-icon {
            width: 40px;
            height: 40px;
            background: green;
            border-radius: 50%;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
        }

        .nav-links {
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }

        .login-group a {
            padding: 8px 16px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
        }

        .login {
            border: 1px solid green;
            color: green;
        }

        .register {
            background: green;
            color: white;
        }

        /* MOBILE MENU BUTTON */
        .menu-btn {
            display: none;
            font-size: 28px;
            cursor: pointer;
        }

        /* MOBILE MENU DROPDOWN */
        .mobile-menu {
            display: none;
            flex-direction: column;
            padding: 10px;
            border-top: 1px solid #ddd;
        }

        .mobile-menu a {
            padding: 10px 0;
            text-decoration: none;
            color: #333;
        }

        /* RESPONSIVE */
        @media (max-width: 768px) {
            .nav-links,
            .login-group {
                display: none;
            }

            .menu-btn {
                display: block;
            }

            .mobile-menu.show {
                display: flex;
            }
        }

        /* FOOTER */
        footer {
            background: #f8f8f8;
            padding: 30px 20px;
            margin-top: 50px;
            border-top: 1px solid #ddd;
        }

        footer .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        footer a {
            text-decoration: none;
            color: #333;
            font-size: 14px;
        }

        footer-bottom {
            text-align: center;
            margin-top: 20px;
            color: #666;
            font-size: 13px;
        }
    </style>

    <script>
        function toggleMenu() {
            document.getElementById('mobileMenu').classList.toggle('show');
        }
    </script>
</head>

<body>

    <!-- NAVBAR -->
    <header class="navbar">
        <div class="logo">
            <div class="logo-icon">SB</div>
            Sân Bóng
        </div>

        <div class="nav-links">
            <a href="#">Trang chủ</a>
            <a href="#">Danh sách sân</a>
            <a href="#">Liên hệ</a>
        </div>

        <div class="login-group">
            <a class="login" href="#">Đăng nhập</a>
            <a class="register" href="#">Đăng ký</a>
        </div>

        <div class="menu-btn" onclick="toggleMenu()">☰</div>
    </header>

    <div class="mobile-menu" id="mobileMenu">
        <a href="#">Trang chủ</a>
        <a href="#">Danh sách sân</a>
        <a href="#">Liên hệ</a>
        <a class="login" href="#">Đăng nhập</a>
        <a class="register" href="#">Đăng ký</a>
    </div>

    <main style="padding: 20px;">
        <h1></h1>
        <p></p>
    </main>

    <footer>
        <div class="grid">
            <div>
                <h3>Sân Bóng</h3>
                <p>Đặt sân dễ dàng – responsive hoàn chỉnh.</p>
            </div>

            <div>
                <h4>Liên kết</h4>
                <a href="#">Trang chủ</a><br />
                <a href="#">Danh sách sân</a><br />
                <a href="#">Đăng nhập</a>
            </div>

            <div>
                <h4>Liên hệ</h4>
                <p>Hotline: 0123 456 789</p>
                <p>Email: support@sanbong.com</p>
            </div>
        </div>
        <div style=\"text-align:center; margin-top:20px; color:#666; font-size:14px;\">© 2025 Sân Bóng - All rights reserved</div>
    </footer>

</body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
