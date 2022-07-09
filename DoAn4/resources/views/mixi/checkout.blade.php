@extends('_layout_mixi')
@section('content')

<section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> Have a coupon? <a href="#">Click here</a> to enter your code
                    </h6>
                </div>
            </div>
            <div class="checkout__form">
                <h4>Thông tin chi tiết</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="row">
                      
						<div class="form-group">
							<label>Khách hàng</label>
							<input type="text" class="form-control" id="name_kh" value="" placeholder=""  ng-model="khach.kh_name">                  
						</div>
					</div>
                            
                            <div class="checkout__input">
                            <label for="account" class="form-label">Địa chỉ *</label>
                            <input id="DiaChi" type="text" placeholder="Nhập địa chỉ của bạn" class="form-control">
                            <span class="form-message"></span>
                            </div>
                            <div class="checkout__input">
                            <label for="account" class="form-label">Tỉnh / Thành phố *</label>
                            <input id="DiaChi" type="text" placeholder="Nhập Tỉnh/TP" class="form-control">
                            <span class="form-message"></span>
                            </div>
                           
                           
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                    <label for="account" class="form-label">Số điện thoại *</label>
                            <input type="text" placeholder="Nhập số điện thoại của bạn" id="SoDienThoai" class="form-control">
                            <span class="form-message"></span>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                            <label for="account" class="form-label">Ghi chú cho đơn hàng</label>
                            <textarea class="form-control" name="" id="" cols="3" rows="2"></textarea>
                        </div>
                        </div>
                        <div class="col-lg-12 col-md-2" >
                            <div class="checkout__order" >
                                <h4>Đơn hàng của bạn</h4>
                                <div class="checkout__order__products" >Sản phẩm <span>Giá Sản Phẩm</span></div>
                                <ul ng-repeat="c in cart">
                                    <li >@{{c.name}}<span>   @{{c.quantity * c.unit_price | number :'0' }}VND</span></li>
                                  
                                </ul>
                                <div class="checkout__order__subtotal">Tổng đơn hàng <span>@{{total | number :'0' }}VND</span></div>
                               
                                <div class="checkout__input__checkbox">
                                  
                                </div>
                                <p></p>
                                <div class="checkout__input__checkbox">
                                    <label for="payment">
                                        Thanh toán khi nhận hàng
                                        <input type="checkbox" id="payment">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="checkout__input__checkbox">
                                    <label for="paypal">
                                        Thanh toán thẻ
                                        <input type="checkbox" id="paypal">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <from >
                                <p><a ng-click="updateData()" class="btn btn-primary py-3 px-4" style="color:#fff;width:100%;background-color:#62BF5E">Đặt hàng</a></p>
</from>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    
    <script src="/js/anhthawngs/cart.js"></script>
    @stop