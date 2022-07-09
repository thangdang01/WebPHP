@extends('_layout_mixi')
@section('content')
<section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Products</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th>Total</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody ng-repeat="c in cart track by $index">
                                <tr >
                                    <td class="shoping__cart__item" style="width: 200px;height: 200px;">
                                        <img src="/img/sanpham/@{{c.image}}" alt="">

                                        
                                    </td>
                                    <td><h5>@{{c.name}}</h5></td>
                                    <td class="shoping__cart__price">
                                    @{{c.unit_price | number :'0' }}VND
                                    </td>
                                    <td class="shoping__cart__quantity">
                                            <button ng-click="Giam(c)">-</button>
                                        <span>@{{c.quantity}}</span>
                                        <button ng-click="Tang(c)">+</button>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                    @{{c.quantity * c.unit_price | number :'0' }}VND
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <button style="background: gray"><span class="icon_close" ng-click="Xoa(c)"></span></button>
                                    </td>
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                   
                        <a href="/mixi/index" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                        CONTINUE SHOPPING</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6" >
                    <div class="shoping__checkout">
                        <h5>Tổng giỏ hàng</h5>
                        <ul>
                    
                            <li>Tổng<span>@{{total | number :'0' }}VND</span></li>
                        </ul>
                        <a href="http://127.0.0.1:8000/mixi/checkout" class="primary-btn">Thanh toán giỏ hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="/js/anhthawngs/cart.js"></script>
    @stop