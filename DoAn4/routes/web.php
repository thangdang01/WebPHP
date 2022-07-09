<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Http\Controllers\api\NhanvienController;
use App\Http\Controllers\api\KhachController;
use App\Http\Controllers\api\LoaisanphamController;
use App\Http\Controllers\api\SanphamController;
use App\Http\Controllers\api\NhacungcapController;
use App\Http\Controllers\api\SlideController;
use App\Http\Controllers\api\NewsController;
use App\Http\Controllers\api\HDBanController;
use App\Http\Controllers\api\ChitietHDBanController;
use App\Http\Controllers\api\HDNhapController;
use App\Http\Controllers\api\ChitietHDNhapController;
use App\Http\Controllers\api\KhoController;
use App\Http\Controllers\api\UsersController;
use App\Http\Controllers\api\PhanhoiController;


// User
Route::get('/', function () {
    return view('mixi.index');
});
Route::get('/mixi/index', function () {
    return view('mixi.index');
});
Route::get('/mixi/cart', function () {
    return view('mixi.cart');
});
Route::get('/mixi/detail/{id}', function () {
    return view('mixi.detail');
});
Route::get('/mixi/shop/{id}', function () {
    return view('mixi.shop');
});
Route::get('/mixi/blog', function () {
    return view('mixi.blog');
});
Route::get('/mixi/contact', function () {
    return view('mixi.contact');
});
Route::get('/mixi/checkout', function () {
    return view('mixi.checkout');
});
Route::get('/mixi/about', function () {
    return view('mixi.about');
});
Route::get('/mixi/login', function () {
    return view('mixi.login');
});




// ADMIN
Route::get('/admin/admin', function () {
    return view('admin.admin');
});
Route::get('/admin/nhanvien', function () {
    return view('admin.nhanvien');
});
Route::get('/admin/khachhang', function () {
    return view('admin.khachhang');
});
Route::get('/admin/loaisanpham', function () {
    return view('admin.loaisanpham');
});
Route::get('/admin/sanpham', function () {
    return view('admin.sanpham');
});
Route::get('/admin/nhacungcap', function () {
    return view('admin.nhacungcap');
});
Route::get('/admin/news', function () {
    return view('admin.news');
});
Route::get('/admin/slide', function () {
    return view('admin.slide');
});
Route::get('/admin/hdban', function () {
    return view('admin.hdban');
});
Route::get('/admin/chitiethdban', function () {
    return view('admin.chitiethdban');
});
Route::get('/admin/hdnhap', function () {
    return view('admin.hdnhap');
});
Route::get('/admin/login', function () {
    return view('admin.login');
});
Route::get('/admin/chitiethdnhap', function () {
    return view('admin.chitiethdnhap');
});
Route::get('/admin/kho', function () {
    return view('admin.kho');
});
Route::get('/admin/users', function () {
    return view('admin.users');
});
Route::get('/admin/phanhoi', function () {
    return view('admin.phanhoi');
});

// ANHTHAWNGS