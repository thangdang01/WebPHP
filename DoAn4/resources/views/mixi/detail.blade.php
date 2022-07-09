@extends('_layout_mixi')
@section('content')
<section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="/img/sanpham/@{{sanpham.image}}" alt="">
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>@{{sanpham.name}}</h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price">@{{sanpham.unit_price | number :'0' }}VND</div>
                        <b>Mô Tả:<p>@{{sanpham.mota_sp}}</p></b>
                        <div class="input-group col-md-6 d-flex mb-3 col-lg-12" ng-if="sanpham.id==c.id"  ng-repeat="c in cart">
           
           <div ng-click="Giam(c)" class="btn btn-sm" style="border: 1px solid rgba(0, 0, 0, 0.1); border-radius:0; height:40px; width:40px; text-align: center; padding: 9px;"><i class="fas fa-minus"></i></div>               
           <input type="text" value="@{{c.quantity}}" style="width: 70px; text-align: center; font-size: 15px; font-weight: 400; height: 40px;">
           <div ng-click="Tang(c)" class="btn btn-sm" style="border: 1px solid rgba(0, 0, 0, 0.1); border-radius:0; height:40px; width:40px; text-align: center; padding: 9px;"><i class="fas fa-plus"></i></div>
   </div>
                        <a href="#" class="primary-btn" ng-click="addToCart(sanpham)">ADD TO CARD</a>
                        <ul>
                            <li><b>Khả dụng</b> <span>Trong kho</span></li>
                            <li><b>Giao hàng</b> <span>Vận chuyển 01 ngày <samp>Nhận miễn phí ngay hôm nay</samp></span></li>
                           
                            <li><b>Chia sẻ</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Thông tin sản phẩm</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Thông tin</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Nhận xét <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Thông tin sản phẩm</h6>
                                    <p>Ai đã từng ăn bỏng ngô bên siêu thị Trung rồi chắc chắn ko muốn ăn thêm bất kì 1 loại bỏng ngô nào khác Bỏng ngô siêu to khổng lồ đây ạ . 
Để thoả mãn được niềm ăn chơi của hội ghiền ăn vặt . Thì đây là lựa chọn hoàn hảo luôn ạ những hạt bỏng phủ đầy caramen nhưng ăn không bị ngấy 
Phải gọi là chân ái của hội ăn vặt lun ne
1 chai dài tận 53cm 
Điều kiện đổi trả : - Hàng thiếu, hàng sai lỗi do shop
 - Chỉ nhận khi hộp hàng còn nguyên vẹn chưa bóc, mở 
- Khách hàng cung cấp đc video rõ ràng từ lúc nhận đến khi mở hộp hàng cho shop - </p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Thông tin</h6>
                                    <p>◼️ An toàn cho người sử dụng
◼️ Mở chai và sử dụng ngay
◼️ Thành phần: Ngô, maltose, đường trắng
nhỏ 250g
◼️ Khối lượng: 1.2kg
◼️ HSD: 10 tháng
◼️ Shop cam kết sản phẩm y hình ảnh hiển thị</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Nhận xét</h6>
                                    <p>Sản phẩm chỉ đóng gói ko dc kỹ nên hơi móp chai nhưng ko sao tạm chấp nhận dc bánh giòn ngon</p>
                                </div>
                            </div>
                        </div>
                    </div>
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
                                <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanphams |orderBy: 'id_loai_sp'| limitTo :4 :2">
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
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanphams |orderBy: '-id'| limitTo :4 :2">
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
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanphams |orderBy: 'id_ncc'| limitTo :4 :2">
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
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanphams |orderBy: 'id'| limitTo :4 :2">
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
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanphams |orderBy: '-unit_price'| limitTo :4 :2">
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
                            <a href="/mixi/detail/id?=@{{sp.id}}" class="latest-product__item" ng-repeat="sp in sanphams |orderBy: 'unit_price'| limitTo :4 :2">
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
    <script src="/js/anhthawngs/detail.js"></script>
    @stop