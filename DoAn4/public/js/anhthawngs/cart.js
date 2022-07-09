var app = angular.module('myapp',[]);

                app.controller('mycontroller',function($scope,$http)
                {
                    $scope.totalprice = function(){
                        $scope.total = 0;
                        $scope.listSP = JSON.parse(localStorage.getItem('cart'));
                        if($scope.listSP==null){
                           return  $scope.total = 0;
                        }
                        else{
                            for(var i=0; i<$scope.listSP.length;i++){
                                $scope.total+=$scope.listSP[i].quantity*$scope.listSP[i].unit_price;
                            }
                        }
                        return  $scope.total;
                    }
                    $scope.getdate = function () {
                        var d = new Date();
                        d = new Date(d.getTime() - 3000000);
                        var date_format_str = d.getFullYear().toString()+"-"+((d.getMonth()+1).toString().length==2?(d.getMonth()+1).toString():"0"+(d.getMonth()+1).toString())+"-"+(d.getDate().toString().length==2?d.getDate().toString():"0"+d.getDate().toString())+" "+(d.getHours().toString().length==2?d.getHours().toString():"0"+d.getHours().toString())+":"+((parseInt(d.getMinutes()/5)*5).toString().length==2?(parseInt(d.getMinutes()/5)*5).toString():"0"+(parseInt(d.getMinutes()/5)*5).toString())+":00";
                        console.log(date_format_str);
                        return date_format_str;
                    }
                    $scope.infomation = function(){
                        $scope.info = " ";
                        $scope.listSP = JSON.parse(localStorage.getItem('cart'));
                        if($scope.listSP==null){
                           return  $scope.info = " ";
                        }
                        else{
                            for(var i=0; i<$scope.listSP.length;i++){
                                $scope.info+=$scope.listSP[i].name+":"+$scope.listSP[i].quantity+";";
                            }
                        }
                        return  $scope.info;
                    }

                    var api1 = 'http://127.0.0.1:8000/api/khachhangs/';
                   var loadData = function(){
                    $http({
                        method:'GET',
                        url:api1
                    }).then(function(res){
                        $scope.khachhang = res.data;
                        console.log(res.data);
                    });
                }
                loadData();

                    $scope.LoadCart = function (sp) {
                        $scope.cart = JSON.parse(localStorage.getItem('cart'));
                    }
                    $scope.LoadCart();

                    $scope.Tang = function (sp) {
                        var index = $scope.cart.indexOf(sp);
                        if (index >= 0) {
                            $scope.cart[index].quantity += 1;
                        }
                        localStorage.setItem('cart', JSON.stringify($scope.cart));
                    }
                
                    $scope.Giam = function (sp) {
                        var index = $scope.cart.indexOf(sp);
                        if (index >= 0 && $scope.cart[index].quantity >= 2) {
                            $scope.cart[index].quantity -= 1;
                        }
                        localStorage.setItem('cart', JSON.stringify($scope.cart));
                    }
                
                    $scope.Xoa = function (sp) {
                        var index = $scope.cart.indexOf(sp);
                        $scope.cart.splice(index, 1);
                        localStorage.setItem('cart', JSON.stringify($scope.cart));
                        alert("Đã xóa sản phẩm thành công");
                    }
                      /*Thanh toán*/
    $scope.LoadCartTT = function () {
        $scope.total = 0;
        $scope.listSPTT = JSON.parse(localStorage.getItem('cart'));
        $scope.listSPTT.forEach(function (item, i) {
            $scope.total += item.quantity * item.unit_price;
        });
    };
    $scope.LoadCartTT();

   
   
 //Xử lí hoa don
 let r = Math.floor(Math.random() * 1001);

 $scope.updateData = function() {
     var t  = document.getElementById('name_kh').value;
     $scope.ban ={
         id_kh : r,
         kh_name : t,
         tong_tien : $scope.totalprice (),
         date_order : $scope.getdate(),
         payment : "on",
         status :  '0',
         note : $scope.infomation()
     }
     $http({
         method: "POST",
         url: 'http://127.0.0.1:8000/api/hdbans/',
         data: $scope.ban,
         headers: { 'Content-Type': 'application/json' }
     }).success(function(response) {
         $scope.removeSP();
         alert('THANH TOÁN THÀNH CÔNG');
         $scope.LoadCart();
     });
 }
    
$scope.removeSP = function(){
    localStorage.removeItem('cart');
}
   
});


