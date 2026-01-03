<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تلگرام پریمیوم | خدمات حرفه‌ای تلگرام</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/gh/rastikerdar/vazirmatn@v33.003/Vazirmatn-font-face.css" rel="stylesheet">
    <style>
        /* متغیرهای رنگ و فونت */
        :root {
            --gold-primary: #D4AF37;
            --gold-dark: #B8860B;
            --gold-light: #F5E3A1;
            --black: #1A1A1A;
            --white: #FFFFFF;
            --gray-dark: #2D2D2D;
            --gray-light: #F5F5F5;
        }
        
        /* ریست استایل‌ها */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Vazirmatn', 'Poppins', sans-serif;
            background: linear-gradient(135deg, #f5e3a1 0%, #d4af37 50%, #b8860b 100%);
            color: var(--black);
            line-height: 1.6;
            min-height: 100vh;
            position: relative;
        }
        
        /* استایل‌های اصلی */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* هدر */
        header {
            background-color: rgba(26, 26, 26, 0.95);
            padding: 20px 0;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
        }
        
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .logo i {
            color: var(--gold-primary);
            font-size: 28px;
        }
        
        .logo-text {
            font-size: 24px;
            font-weight: 700;
            background: linear-gradient(to right, #D4AF37, #F5E3A1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .nav-links {
            display: flex;
            gap: 30px;
            list-style: none;
        }
        
        .nav-links a {
            color: var(--white);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            padding: 5px 10px;
            border-radius: 4px;
        }
        
        .nav-links a:hover {
            color: var(--gold-light);
            background-color: rgba(212, 175, 55, 0.1);
        }
        
        /* بخش هیرو */
        .hero {
            padding: 180px 0 100px;
            text-align: center;
            background: rgba(0, 0, 0, 0.4);
            margin-top: 80px;
            border-radius: 0 0 30px 30px;
        }
        
        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            color: var(--white);
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
        }
        
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 40px;
            color: var(--gold-light);
        }
        
        .cta-button {
            display: inline-block;
            background: linear-gradient(to right, var(--gold-primary), var(--gold-dark));
            color: var(--black);
            padding: 15px 40px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 700;
            font-size: 1.1rem;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(212, 175, 55, 0.4);
        }
        
        .cta-button:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(212, 175, 55, 0.6);
        }
        
        /* بخش خدمات */
        .services {
            padding: 100px 0;
        }
        
        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 60px;
            color: var(--black);
            position: relative;
        }
        
        .section-title:after {
            content: '';
            display: block;
            width: 100px;
            height: 4px;
            background: linear-gradient(to right, var(--gold-primary), var(--gold-dark));
            margin: 15px auto;
            border-radius: 2px;
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
        }
        
        .service-card {
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
            border: 1px solid rgba(212, 175, 55, 0.2);
        }
        
        .service-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
            border-color: var(--gold-primary);
        }
        
        .service-icon {
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, var(--gold-light), var(--gold-primary));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            font-size: 32px;
            color: var(--black);
        }
        
        .service-card h3 {
            font-size: 1.5rem;
            margin-bottom: 15px;
            color: var(--black);
        }
        
        .service-card p {
            color: var(--gray-dark);
            margin-bottom: 20px;
            font-size: 0.95rem;
        }
        
        .service-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--gold-dark);
            margin-bottom: 20px;
        }
        
        .order-btn {
            display: inline-block;
            background-color: var(--gold-primary);
            color: var(--black);
            padding: 10px 25px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            border: 2px solid var(--gold-primary);
        }
        
        .order-btn:hover {
            background-color: transparent;
            color: var(--gold-primary);
        }
        
        /* فرم سفارش */
        .order-form-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8);
            z-index: 2000;
            align-items: center;
            justify-content: center;
        }
        
        .order-form {
            background-color: var(--white);
            width: 90%;
            max-width: 600px;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            position: relative;
        }
        
        .close-form {
            position: absolute;
            top: 20px;
            left: 20px;
            background: none;
            border: none;
            font-size: 24px;
            color: var(--gray-dark);
            cursor: pointer;
            transition: color 0.3s;
        }
        
        .close-form:hover {
            color: var(--gold-primary);
        }
        
        .form-title {
            text-align: center;
            margin-bottom: 30px;
            color: var(--black);
            font-size: 1.8rem;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: var(--gray-dark);
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-family: 'Vazirmatn', sans-serif;
            font-size: 1rem;
            transition: border-color 0.3s;
        }
        
        .form-control:focus {
            border-color: var(--gold-primary);
            outline: none;
        }
        
        .submit-btn {
            display: block;
            width: 100%;
            background: linear-gradient(to right, var(--gold-primary), var(--gold-dark));
            color: var(--black);
            border: none;
            padding: 15px;
            border-radius: 8px;
            font-size: 1.1rem;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 20px;
        }
        
        .submit-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 15px rgba(212, 175, 55, 0.4);
        }
        
        /* بخش اطلاعات تماس */
        .contact {
            padding: 100px 0;
            background-color: rgba(26, 26, 26, 0.9);
            color: var(--white);
        }
        
        .contact-info {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }
        
        .contact-item {
            text-align: center;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
            transition: all 0.3s ease;
        }
        
        .contact-item:hover {
            background-color: rgba(212, 175, 55, 0.1);
            transform: translateY(-5px);
        }
        
        .contact-icon {
            font-size: 40px;
            color: var(--gold-primary);
            margin-bottom: 20px;
        }
        
        /* فوتر */
        footer {
            background-color: var(--black);
            color: var(--white);
            padding: 40px 0;
            text-align: center;
        }
        
        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin: 20px 0;
        }
        
        .social-links a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 45px;
            height: 45px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            color: var(--white);
            font-size: 20px;
            transition: all 0.3s ease;
        }
        
        .social-links a:hover {
            background-color: var(--gold-primary);
            color: var(--black);
            transform: translateY(-5px);
        }
        
        .copyright {
            margin-top: 20px;
            color: rgba(255, 255, 255, 0.7);
            font-size: 0.9rem;
        }
        
        /* پنل ادمین مخفی */
        .admin-panel-container {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.95);
            z-index: 3000;
            align-items: center;
            justify-content: center;
        }
        
        .admin-login {
            background-color: var(--white);
            width: 90%;
            max-width: 500px;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
        
        .admin-login h2 {
            margin-bottom: 30px;
            color: var(--black);
            font-size: 1.8rem;
        }
        
        .admin-panel {
            background-color: var(--white);
            width: 95%;
            max-width: 1200px;
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.3);
            display: none;
            max-height: 90vh;
            overflow-y: auto;
        }
        
        .admin-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 2px solid #eee;
        }
        
        .admin-orders {
            margin-top: 30px;
        }
        
        .order-item {
            background-color: var(--gray-light);
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 15px;
            border-left: 5px solid var(--gold-primary);
        }
        
        .order-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        
        .order-status {
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
        }
        
        .status-pending {
            background-color: #fff3cd;
            color: #856404;
        }
        
        .status-processing {
            background-color: #cce5ff;
            color: #004085;
        }
        
        .status-completed {
            background-color: #d4edda;
            color: #155724;
        }
        
        .logout-btn {
            background-color: var(--gold-primary);
            color: var(--black);
            border: none;
            padding: 10px 25px;
            border-radius: 50px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .logout-btn:hover {
            background-color: var(--gold-dark);
        }
        
        .status-select {
            padding: 5px 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-family: 'Vazirmatn', sans-serif;
        }
        
        /* رسپانسیو */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .nav-links {
                display: none;
            }
            
            .mobile-menu-btn {
                display: block;
                background: none;
                border: none;
                color: var(--white);
                font-size: 24px;
                cursor: pointer;
            }
            
            .services-grid {
                grid-template-columns: 1fr;
            }
            
            .contact-info {
                grid-template-columns: 1fr;
            }
        }
        
        /* انیمیشن‌ها */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .fade-in {
            animation: fadeIn 0.6s ease forwards;
        }
        
        /* استایل‌های مخفی برای دسترسی ادمین */
        .secret-admin-trigger {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 40px;
            height: 40px;
            background-color: rgba(212, 175, 55, 0.2);
            border-radius: 50%;
            z-index: 999;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            color: transparent;
            font-size: 5px;
            user-select: none;
        }
        
        /* نوت‌ها و آلرت‌ها */
        .notification {
            position: fixed;
            bottom: 20px;
            left: 20px;
            background-color: var(--gold-primary);
            color: var(--black);
            padding: 15px 25px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            z-index: 4000;
            display: none;
            font-weight: 600;
            max-width: 350px;
        }
    </style>
</head>
<body>
    <!-- هدر -->
    <header>
        <div class="container header-container">
            <div class="logo">
                <i class="fab fa-telegram"></i>
                <div class="logo-text">تلگرام پریمیوم</div>
            </div>
            <ul class="nav-links">
                <li><a href="#home">خانه</a></li>
                <li><a href="#services">خدمات</a></li>
                <li><a href="#contact">تماس</a></li>
            </ul>
            <button class="mobile-menu-btn" id="mobileMenuBtn">
                <i class="fas fa-bars"></i>
            </button>
        </div>
    </header>

    <!-- بخش هیرو -->
    <section class="hero" id="home">
        <div class="container">
            <h1 class="fade-in">خدمات حرفه‌ای تلگرام</h1>
            <p class="fade-in">طراحی لوگو، ساخت ربات، استیکر و همه آنچه برای پیشرفت در تلگرام نیاز دارید با بهترین کیفیت و قیمت</p>
            <a href="#services" class="cta-button fade-in">مشاهده خدمات</a>
        </div>
    </section>

    <!-- بخش خدمات -->
    <section class="services" id="services">
        <div class="container">
            <h2 class="section-title">خدمات ما</h2>
            <div class="services-grid">
                <!-- خدمت 1: طراحی لوگو -->
                <div class="service-card fade-in">
                    <div class="service-icon">
                        <i class="fas fa-palette"></i>
                    </div>
                    <h3>طراحی لوگو حرفه‌ای</h3>
                    <p>طراحی لوگوی منحصر بفرد و جذاب برای کانال، ربات یا گروه تلگرام شما با ایده‌های خلاقانه</p>
                    <div class="service-price">از 150,000 تومان</div>
                    <a href="#" class="order-btn" data-service="طراحی لوگو حرفه‌ای">سفارش دهید</a>
                </div>
                
                <!-- خدمت 2: ساخت استیکر -->
                <div class="service-card fade-in">
                    <div class="service-icon">
                        <i class="fas fa-sticky-note"></i>
                    </div>
                    <h3>ساخت پک استیکر</h3>
                    <p>طراحی استیکرهای اختصاصی با شخصیت‌سازی منحصر بفرد برای کانال یا گروه شما</p>
                    <div class="service-price">از 300,000 تومان</div>
                    <a href="#" class="order-btn" data-service="ساخت پک استیکر">سفارش دهید</a>
                </div>
                
                <!-- خدمت 3: ربات تلگرام -->
                <div class="service-card fade-in">
                    <div class="service-icon">
                        <i class="fas fa-robot"></i>
                    </div>
                    <h3>ربات تلگرام</h3>
                    <p>پیاده‌سازی ربات‌های تلگرام با امکانات پیشرفته، پنل مدیریت و یکپارچه‌سازی با سایت</p>
                    <div class="service-price">از 500,000 تومان</div>
                    <a href="#" class="order-btn" data-service="ربات تلگرام">سفارش دهید</a>
                </div>
                
                <!-- خدمت 4: طراحی کانال -->
                <div class="service-card fade-in">
                    <div class="service-icon">
                        <i class="fas fa-broadcast-tower"></i>
                    </div>
                    <h3>طراحی کانال</h3>
                    <p>طراحی گرافیک کانال شامل بنر، پست‌های تبلیغاتی، استوری و قالب‌های حرفه‌ای</p>
                    <div class="service-price">از 200,000 تومان</div>
                    <a href="#" class="order-btn" data-service="طراحی کانال">سفارش دهید</a>
                </div>
                
                <!-- خدمت 5: مشاوره -->
                <div class="service-card fade-in">
                    <div class="service-icon">
                        <i class="fas fa-headset"></i>
                    </div>
                    <h3>مشاوره تخصصی</h3>
                    <p>مشاوره برای راه‌اندازی و رشد کانال، جذب مخاطب و کسب درآمد از تلگرام</p>
                    <div class="service-price">از 100,000 تومان</div>
                    <a href="#" class="order-btn" data-service="مشاوره تخصصی">سفارش دهید</a>
                </div>
                
                <!-- خدمت 6: خدمات ویژه -->
                <div class="service-card fade-in">
                    <div class="service-icon">
                        <i class="fas fa-crown"></i>
                    </div>
                    <h3>پکیج ویژه</h3>
                    <p>پکیج کامل شامل لوگو، استیکر، ربات و طراحی کانال با قیمت ویژه</p>
                    <div class="service-price">1,200,000 تومان</div>
                    <a href="#" class="order-btn" data-service="پکیج ویژه">سفارش دهید</a>
                </div>
            </div>
        </div>
    </section>

    <!-- بخش تماس -->
    <section class="contact" id="contact">
        <div class="container">
            <h2 class="section-title" style="color: var(--white);">تماس با ما</h2>
            <div class="contact-info">
                <div class="contact-item fade-in">
                    <div class="contact-icon">
                        <i class="fab fa-telegram"></i>
                    </div>
                    <h3>تلگرام</h3>
                    <p>@TelegramPremium_Admin</p>
                </div>
                
                <div class="contact-item fade-in">
                    <div class="contact-icon">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <h3>ایمیل</h3>
                    <p>support@telegram-premium.ir</p>
                </div>
                
                <div class="contact-item fade-in">
                    <div class="contact-icon">
                        <i class="fas fa-phone"></i>
                    </div>
                    <h3>تماس تلفنی</h3>
                    <p>۰۹۱۲ XXX XXXX</p>
                </div>
            </div>
        </div>
    </section>

    <!-- فوتر -->
    <footer>
        <div class="container">
            <div class="logo" style="justify-content: center; margin-bottom: 20px;">
                <i class="fab fa-telegram"></i>
                <div class="logo-text">تلگرام پریمیوم</div>
            </div>
            
            <div class="social-links">
                <a href="#"><i class="fab fa-telegram"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
            
            <div class="copyright">
                کلیه حقوق این سایت متعلق به تلگرام پریمیوم می‌باشد. © ۱۴۰۲
            </div>
        </div>
    </footer>

    <!-- فرم سفارش -->
    <div class="order-form-container" id="orderForm">
        <div class="order-form">
            <button class="close-form" id="closeForm">
                <i class="fas fa-times"></i>
            </button>
            <h2 class="form-title">ثبت سفارش</h2>
            <form id="orderFormElement">
                <div class="form-group">
                    <label for="serviceName">خدمت انتخاب شده:</label>
                    <input type="text" id="serviceName" class="form-control" readonly>
                </div>
                
                <div class="form-group">
                    <label for="customerName">نام و نام خانوادگی:</label>
                    <input type="text" id="customerName" class="form-control" required>
                </div>
                
                <div class="form-group">
                    <label for="customerTelegram">آیدی تلگرام:</label>
                    <input type="text" id="customerTelegram" class="form-control" required placeholder="@username">
                </div>
                
                <div class="form-group">
                    <label for="customerPhone">شماره تماس:</label>
                    <input type="text" id="customerPhone" class="form-control" required>
                </div>
                
                <div class="form-group">
                    <label for="orderDetails">توضیحات سفارش:</label>
                    <textarea id="orderDetails" class="form-control" rows="4" placeholder="جزئیات سفارش خود را اینجا بنویسید..."></textarea>
                </div>
                
                <button type="submit" class="submit-btn">ثبت نهایی سفارش</button>
            </form>
        </div>
    </div>

    <!-- پنل ادمین مخفی -->
    <div class="admin-panel-container" id="adminPanelContainer">
        <div class="admin-login" id="adminLogin">
            <h2>ورود به پنل مدیریت</h2>
            <div class="form-group">
                <label for="adminPassword">رمز ورود:</label>
                <input type="password" id="adminPassword" class="form-control" placeholder="رمز ادمین را وارد کنید">
            </div>
            <button class="submit-btn" id="adminLoginBtn">ورود به پنل</button>
            <button class="logout-btn" style="margin-top: 15px; background-color: #6c757d;" id="closeAdminBtn">بستن</button>
        </div>
        
        <div class="admin-panel" id="adminPanel">
            <div class="admin-header">
                <h2>پنل مدیریت سفارش‌ها</h2>
                <button class="logout-btn" id="adminLogoutBtn">خروج از پنل</button>
            </div>
            
            <div class="admin-orders" id="adminOrders">
                <!-- سفارش‌ها اینجا نمایش داده می‌شوند -->
                <p id="noOrdersMessage">هیچ سفارشی ثبت نشده است.</p>
            </div>
        </div>
    </div>

    <!-- ناحیه مخفی برای فعال کردن پنل ادمین -->
    <div class="secret-admin-trigger" id="secretAdminTrigger" title="دکمه مخفی ادمین">.</div>

    <!-- نوت‌ها -->
    <div class="notification" id="notification"></div>

    <!-- اسکریپت‌های جاوااسکریپت -->
    <script>
        // داده‌ها و متغیرهای اصلی
        let orders = JSON.parse(localStorage.getItem('telegramPremiumOrders')) || [];
        const ADMIN_PASSWORD = '51648982hH';
        
        // المنت‌های DOM
        const orderFormContainer = document.getElementById('orderForm');
        const closeFormBtn = document.getElementById('closeForm');
        const orderFormElement = document.getElementById('orderFormElement');
        const serviceNameInput = document.getElementById('serviceName');
        const adminPanelContainer = document.getElementById('adminPanelContainer');
        const adminLogin = document.getElementById('adminLogin');
        const adminPanel = document.getElementById('adminPanel');
        const adminPasswordInput = document.getElementById('adminPassword');
        const adminLoginBtn = document.getElementById('adminLoginBtn');
        const closeAdminBtn = document.getElementById('closeAdminBtn');
        const adminLogoutBtn = document.getElementById('adminLogoutBtn');
        const adminOrdersContainer = document.getElementById('adminOrders');
        const noOrdersMessage = document.getElementById('noOrdersMessage');
        const secretAdminTrigger = document.getElementById('secretAdminTrigger');
        const notification = document.getElementById('notification');
        
        // شمارنده سفارش
        let orderCounter = orders.length > 0 ? Math.max(...orders.map(o => parseInt(o.id))) + 1 : 1;
        
        // نمایش فرم سفارش
        document.querySelectorAll('.order-btn').forEach(btn => {
            btn.addEventListener('click', function(e) {
                e.preventDefault();
                const service = this.getAttribute('data-service');
                serviceNameInput.value = service;
                orderFormContainer.style.display = 'flex';
                setTimeout(() => {
                    orderFormContainer.style.opacity = '1';
                }, 10);
            });
        });
        
        // بستن فرم سفارش
        closeFormBtn.addEventListener('click', () => {
            orderFormContainer.style.opacity = '0';
            setTimeout(() => {
                orderFormContainer.style.display = 'none';
            }, 300);
        });
        
        // ثبت سفارش جدید
        orderFormElement.addEventListener('submit', function(e) {
            e.preventDefault();
            
            const order = {
                id: orderCounter++,
                service: serviceNameInput.value,
                name: document.getElementById('customerName').value,
                telegram: document.getElementById('customerTelegram').value,
                phone: document.getElementById('customerPhone').value,
                details: document.getElementById('orderDetails').value,
                date: new Date().toLocaleString('fa-IR'),
                status: 'pending' // pending, processing, completed
            };
            
            orders.push(order);
            localStorage.setItem('telegramPremiumOrders', JSON.stringify(orders));
            
            showNotification('سفارش شما با موفقیت ثبت شد! شماره سفارش: ' + order.id);
            
            // ریست فرم
            this.reset();
            orderFormContainer.style.opacity = '0';
            setTimeout(() => {
                orderFormContainer.style.display = 'none';
            }, 300);
        });
        
        // فعال کردن پنل ادمین مخفی
        // روش 1: کلیک روی دکمه مخفی
        secretAdminTrigger.addEventListener('click', () => {
            adminPanelContainer.style.display = 'flex';
            setTimeout(() => {
                adminPanelContainer.style.opacity = '1';
            }, 10);
        });
        
        // روش 2: استفاده از کلیدهای ترکیبی (Ctrl+Shift+A)
        document.addEventListener('keydown', function(e) {
            if (e.ctrlKey && e.shiftKey && e.key === 'A') {
                e.preventDefault();
                adminPanelContainer.style.display = 'flex';
                setTimeout(() => {
                    adminPanelContainer.style.opacity = '1';
                }, 10);
            }
        });
        
        // ورود به پنل ادمین
        adminLoginBtn.addEventListener('click', () => {
            const password = adminPasswordInput.value;
            
            if (password === ADMIN_PASSWORD) {
                adminLogin.style.display = 'none';
                adminPanel.style.display = 'block';
                adminPasswordInput.value = '';
                loadOrdersToAdminPanel();
            } else {
                showNotification('رمز ورود اشتباه است!', 'error');
            }
        });
        
        // بستن پنل ادمین
        closeAdminBtn.addEventListener('click', () => {
            adminPanelContainer.style.opacity = '0';
            setTimeout(() => {
                adminPanelContainer.style.display = 'none';
                adminLogin.style.display = 'block';
                adminPanel.style.display = 'none';
                adminPasswordInput.value = '';
            }, 300);
        });
        
        // خروج از پنل ادمین
        adminLogoutBtn.addEventListener('click', () => {
            adminPanelContainer.style.opacity = '0';
            setTimeout(() => {
                adminPanelContainer.style.display = 'none';
                adminLogin.style.display = 'block';
                adminPanel.style.display = 'none';
                adminPasswordInput.value = '';
            }, 300);
        });
        
        // بارگذاری سفارش‌ها در پنل ادمین
        function loadOrdersToAdminPanel() {
            adminOrdersContainer.innerHTML = '';
            
            if (orders.length === 0) {
                noOrdersMessage.style.display = 'block';
                return;
            }
            
            noOrdersMessage.style.display = 'none';
            
            // مرتب کردن سفارش‌ها از جدید به قدیم
            const sortedOrders = [...orders].sort((a, b) => b.id - a.id);
            
            sortedOrders.forEach(order => {
                const orderElement = document.createElement('div');
                orderElement.className = 'order-item';
                orderElement.id = `order-${order.id}`;
                
                // تعیین وضعیت سفارش
                let statusText, statusClass;
                switch(order.status) {
                    case 'pending':
                        statusText = 'در انتظار';
                        statusClass = 'status-pending';
                        break;
                    case 'processing':
                        statusText = 'در حال انجام';
                        statusClass = 'status-processing';
                        break;
                    case 'completed':
                        statusText = 'تکمیل شده';
                        statusClass = 'status-completed';
                        break;
                    default:
                        statusText = 'در انتظار';
                        statusClass = 'status-pending';
                }
                
                orderElement.innerHTML = `
                    <div class="order-header">
                        <div>
                            <strong>شماره سفارش: #${order.id}</strong>
                            <span> | ${order.service}</span>
                        </div>
                        <div>
                            <select class="status-select" data-order-id="${order.id}">
                                <option value="pending" ${order.status === 'pending' ? 'selected' : ''}>در انتظار</option>
                                <option value="processing" ${order.status === 'processing' ? 'selected' : ''}>در حال انجام</option>
                                <option value="completed" ${order.status === 'completed' ? 'selected' : ''}>تکمیل شده</option>
                            </select>
                            <span class="order-status ${statusClass}">${statusText}</span>
                        </div>
                    </div>
                    <p><strong>نام مشتری:</strong> ${order.name}</p>
                    <p><strong>آیدی تلگرام:</strong> ${order.telegram}</p>
                    <p><strong>شماره تماس:</strong> ${order.phone}</p>
                    <p><strong>تاریخ سفارش:</strong> ${order.date}</p>
                    ${order.details ? `<p><strong>توضیحات:</strong> ${order.details}</p>` : ''}
                    <button class="logout-btn" style="margin-top: 10px; padding: 5px 15px; font-size: 0.9rem;" onclick="deleteOrder(${order.id})">حذف سفارش</button>
                `;
                
                adminOrdersContainer.appendChild(orderElement);
            });
            
            // اضافه کردن رویداد تغییر وضعیت
            document.querySelectorAll('.status-select').forEach(select => {
                select.addEventListener('change', function() {
                    const orderId = parseInt(this.getAttribute('data-order-id'));
                    updateOrderStatus(orderId, this.value);
                });
            });
        }
        
        // تابع به‌روزرسانی وضعیت سفارش
        function updateOrderStatus(orderId, newStatus) {
            const orderIndex = orders.findIndex(o => o.id === orderId);
            if (orderIndex !== -1) {
                orders[orderIndex].status = newStatus;
                localStorage.setItem('telegramPremiumOrders', JSON.stringify(orders));
                loadOrdersToAdminPanel();
                showNotification(`وضعیت سفارش #${orderId} به‌روز شد.`);
            }
        }
        
        // تابع حذف سفارش
        window.deleteOrder = function(orderId) {
            if (confirm(`آیا از حذف سفارش #${orderId} اطمینان دارید؟`)) {
                orders = orders.filter(o => o.id !== orderId);
                localStorage.setItem('telegramPremiumOrders', JSON.stringify(orders));
                loadOrdersToAdminPanel();
                showNotification(`سفارش #${orderId} حذف شد.`);
            }
        };
        
        // تابع نمایش نوتیفیکیشن
        function showNotification(message, type = 'success') {
            notification.textContent = message;
            notification.style.backgroundColor = type === 'error' ? '#dc3545' : 'var(--gold-primary)';
            notification.style.color = type === 'error' ? '#fff' : 'var(--black)';
            notification.style.display = 'block';
            
            setTimeout(() => {
                notification.style.opacity = '1';
            }, 10);
            
            setTimeout(() => {
                notification.style.opacity = '0';
                setTimeout(() => {
                    notification.style.display = 'none';
                }, 300);
            }, 4000);
        }
        
        // انیمیشن‌های اسکرول
        const fadeElements = document.querySelectorAll('.fade-in');
        
        const fadeInOnScroll = () => {
            fadeElements.forEach(element => {
                const elementTop = element.getBoundingClientRect().top;
                const windowHeight = window.innerHeight;
                
                if (elementTop < windowHeight - 100) {
                    element.style.opacity = '1';
                    element.style.transform = 'translateY(0)';
                }
            });
        };
        
        // تنظیم اولیه برای عناصر fade-in
        fadeElements.forEach(element => {
            element.style.opacity = '0';
            element.style.transform = 'translateY(20px)';
            element.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        });
        
        // اجرای اولیه و اضافه کردن رویداد اسکرول
        window.addEventListener('scroll', fadeInOnScroll);
        fadeInOnScroll(); // اجرای اولیه
        
        // منوی موبایل
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const navLinks = document.querySelector('.nav-links');
        
        if (mobileMenuBtn) {
            mobileMenuBtn.addEventListener('click', () => {
                navLinks.style.display = navLinks.style.display === 'flex' ? 'none' : 'flex';
            });
            
            // بستن منوی موبایل هنگام کلیک روی لینک
            document.querySelectorAll('.nav-links a').forEach(link => {
                link.addEventListener('click', () => {
                    if (window.innerWidth <= 768) {
                        navLinks.style.display = 'none';
                    }
                });
            });
        }
        
        // نمایش تعداد سفارش‌ها در کنسول برای ادمین
        console.log(`%c🔐 پنل ادمین مخفی | تعداد سفارش‌ها: ${orders.length}`, 'background: #D4AF37; color: #000; padding: 5px 10px; border-radius: 3px; font-weight: bold;');
        console.log(`%cبرای دسترسی به پنل ادمین: Ctrl+Shift+A را فشار دهید یا روی دکمه مخفی پایین سمت راست کلیک کنید.`, 'color: #D4AF37; font-weight: bold;');
    </script>
</body>
</html>
