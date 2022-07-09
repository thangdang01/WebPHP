<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MIXI FODD</title>
    <link rel="icon" type="image/png" sizes="19x19" href="/img/logo2.png">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/anhthang/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/anhthang/css/style.css" type="text/css">

    <script src="/js/angular.min.js"></script>

</head>

<body ng-app="myapp" ng-controller="mycontroller">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="/anhthang/img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="/anhthang/img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">

                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> thangdang@gmail.com.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header" >
        <div class="header__top" style="background-color:#fff">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> thangdang20122001@gmail.com</li>
                                <li>Free Ship đơn hàng $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                               
                             
                            <div class="header__top__right__auth">
                                <a ><i class="fa fa-user"></i> Đăng Nhập
                                <ul>
                                    <li ><a href="#">Tài Khoản</a></li>
                                    <li ><a href="/admin/login">Đăng Xuất</a></li>
                                </a>
</ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" >
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="/img/logo2.png"style="width: 150px;height:120px" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6" style="width:102px;heigth:102px">
                    <nav class="header__menu" >
                        <ul>
                            <li class="active"><a href="http://127.0.0.1:8000/mixi/index">Trang chủ</a></li>
                            <li><a href="http://127.0.0.1:8000/mixi/about">About</a>
                            <li><a href="#">Shop</a>
                                <ul class="header__menu__dropdown">

                                    <li><a href="http://127.0.0.1:8000/mixi/cart">Giỏ Hàng</a></li>
                                    <li><a href="http://127.0.0.1:8000/mixi/checkout">Thanh Toán</a></li>
                                 
                                </ul>
                            </li>
                            <li><a href="http://127.0.0.1:8000/mixi/blog">Tin Tức</a></li>
                            <li><a href="http://127.0.0.1:8000/mixi/contact">Liên Hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                          
                            <li><a href="http://127.0.0.1:8000/mixi/cart"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price" style="width:10px;heigth:10px"> </div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
 
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->

    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    @yield('content')
        @yield('acc')
    <!-- Featured Section End -->

    <!-- Banner Begin -->

    <!-- Banner End -->

    <!-- Latest Product Section Begin -->

    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->

    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/anhthang/js/jquery-3.3.1.min.js"></script>
    <script src="/anhthang/js/bootstrap.min.js"></script>
    <script src="/anhthang/js/jquery.nice-select.min.js"></script>
    <script src="/anhthang/js/jquery-ui.min.js"></script>
    <script src="/anhthang/js/jquery.slicknav.js"></script>
    <script src="/anhthang/js/mixitup.min.js"></script>
    <script src="/anhthang/js/owl.carousel.min.js"></script>
    <script src="/anhthang/js/main.js"></script>


   
</body>

</html>