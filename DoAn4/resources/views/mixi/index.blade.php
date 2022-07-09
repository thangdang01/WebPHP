@extends('_layout_mixi')
@section('content')
<style>
/* #abuttonv a {
            background-color: #fff;
            border: 1px solid #ddd;
            box-sizing: border-box;
            color: FFC800;
            cursor: pointer;
            display: inline-block;
            font-family: din-round,sans-serif;
            font-size: 15px;
            font-weight: 700;
            padding: 10px 12px;
            text-align: center;
            width: 100%;
            } */
         
#abuttonv {
	padding-top: 10px;
    
}


#abuttonv a {
	display: inline-block;
	width: 40px;
	height: 40px;
	border: 1px solid #b2b2b2;
	font-size: 17px;
	color: #b2b2b2;
	font-weight: 700;
	line-height: 28px;
	text-align: center;
	margin-right: 16px;
    margin-bottom: 200%;
    margin-left:1400%;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}


#abuttonv a:hover {
	background: #7fad39;
	border-color: #7fad39;
	color: #ffffff;
}

#abuttonvn a:last-child {
	margin-right: 0;
}

</style>
<section class="hero">
        <div class="container">
            <div class="row" >
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh sách đồ ăn</span>
                        </div>
                        <ul  ng-repeat="lsp in loaisanpham">
                            <li><a href="/mixi/shop/id?=@{{lsp.id}}">@{{lsp.tenloai}}</a></li>
                           
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                </div>
                                <input type="text" placeholder="bạn cần tìm gì ?" ng-model='q'/>
                                <button type="submit" class="site-btn" >Tìm kiếm</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+84 353866145</h5>
                                <span>Hộ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="/img/banner.png">
                        <div class="hero__text">
                            <!-- <span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p> -->
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/anhthang/img/categories/cat-1.jpg">
                            <h5><a href="#">Trái cây</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/anhthang/img/categories/cat-2.jpg">
                            <h5><a href="#">Đồ ăn vặt</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/anhthang/img/categories/cat-3.jpg">
                            <h5><a href="#">Rau củ</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/anhthang/img/categories/cat-4.jpg">
                            <h5><a href="#">Nước uống</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/anhthang/img/categories/cat-5.jpg">
                            <h5><a href="#">Đồ ăn nhanh</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

<section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Sản phẩm nổi bật</h2>
                    </div>
                    <div class="featured__controls">
                       
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 " dir-paginate="sp in sanpham |orderBy: '-unit_price' |filter: q | itemsPerPage: pageSize" current-page="currentPage">
                    <div class="featured__item" >
                        <div class="featured__item__pic set-bg" data-setbg="/img/sanpham/@{{sp.image}}">
                            <ul class="featured__item__pic__hover">
                             
                                <li><a href="/mixi/detail/id?=@{{sp.id}}"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart" ng-click="addToCart(sp)"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">@{{sp.name}}</a></h6>
                            <h5>@{{sp.unit_price | number :'0' }}VND</h5>
                        </div>
                    </div>
                </div>
            
                    </div>
                </div>
               
                </div>
            </div>
        </div>
    </section>

    <div class="anhthang" >
    <dir-pagination-controls id="abuttonv" max-size='5' on-page-change="pageChangeHandler(newPageNumber)"></dir-pagination-controls>
   </div>

    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="/anhthang/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="/anhthang/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Sản Phẩm Tương Tự</h2>
                    </div>
                    <div class="featured__controls">
                       
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat" ng-repeat="sp in sanpham |orderBy: '-id_loai_sp'| limitTo :4 :2">
                    <div class="featured__item" >
                        <div class="featured__item__pic set-bg" data-setbg="/img/sanpham/@{{sp.image}}">
                            <ul class="featured__item__pic__hover">
                             
                                <li><a href="/mixi/detail/id?=@{{sp.id}}"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart" ng-click="addToCart(sp)"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">@{{sp.name}}</a></h6>
                            <h5>@{{sp.unit_price | currency : '' }}0VND</h5>
                        </div>
                    </div>
                </div>
            
                    </div>
                </div>
               
                </div>
            </div>
        </div>
    </section> -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sản phẩm mới nhất</h4>
                        <div class="latest-product__slider owl-carousel" >
                            <div class="latest-prdouct__slider__item">
                                <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanpham |orderBy: 'id_loai_sp'| limitTo :4 :2">
                                    <div class="latest-product__item__pic" >
                                        <img src="/img/sanpham/@{{sp.image}}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>@{{sp.name}}</h6>
                                        <span>@{{sp.unit_price | number :'0' }}VND</span>
                                    </div>
                                </a>
                                
                            </div>
                            <div class="latest-prdouct__slider__item">
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanpham |orderBy: '-id'| limitTo :4 :2">
                                    <div class="latest-product__item__pic" >
                                        <img src="/img/sanpham/@{{sp.image}}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                    <h6>@{{sp.name}}</h6>
                                        <span>@{{sp.unit_price | number :'0' }}VND</span>
                                    </div>
                                </a>
                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sản phẩm đánh giá cao</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanpham |orderBy: 'id_ncc'| limitTo :4 :2">
                                    <div class="latest-product__item__pic">
                                    <img src="/img/sanpham/@{{sp.image}}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                    <h6>@{{sp.name}}</h6>
                                        <span>@{{sp.unit_price | number :'0' }}VND</span>
                                    </div>
                                </a>
                               
                            </div>
                            <div class="latest-prdouct__slider__item">
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanpham |orderBy: 'id'| limitTo :4 :2">
                                    <div class="latest-product__item__pic">
                                    <img src="/img/sanpham/@{{sp.image}}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                    <h6>@{{sp.name}}</h6>
                                        <span>@{{sp.unit_price | number :'0' }}VND</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sản phẩm ưu đãi</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanpham |orderBy: '-unit_price'| limitTo :4 :2">
                                    <div class="latest-product__item__pic" >
                                        <img src="/img/sanpham/@{{sp.image}}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>@{{sp.name}}</h6>
                                        <span>@{{sp.unit_price | number :'0' }}VND</span>
                                    </div>
                                </a>
                                </div>
                            <div class="latest-prdouct__slider__item">
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanpham |orderBy: 'unit_price'| limitTo :4 :2">
                                    <div class="latest-product__item__pic">
                                    <img  src="/img/sanpham/@{{sp.image}}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                    <h6>@{{sp.name}}</h6>
                                        <span>@{{sp.unit_price | number :'0' }}VND</span>
                                    </div>
                                </a>
                          
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>MiXi Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="/anhthang/img/blog/blog-1.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Món ăn đơn giản</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="/anhthang/img/blog/blog-2.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Món ăn ngon</a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="/anhthang/img/blog/blog-3.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="#">Món ăn nhanh </a></h5>
                            <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam quaerat </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="/img/logo1.png" alt="" style="width: 90px;;height:80px"></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">AnhThawngs</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="/img/logo1.png" alt="" style="width: 90px;;height:80px"></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="/js/anhthawngs/index.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://rawgit.com/michaelbromley/angularUtils-pagination/master/dirPagination.js"></script>
    @stop