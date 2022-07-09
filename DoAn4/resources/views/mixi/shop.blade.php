@extends('_layout_mixi')
@section('content')

                    <div class="hero__search" style="margin-left:40%">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                </div>
                                <input type="text" placeholder="bạn cần tìm gì ?" ng-model='q'/>
                                <button type="submit" class="site-btn" >Tìm kiếm</button>
                            </form>
                        </div>
                        </div>
<section class="product spad">
        <div class="container">
            <div class="row">
           
               
                    <div class="filter__item" >
                        <div class="row">
                            <div class="col-lg-8 col-md-5" >
                                <div class="filter__sort" >
                                    <span>Loại Sản Phẩm</span>
                                    <select  >
                                   <option>Trái cây</option>
                                   <option>Rau củ</option>
                                   <option>Đồ ăn</option>
                                    </select>
                                   
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span></span> </h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6" ng-if="loaisanpham.id==sp.id_loai_sp" ng-repeat="sp in sanpham |filter: q |orderBy: 'unit_price' ">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="/img/sanpham/@{{sp.image}}">
                                    <ul class="product__item__pic__hover">
                                        
                                        <li><a href="/mixi/detail/id?=@{{sp.id}}"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart" ng-click="addToCart(sp)"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">@{{sp.name}}</a></h6>
                                    <h5>@{{sp.unit_price | number :'0' }}VND</h5>
                                </div>
                            </div>

                        </div>
                    
              <div class="product__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </section>
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
    <script src="/js/anhthawngs/loaisp.js"></script>
    @stop