var app = angular.module('myapp',[]);
                app.controller('mycontroller',function($scope,$http)
                {
                    var api = 'http://127.0.0.1:8000/api/hdbans/';
                    $scope.LoadCartTT = function () {
                        $scope.total = 0;
                        $scope.listSPTT = JSON.parse(localStorage.getItem('cart'));
                        $scope.listSPTT.forEach(function (item, i) {
                            $scope.total += item.quantity * item.unit_price;
                        });
                    };
                    $scope.LoadCartTT(); 

                  

                    $scope.CreateHoaDon = function () {
                        let bills_ban = {};
                        bills_ban.id_kh = $('#id_kh').val();
                        bills_ban.date_order = $('#date_order').val();
                        bills_ban.tong_tien = $('#tong_tien').val();
                        bills_ban.payment = $('#payment').val();
                        bills_ban.status = $('#status').val();
                        bills_ban.note = $('#note').val();
                        bills_ban.CTDonHang = [];
                        $scope.listSPTT.forEach(function (item, i) {
                            bills_ban.CTDonHang.push({ MaSP: item.MaSP, SoLuong: item.quantity });
                        });
                        $http({
                            method: 'POST',
                            url: api,
                            datatype: 'json',
                            data: JSON.stringify(bills_ban)
                        }).then(function (response) {
                            if (response.data.ok == 1) {
                                alert('Thêm thành công');
                            }
                            else {
                                alert('Có lỗi');
                            }
                        });
                    };      
                            

});
