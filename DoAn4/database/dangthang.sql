-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2022 lúc 08:59 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dangthang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_ban`
--

CREATE TABLE `bills_ban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kh` int(11) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `tong_tien` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `status` varchar(20) NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills_ban`
--

INSERT INTO `bills_ban` (`id`, `id_kh`, `date_order`, `tong_tien`, `payment`, `status`, `note`, `created_at`, `updated_at`) VALUES
(24, 47, '2001-12-02', 20001, 'on2', '1', 'adad', '2022-05-31 08:46:00', '2022-05-31 01:46:00'),
(25, 48, '2201-01-11', 2312, 'on', '1', 'adasd', '2022-05-31 08:58:33', '2022-05-31 01:58:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_nhap`
--

CREATE TABLE `bills_nhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_ncc` int(11) DEFAULT NULL,
  `id_nhanvien` int(10) NOT NULL,
  `date_order` date DEFAULT NULL,
  `tong_tien` float DEFAULT NULL COMMENT 'tổng tiền',
  `thanh_toan` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bills_nhap`
--

INSERT INTO `bills_nhap` (`id`, `id_ncc`, `id_nhanvien`, `date_order`, `tong_tien`, `thanh_toan`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, 14, '2019-04-15', 1500000, 'on', NULL, '2022-05-15 11:31:40', '2022-05-15 04:31:40'),
(2, 3, 15, '2022-05-12', 11111100, 'on', 'adsdasdasd', '2022-05-29 03:38:43', '2022-05-28 20:38:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail_ban`
--

CREATE TABLE `bill_detail_ban` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill_ban` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `sl` int(11) NOT NULL COMMENT 'số lượng',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail_ban`
--

INSERT INTO `bill_detail_ban` (`id`, `id_bill_ban`, `id_sp`, `sl`, `created_at`, `updated_at`) VALUES
(12, 16, 6, 1, '2019-04-18 22:50:19', '2019-04-18 22:50:19'),
(11, 15, 4, 1, '2019-04-18 22:48:32', '2019-04-18 22:48:32'),
(13, 16, 7, 2, '2019-04-18 22:50:19', '2019-04-18 22:50:19'),
(19, 22, 2, 1, '2019-05-09 01:27:05', '2019-05-09 01:27:05'),
(17, 20, 6, 1, '2019-05-05 18:19:04', '2019-05-05 18:19:04'),
(20, 24, 44, 1, '2022-05-15 03:21:43', '2022-05-15 03:21:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail_nhap`
--

CREATE TABLE `bill_detail_nhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill_nhap` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `sl` int(11) NOT NULL COMMENT 'số lượng',
  `don_vi` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bill_detail_nhap`
--

INSERT INTO `bill_detail_nhap` (`id`, `id_bill_nhap`, `id_sp`, `sl`, `don_vi`, `created_at`, `updated_at`) VALUES
(1, 1, 49, 10, 'kg', '2022-05-15 10:08:10', '2022-05-15 03:08:10'),
(2, 1, 6, 1, 'kg', '2022-05-15 03:08:02', '2022-05-15 03:08:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_kh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_kh`, `email`, `dia_chi`, `sdt`, `note`, `created_at`, `updated_at`) VALUES
(47, 'Dưa hấu', 'thangdang20122001@gmail.com', 'hung yen', '+84353866145', '1', '2022-05-06 18:58:29', '2022-05-06 18:58:29'),
(48, 'Dưa hấu', 'thangdang20122001@gmail.com', 'Dưa hấu', '2323123123', 'Dưa hấu', '2022-05-31 01:51:35', '2022-05-31 01:51:35'),
(49, 'Dưa hấu', 'thangdang20122001@gmail.com', 'Dưa hấu', '77888898989', 'Dưa hấu', '2022-06-01 06:48:05', '2022-06-01 06:48:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id`, `id_sp`, `sl`) VALUES
(2, 2, 23),
(3, 3, 23),
(4, 4, 23),
(5, 5, 34),
(6, 6, 34),
(7, 7, 56),
(8, 8, 25),
(9, 9, 45),
(10, 10, 27),
(11, 11, 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_sp`
--

CREATE TABLE `loai_sp` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenloai` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Delet` int(11) NOT NULL COMMENT '0:hien,1:an',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_sp`
--

INSERT INTO `loai_sp` (`id`, `tenloai`, `image`, `Delet`, `created_at`, `updated_at`) VALUES
(25, 'Rau củ', 'assortment-of-colorful-ripe-tropical-fruits-top-royalty-free-image-995518546-1564092355.jpg', 2, '2022-05-06 20:38:10', '2022-05-30 07:58:42'),
(26, 'Đồ ăn nhanh', '1000_F_392379645_MTCiHwCu54cJQeCxV0pE2vvLz7T6dedp.jpg', 2, '2022-05-06 20:38:18', '2022-05-27 23:56:31'),
(45, 'Trái cây', '3b360279-8b43-40f3-9b11-604749128187.jpg', 0, NULL, '2022-05-30 08:00:28'),
(46, 'Đồ uống', 'bai-viet-nen-uong-nuoc-ep-hay-dung-trai-cay-01.png', 0, NULL, '2022-05-30 08:00:19'),
(47, '\r\nĐồ ăn vặt', 'bai-viet-nen-uong-nuoc-ep-hay-dung-trai-cay-01.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_new` int(10) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'tiêu đề',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'nội dung',
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'hình',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_new`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, '10 thức uống giải độc cho thận tốt nhất', 'Nếu thận của bạn không khoẻ mạnh, nó sẽ mất khả năng lọc ra chất thải và chất độc sẽ bắt đầu tích tụ trong cơ thể, dẫn đến sỏi thận.', '10880965-218x150.jpg', '2022-05-15 10:43:48', '2022-05-15 03:43:48'),
(2, 'Bí quyết về ăn uống giúp bạn mau chóng khỏi ốm', 'Ăn 3 bữa 1 ngày:)', 'corsair-mp600-1-660x472.jpg', '2022-05-15 10:43:54', '2022-05-15 03:43:54'),
(3, '9 công dụng chữa bệnh của đậu nành', '...', 'rd2VjBiYbQKjMKfJnzNH8Z-1024-80-218x150.jpg', '2022-05-15 10:43:59', '2022-05-15 03:43:59'),
(4, 'dawdawd', 'dawdwadawd', 'awd', '2022-04-13 00:31:52', '2022-04-13 00:31:52'),
(5, 'dawdawdad', 'adawdadad', 'adawd', '2022-04-13 00:33:58', '2022-04-13 00:33:58'),
(6, 'Dưa hấu?', 'da', 'wd', '2022-04-13 00:38:27', '2022-04-13 00:38:27'),
(7, 'adawwa', 'awdawdad', 'adaw', '2022-04-13 00:40:45', '2022-04-13 00:40:45'),
(8, 'Dưa hấu', 'Dưa hấu', 'rd2VjBiYbQKjMKfJnzNH8Z-1024-80-218x150.jpg', '2022-05-15 03:44:09', '2022-05-15 03:44:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL,
  `ten_nhanvien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `quequan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capbac` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `ten_nhanvien`, `gioitinh`, `ngaysinh`, `quequan`, `sdt`, `email`, `capbac`, `created_at`, `updated_at`) VALUES
(14, 'Dưa hấu', 'Nam', '2000-10-10', 'hung yen', '+84353866145', 'thangdang20122001@gmail.com', '1', '2022-05-06 18:57:57', '2022-05-06 18:57:57'),
(15, 'Dưa hấu', 'nữ', '2022-05-24', 'Dưa hấu', 'Dưa hấu', 'thangdang20122001@gmail.com', 'Dưa hấu', '2022-05-12 00:17:11', '2022-05-12 00:17:11'),
(16, 'Dưa hấu', 'nữ', '2022-05-19', 'Dưa hấu', '9767565656', 'thangdang20122001@gmail.com', 'Dưa hấu', '2022-05-28 20:38:17', '2022-05-28 20:38:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_cung_cap`
--

CREATE TABLE `nha_cung_cap` (
  `id` int(11) NOT NULL,
  `ten_ncc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi_ncc` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Delet` int(11) NOT NULL COMMENT '0:hien,1:an',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_cung_cap`
--

INSERT INTO `nha_cung_cap` (`id`, `ten_ncc`, `diachi_ncc`, `email`, `sdt`, `Delet`, `created_at`, `updated_at`) VALUES
(3, 'PhongLinhFood', 'ận 9, Tp. Hồ Chí Minh (TPHCM)', 'nanc.com', '(028) 39103066', 0, '2022-05-28 06:58:25', '2022-05-27 23:58:25'),
(4, 'Nhà hàng Secret Garden', 'Phố 4, Quận 7 Tp.Hồ Chí Minh', 'QTY@gmail.com', '09648359821', 0, '2022-05-28 06:59:43', '2022-05-27 23:59:43'),
(11, 'Bún đậu Hồ Cá – Dương Quảng Hàm', 'Hà Nội', 'thangdang20122001@gmail.com', '+84353866145', 1, '2022-05-28 07:00:17', '2022-05-28 00:00:17'),
(13, 'Cửa hàng hoa quả sạch FUJI Fruit', 'Hưng Yên', 'thangdang20122001@gmail.com', '0965789555', 2, '2022-06-01 04:34:58', '2022-06-01 04:34:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `total` float NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hoi`
--

CREATE TABLE `phan_hoi` (
  `id_phan_hoi` int(11) NOT NULL,
  `id_tk` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `level` int(10) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phan_hoi`
--

INSERT INTO `phan_hoi` (`id_phan_hoi`, `id_tk`, `id_sp`, `level`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 'Nếu mua nhiều có được chiết khấu không vậy?', '2019-04-15 05:27:42', '0000-00-00 00:00:00'),
(2, 1, 7, 5, 'Mình đã mua hoa quả đúng chất lượng.', '2019-04-15 05:27:43', '0000-00-00 00:00:00'),
(3, 1, 2, 3, 'Ngon.Ngon', '2019-04-15 05:27:43', '0000-00-00 00:00:00'),
(4, 1, 1, 0, 'Quả này đẻ', '2019-04-15 05:27:43', '2019-04-10 02:20:29'),
(5, 1, 1, 0, 'uk', '2019-04-15 05:27:43', '2019-04-10 02:21:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_cao`
--

CREATE TABLE `quang_cao` (
  `id` int(11) NOT NULL,
  `tittle` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_loai_sp` int(10) UNSIGNED DEFAULT NULL,
  `id_ncc` int(11) NOT NULL,
  `mota_sp` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `gia_km` float DEFAULT NULL,
  `so_luong` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `don_vi_tinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `name`, `id_loai_sp`, `id_ncc`, `mota_sp`, `unit_price`, `gia_km`, `so_luong`, `image`, `don_vi_tinh`, `created_at`, `updated_at`) VALUES
(59, 'Cơm cuộn (Kimbap)', 26, 4, 'Cơm cuộn là món ăn truyền thống mà bạn dễ bắt gặp trên những thước phim Hàn Quốc', 120000, NULL, 23, 'Ảnh chụp màn hình 2022-05-21 212356.png', 'vnd', '2022-05-21 07:25:36', '2022-06-05 19:32:28'),
(60, 'Mì tương đen Hàn Quốc', 26, 4, 'Mì tương đen là món ăn không thể không nhắc đến khi nói về các món ngon Hàn Quốc.', 150000, NULL, 233, 'Ảnh chụp màn hình 2022-05-21 212410.png', 'vnd', '2022-05-21 07:27:00', '2022-06-05 19:32:34'),
(61, 'Khoai tây lốc xoáy (Hweori Gamja)', 47, 3, 'So với những nơi khác thì khoai tây lốc xoáy Hweori Gamja mỏng và giòn hơn nhiều. Và đây cũng là điểm đặc biệt khiến món ăn này thu hút nhiều tín đồ ẩm thực.', 50000, NULL, 788, 'Ảnh chụp màn hình 2022-05-21 212424.png', 'vnd', '2022-05-21 07:28:08', '2022-06-05 19:32:40'),
(62, 'Takkochi – Gà que sốt tương', 26, 4, 'Takkochi – Gà que sốt tương', 350000, NULL, 2233, 'Ảnh chụp màn hình 2022-05-21 212435.png', 'vnd', '2022-05-21 07:40:32', '2022-06-05 20:19:01'),
(63, 'Kem Seoul', 47, 4, 'Tuy Hàn Quốc là quốc gia có khí hậu lạnh nhưng những món kem lại được yêu thích cực kỳ. Nổi bật trong đó là chiếc kem dài 32cm, loại kem này khá nổi tiếng vì nó thường xuất hiện trong các cảnh phim Hàn Quốc và ghi điểm bởi sự “ăn hoài không hết”.', 100000, NULL, 23, 'Ảnh chụp màn hình 2022-05-21 214259.png', 'vnd', '2022-05-21 07:44:27', '2022-06-05 19:32:45'),
(64, 'Bingsu', 46, 4, 'Bingsu là món tráng miệng hoàn hảo để kết thúc bữa ăn. Từ một món ăn truyền thống của người Hàn Quốc, Bingsu ngày càng phổ biến rộng rãi trên toàn thế giới và được nhiều người yêu thích bởi hương vị thơm ngon, hấp dẫn.', 70000, NULL, 23, 'Ảnh chụp màn hình 2022-05-21 214837.png', 'vnd', '2022-05-21 07:49:59', '2022-06-05 19:32:53'),
(65, 'Konpija – Pizza ống', 47, 4, 'Pizza là món ăn nổi tiếng của nước Ý nhưng khi vào Hàn Quốc, nó đã được biến hóa để trở nên lạ và độc đáo hơn nhưng hương vị thì cực kỳ hấp dẫn. Thoạt nhìn, bạn sẽ dễ liên tưởng đến chiếc kem ốc quế, nhưng nhờ hình dáng như vậy mà món ăn này vô cùng tiện lợi khi thưởng thức', 230000, NULL, 234, 'Ảnh chụp màn hình 2022-05-21 215020.png', 'vnd', '2022-05-21 07:50:48', '2022-06-05 19:33:01'),
(68, 'Nho ngón tay', 45, 3, 'NHo raats ngon', 400000, NULL, 24233, 'Ảnh chụp màn hình 2022-05-22 101004.png', 'vnd', '2022-05-21 20:12:08', '2022-06-05 19:33:07'),
(69, 'Cherry Mỹ', 45, 3, 'Cherry Mỹ', 590000, NULL, 2323, 'Ảnh chụp màn hình 2022-05-22 101020.png', 'vnd', '2022-05-21 20:17:20', '2022-06-05 19:33:13'),
(70, 'Nho sữa Hàn', 45, 3, 'Nho sữa Hàn Quốc là giống nho shine Muscat có xuất xứ từ Nhật Bản, đây được coi là một trong những loại nho ngon xuất sắc nhất trên thế giới,', 1300000, NULL, 2332, 'Ảnh chụp màn hình 2022-05-22 101030.png', 'vnd', '2022-05-21 20:18:20', '2022-06-05 20:18:14'),
(71, 'Dưa lưới Đài Loan', 45, 3, 'Dưa lưới Đài Loan là loại dưa được nhập khẩu từ Đài Loan với giống Kouji, chúng có vỏ ngoài có màu xanh vừa, không quá đậm hoặc nhạt.', 150000, NULL, 2344, 'Ảnh chụp màn hình 2022-05-22 101055.png', 'vnd', '2022-05-21 20:19:36', '2022-06-05 20:18:21'),
(72, 'Táo Envy Mỹ', 45, 3, 'Táo Envy Mỹ size to đang bán tại cửa hàng hoa quả nhập khẩu Ngọc Châu fruits là loại táo envy size 24, (tức là 24 quả/ thùng/ 10kg) ngoài ra táo Envy Mỹ còn có các size 18, size 40, size 50, size 55, size 60,...đây là một trong những loại táo được coi là ngon nhất trên thế giới.', 355000, NULL, 23423, 'Ảnh chụp màn hình 2022-05-22 101041.png', 'vnd', '2022-05-21 20:20:31', '2022-06-05 19:33:24'),
(73, 'Cam ruột đỏ Úc', 45, 3, 'Cam ruột đỏ  hay còn gọi là cam cara được nhiều người ưu chuộng bởi hàm lượng Vitamin C trong cam cara ruột đỏ không hạt vượt trội, lớn gấp 150% so với các loại cam vàng khác', 200000, NULL, 4567, 'Ảnh chụp màn hình 2022-05-22 102101.png', 'vnd', '2022-05-21 20:21:33', '2022-06-05 19:33:19'),
(75, 'Nước ép cà chua', 46, 3, 'Thức uống yêu thích của tôi là Coca-Cola. Nó là một loại nước ngọt có ga, có đường và là thức uống bán chạy nhất thế giới. Một biệt danh phổ biến của Coca-Cola là Coke. Tôi thường uống Coca để giải cơn khát. Ngoài ra, tôi cũng uống khi ăn đồ ăn nhanh hoặc nhiều dầu mỡ như gà rán, khoai tây chiên, các món lẩu, … Coca tuy ngon nhưng lại có hại cho sức khỏe.', 35000, NULL, 1111, 'Ảnh chụp màn hình 2022-06-01 165336.png', 'vnd', '2022-06-01 02:57:04', '2022-06-05 20:15:20'),
(76, 'Trà sữa trân châu', 46, 3, 'Mùa hè nóng nực đến rồi, những cốc trà sữa, cốc kem sữa có thể sẽ khiến nhiều người e ngại vì không đủ thanh mát, chính vì thế, lúc này những loại trà hoa quả lên ngôi. Những cốc trà hoa quả được pha chế từ vô vàn các loại vị khiến cho ai cũng cảm thấy sảng khoái.', 25000, NULL, 342, 'Ảnh chụp màn hình 2022-06-01 165218.png', 'vnd', '2022-06-01 02:58:38', '2022-06-05 19:33:29'),
(77, 'Trà hoa quả', 46, 4, 'Mùa hè nóng nực đến rồi, những cốc trà sữa, cốc kem sữa có thể sẽ khiến nhiều người e ngại vì không đủ thanh mát, chính vì thế, lúc này những loại trà hoa quả lên ngôi. Những cốc trà hoa quả được pha chế từ vô vàn các loại vị khiến cho ai cũng cảm thấy sảng khoái.', 40000, NULL, 234, 'Ảnh chụp màn hình 2022-06-01 165247.png', 'vnd', '2022-06-01 02:59:29', '2022-06-05 19:33:35'),
(78, 'Cà phê', 46, 4, 'Không phải tự nhiên mà cafe latte lại có mặt ở hầu khắp các menu đồ uống, từ những quán cafe truyền thống, đến những quán cafe take away. Bởi lượng cafein trong cafe latte thấp, độ ngậy của sữa lại cao nên được nhiều bạn trẻ, những người không quen uống cafe đậm', 60000, NULL, 2223, 'Ảnh chụp màn hình 2022-06-01 170038.png', 'vnd', '2022-06-01 03:01:19', '2022-06-05 19:33:40'),
(79, 'Trà đào chanh sả', 46, 3, 'Chắc chẳng ai còn lạ gì món nước uống trà đào chanh sả thơm lừng mát lạnh này, nổi lên đã từ lâu', 30000, NULL, 23, 'Ảnh chụp màn hình 2022-06-01 165318.png', 'vnd', '2022-06-01 03:07:11', '2022-06-05 19:33:45'),
(80, 'Matcha đá xay', 46, 3, 'Một trong các loại nước uống được giới trẻ yêu thích 2020', 75000, NULL, 97, 'Ảnh chụp màn hình 2022-06-01 170739.png', 'vnd', '2022-06-01 03:08:11', '2022-06-05 19:33:50'),
(81, 'CHORIZO PIZZA', 26, 4, 'Xúc xích Tây Ban Nha, hành tây, ô liu, sốt cà chua, pho mai.', 90000, NULL, 23, 'Ảnh chụp màn hình 2022-06-01 170927.png', 'vnd', '2022-06-01 03:10:25', '2022-06-05 19:33:58'),
(82, 'MARGHERITA PIZZA', 26, 4, 'Cà chua, nhiều pho mai Mozzarella, sốt cà chua, pho ma', 120000, NULL, 12, 'Ảnh chụp màn hình 2022-06-01 171102.png', 'vnd', '2022-06-01 03:11:46', '2022-06-05 19:34:46'),
(83, 'VEGGIE PIZZA', 26, 4, 'Nấm, ngô, dứa, ớt xanh, hành tây, cà chua, sốt cà chua, pho mai.', 100000, NULL, 321, 'Ảnh chụp màn hình 2022-06-01 171219.png', 'vnd', '2022-06-01 03:13:10', '2022-06-05 20:10:43'),
(84, 'SƯỜN NƯỚNG BBQ – SIZE M – 300GR', 26, 4, 'Khối lượng: Thịt heo 300gr  Sốt BBQ truyền thống', 150000, NULL, 23, 'Ảnh chụp màn hình 2022-06-01 171339.png', 'vnd', '2022-06-01 03:14:26', '2022-06-05 20:10:55'),
(85, 'Khoai mì (1 kg)', 25, 13, 'Khoai lang Nhật trồng tại Lâm Đồng là món ăn được rất nhiều người yêu thích, được trồng và có củ quanh năm, ngon nhất là khi được nướng lên trên một bếp than đổ hồng. Loại củ này có vị ngọt ngào như mật, tan tan trên đầu lưỡi. Khoai lang Nhật chứa nhiều vitamin A, B, C và nhiều khoáng chất cần thiết', 12000, NULL, 2334, '4b5adf9b3c71d367cee83f92c2fca5dc.png', 'vnd', '2022-06-01 04:36:19', '2022-06-05 20:13:09'),
(87, 'Hành lá (200 g)', 25, 13, 'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', 12000, NULL, 2324, 'fa247b762e9abdef34bf95daea80f924.png', 'vnd', '2022-06-01 04:44:57', '2022-06-05 20:13:19'),
(88, 'Đậu Cove ( 500g)', 25, 13, 'HCM - Đậu Cove ( 500g) - [Giao nhanh TPHCM] Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 25000, NULL, 243, 'c5a43d14a0151820290bbce93e2a924f.jpg', 'vnd', '2022-06-01 04:47:21', '2022-06-05 20:13:28'),
(89, 'Cà chua (500 g)', 25, 13, 'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', 16000, NULL, 23, '71ce328d6dd2814b700084ff3fe01f5b.png', 'vnd', '2022-06-01 04:48:39', '2022-06-05 20:12:34'),
(90, 'Bí đao nguyên trái (500g)', 25, 13, 'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', 15000, NULL, 23, '5378cbfcdf5775b366f1dfc5b1c6ea47.jpg', 'vnd', '2022-06-01 04:49:57', '2022-06-05 20:13:01'),
(91, 'Khổ qua (Mướp đắng) (500g)', 25, 13, 'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', 19000, NULL, 23, 'Ảnh chụp màn hình 2022-06-01 185131.png', 'vnd', '2022-06-01 04:52:19', '2022-06-05 20:18:06'),
(92, 'Bí non Nhật (500 g)', 25, 13, 'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', 15000, NULL, 23, '860e80a7d020c00847a1b644f3fefd4b.jpg', 'vnd', '2022-06-01 04:53:22', '2022-06-05 20:17:58'),
(93, 'Bông cải xanh (500 - 800g)', 25, 13, 'Với sản phẩm tươi sống, trọng lượng thực tế có thể chênh lệch khoảng 10%.', 28000, NULL, 23, '0bb43e2906a0ad29e8fd76dd795578e9.jpg', 'vnd', '2022-06-01 04:54:15', '2022-06-05 20:12:25'),
(94, 'SPAGHETTI BOLOGNESE', 26, 4, 'Sốt bò băm, pho mai Parmesan', 75000, NULL, 234, 'Ảnh chụp màn hình 2022-06-01 185653.png', 'vnd', '2022-06-01 04:57:38', '2022-06-05 20:12:00'),
(95, 'Dâu tây Hàn Quốc(1kg)', 45, 3, '– Chứa nhiều vitamin và chất khoáng, giúp thúc đẩy chuyển hóa các chất  trong cơ thể, làm máu huyết lưu thông, có thể dùng khi bị bệnh tiểu  đường.', 279000, NULL, 321, 'Ảnh chụp màn hình 2022-06-01 190327.png', 'vnd', '2022-06-01 05:04:31', '2022-06-05 20:12:15'),
(96, 'Kiwi vàng New Zealand', 45, 13, 'Kiwi vàng là giống kiwi lai tạo, có hình dạng quả giống với kiwi xanh nhưng không có nhiều lông xù xì như kiwi xanh. Vỏ có màu nâu vàng trơn nhẵn, thịt quả màu vàng trong rất đẹp mắt, với nhiều hạt đen tạo thành 1 vòng tròn xung quanh trục dọc của quả. Kiwi vàng có vị ngọt mát rất đặc trưng.', 189000, NULL, 24, 'kiwi-vang-newzealand-vinfruits-2-min-scaled.jpg', 'vnd', '2022-06-01 05:07:12', '2022-06-05 20:12:07'),
(97, 'Cookie Cream', 46, 4, 'Cookie Cream là một món đồ uống hot trend đang được nhiều người mê mẩn. Đây là một loại đồ uống đá xây với những nguyên liệu như bánh cookie, sữa đặc cùng với kem whipping cream ở bên trên.', 55000, NULL, 23, 'Ảnh chụp màn hình 2022-06-01 190854.png', 'vnd', '2022-06-01 05:09:34', '2022-06-05 20:11:52'),
(98, 'Bimbim', 47, 3, 'Bimbim rat ngon', 5000, NULL, 24434323, '581fe8d388921da76012dffab98f1876.jpg_525x525q80.jpg', 'vnd', '2022-06-01 05:13:49', '2022-06-05 20:11:34'),
(99, 'Khoai Tây Lát Lay\'s Stax Ống 105g', 47, 3, 'Sản phẩm khoai tây ống nổi tiếng thế giới Lay\'s xuất xứ Thái Lan , sản phẩm với nhiều miếng khoai tây dày và nhiều hương vị thơm ngon ăn không ngấy.', 29000, NULL, 24, 'Ảnh chụp màn hình 2022-06-01 191432.png', 'vnd', '2022-06-01 05:15:06', '2022-06-05 20:11:43'),
(100, 'KHOAI TÂY CỌNG TÚI 1KG SIÊU NGON', 47, 3, 'Khoai tây cọng  đóng gói 1kg/túi hạn sử dụng: 12 tháng chế biến: chiên rán trẻ con người lớn đều mê', 40000, NULL, 244, 'Ảnh chụp màn hình 2022-06-01 191603.png', 'vnd', '2022-06-01 05:16:40', '2022-06-05 20:11:23'),
(101, 'BẮP RANG BƠ VỊ MẬT ONG LY SIÊU TO', 47, 3, '1 ly bắp rang to thơm nồng nàn , mật ông tẩm đều tất cả các hạt, ăn ngon k thể cưỡng lại được luôn á mọi người!!!! khối lượng 100g', 15000, NULL, 2434, 'Ảnh chụp màn hình 2022-06-01 191737.png', 'vnd', '2022-06-01 05:18:12', '2022-06-05 20:11:14'),
(102, 'Bỏng ngô siêu to khổng lồ bơ, caramen, chai 1.2kg', 47, 3, 'Ai đã từng ăn bỏng ngô bên siêu thị Trung rồi chắc chắn ko muốn ăn thêm bất kì 1 loại bỏng ngô nào khác Bỏng ngô siêu to khổng lồ đây ạ .  Để thoả mãn được niềm ăn chơi của hội ghiền ăn vặt . Thì đây là lựa chọn hoàn hảo luôn ạ những hạt bỏng phủ đầy caramen nhưng ăn không bị ngấy', 109000, NULL, 4231, 'Ảnh chụp màn hình 2022-06-01 191851.png', 'vnd', '2022-06-01 05:19:39', '2022-06-05 20:11:05'),
(103, 'SPAGHETTI SEAFOOD', 26, 4, 'Mực, tôm, ớt xanh, cà chua, hành tây, sốt cà chua, pho mai Parmesan', 95000, NULL, 2, 'Ảnh chụp màn hình 2022-06-06 000846.png', 'vnd', '2022-06-05 10:10:01', '2022-06-05 20:14:45'),
(104, 'Trà phô mai kem sữa', 46, 3, 'Nằm trong danh sách những đồ uống ngon Hà Nội chắc hẳn không thể thiếu trà phô mai kem sữa hot rần rần.', 45000, NULL, 2, 'Ảnh chụp màn hình 2022-06-06 001109.png', 'vnd', '2022-06-05 10:11:49', '2022-06-05 20:15:58'),
(105, 'Socola đá xay', 46, 3, 'Lại một món nước uống nữa được ưa chuộng trở lại trong mùa hè năm nay chính là socola đá xay.', 65000, NULL, 233, 'Ảnh chụp màn hình 2022-06-06 001215.png', 'vnd', '2022-06-05 10:12:53', '2022-06-05 20:16:09'),
(106, 'Trà xanh chanh leo kim quất mật ong', 46, 3, 'Xu hướng đồ uống hot trend 2020 của các bạn trẻ đó là chú trọng đến những món đồ uống tốt cho sức khỏe và vóc dáng và trà xanh chanh leo kim quất mật ong chính là món đồ uống như vậy.', 120000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 001306.png', 'vnd', '2022-06-05 10:13:36', '2022-06-05 20:16:17'),
(107, 'Nước bí đao', 46, 3, 'Bí đao thường nổi tiếng với công dụng thanh nhiệt giải độc rất tốt ngoài ra còn những công dụng khác như: hỗ trợ phát triển chiều cao, tăng cường hệ miễn dịch, cải thiện thị lực, giảm cân,...', 55000, NULL, 233, 'Ảnh chụp màn hình 2022-06-06 001434.png', 'vnd', '2022-06-05 10:15:10', '2022-06-05 20:16:49'),
(108, 'Sữa bắp', 46, 3, 'Hương vị của sữa bắp được hoà0n tất có màu vàng ươm đẹp mắt của bắp. Khi uống ta sẽ cảm nhận vị béo thơm của hạt bắp hòa cùng vị ngọt của sữa tươi và sữa đặc. Tạo nên một hương vị đặc trưng mới lạ.', 70000, NULL, 234, 'Ảnh chụp màn hình 2022-06-06 001600.png', 'vnd', '2022-06-05 10:16:31', '2022-06-05 20:16:40'),
(109, 'Combo Cơm Gà Rán', 26, 4, '1 Cơm Gà Giòn Cay / 1 Cơm Gà Giòn Không Cay / 1 Cơm Gà Truyền', 68000, NULL, 34, 'Ảnh chụp màn hình 2022-06-06 001808.png', 'vnd', '2022-06-05 10:18:41', '2022-06-05 20:16:27'),
(110, 'Combo Burger', 26, 4, '1 Burger Zinger / 1 Burger Tôm / 1 Burger Gà Quay Flava', 87000, NULL, 234, 'Ảnh chụp màn hình 2022-06-06 001855.png', 'vnd', '2022-06-05 10:19:28', '2022-06-05 20:14:18'),
(111, 'Combo Gà Rán', 26, 4, '2 Miếng Gà Giòn Cay / 2 Miếng Gà Giòn Không Cay / 2 Miếng Gà Truyền', 78000, NULL, 243, 'Ảnh chụp màn hình 2022-06-06 002011.png', 'vnd', '2022-06-05 10:20:43', '2022-06-05 20:15:48'),
(112, 'Combo Gà Quay', 26, 4, '1 Miếng Đùi Gà Quay Giấy Bạc / 1 Miếng Đùi Gà Quay Tiêu', 90000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 002103.png', 'vnd', '2022-06-05 10:21:34', '2022-06-05 20:15:29'),
(113, 'Combo Mì Ý', 26, 4, '1 Mì Ý Xốt Cà Gà Viên 1 Miếng Gà Giòn Cay / 1 Miếng Gà Giòn Không', 85000, NULL, 242, 'Ảnh chụp màn hình 2022-06-06 002147.png', 'vnd', '2022-06-05 10:22:18', '2022-06-05 20:14:55'),
(114, 'Bắp cải trộn (Lớn)', 47, 4, NULL, 22000, NULL, 232, 'Ảnh chụp màn hình 2022-06-06 002351.png', 'vnd', '2022-06-05 10:24:28', '2022-06-05 20:15:39'),
(115, 'Bánh Trứng (1 cái)', 47, 4, 'ngon', 17000, NULL, 234, 'Ảnh chụp màn hình 2022-06-06 002500.png', 'vnd', '2022-06-05 10:25:41', '2022-06-05 20:15:12'),
(116, 'Thanh Bí Phô-mai (2 Thanh)', 47, 4, 'ngon', 26000, NULL, 223, 'Ảnh chụp màn hình 2022-06-06 002510.png', 'vnd', '2022-06-05 10:26:10', '2022-06-05 20:15:04'),
(117, 'Trà đào', 46, 3, 'ngon', 22000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 002739.png', 'vnd', '2022-06-05 10:28:04', '2022-06-05 20:14:35'),
(118, '7Up Lon', 46, 3, 'ngon', 15000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 002729.png', 'vnd', '2022-06-05 10:28:29', '2022-06-05 20:14:26'),
(119, 'Pepsi Lon', 46, 3, 'ngon', 15000, NULL, 234, 'Ảnh chụp màn hình 2022-06-06 002719.png', 'vnd', '2022-06-05 10:28:54', '2022-06-05 20:13:58'),
(120, 'Cherry Vàng Size 11 Mỹ', 46, 13, 'Cherry vàng Mỹ chất lượng có cuống tươi xanh Vị ngọt đậm hơn những loại Cherry khác Cherry hình trái tim, da căng mọng, quả to, chắc và giòn Cherry vàng có vỏ màu vàng kết hợp với màu đỏ tươi rất bắt mắt Nhập khẩu trực tiếp từ Mỹ 100% nói không với chất bảo quản & nói không với trái cây Trung Quốc Đổi trả sản phẩm trong vòng 24h', 899000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 003208.png', 'vnd', '2022-06-05 10:33:22', '2022-06-05 20:14:05'),
(121, 'Táo Xanh Granny Smith Mỹ (1kg)', 46, 13, 'Trái cây nhập khẩu từ Mỹ luôn là loại trái cây đa dạng và phổ biến nhất trên thị trường hiện nay với tiêu chuẩn chất lượng vượt trội. Người tiêu dùng vô cùng yêu mến các loại trái cây từ Mỹ do chất lượng sản phẩm đồng đều, nhiều chủng loại, quy cách đóng gói đẹp trong khi giá vô cùng cạnh tranh.', 135000, NULL, 232, 'Ảnh chụp màn hình 2022-06-06 003238.png', 'vnd', '2022-06-05 10:34:05', '2022-06-05 20:13:49'),
(122, 'Dưa Lưới Fuji Giống Nhật', 45, 13, 'Trái cây Nhật Bản (hay hoa quả Nhật Bản) luôn được đánh giá là loại trái cây sạch, có tiêu chuẩn chất lượng cao bậc nhất trên thế giới hiện nay và luôn được đón nhận nồng nhiệt ở thị trường Việt Nam hiện nay. Sẽ là thiếu sót cực kỳ lớn nếu trong đời bạn không thưởng thức bất kỳ loại trái cây Nhật nào.', 399000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 003446.png', 'vnd', '2022-06-05 10:35:33', '2022-06-05 20:13:41'),
(123, 'Quýt Úc', 45, 13, 'Trái cây nhập khẩu từ Úc luôn được yêu chuộng do chất lượng tuyệt hảo trong khi giá cả lại vô cùng cạnh tranh.', 179000, NULL, 2324, 'Ảnh chụp màn hình 2022-06-06 003552.png', 'vnd', '2022-06-05 10:36:27', '2022-06-05 20:17:10'),
(124, 'Cải ngọt hữu cơ (300g)', 25, 3, 'Công dụng: Cải ngọt có hơn 10 loại vitamin cần thiết cho cơ thể, trong đó, hàm lượng canxi, vitamin A và vitamin K rất dồi dào, với một lượng đáng kể vitamin B9 và vitamin E. Chính vì thế, rau cải ngọt còn có tác dụng nâng cao sức đề kháng, bảo vệ cơ thể khỏi các tác nhân gây bệ', 21000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 003913.png', 'vnd', '2022-06-05 10:40:19', '2022-06-05 20:17:17'),
(125, 'Bơ/1kg', 25, 3, 'Chứng nhận/ Canh tác: Canh tác theo hướng hữu cơ.  Xuất xứ: Trang trại tại Dak Nong, Việt Nam.  Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 235000, NULL, 23, 'Ảnh chụp màn hình 2022-06-06 004131.png', 'vnd', '2022-06-05 10:42:19', '2022-06-05 20:17:26'),
(126, 'Cà rốt/400g', 25, 3, 'Công dụng: Ăn cà rốt chứa vitamin A, vitamin C, carotenoid, kali và các chất chống oxy hoá, không chỉ có tác dụng tốt cho mắt, mà còn mang đến cho bạn', 34000, NULL, 234, 'Ảnh chụp màn hình 2022-06-06 004249.png', 'vnd', '2022-06-05 10:43:43', '2022-06-05 20:17:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singup`
--

CREATE TABLE `singup` (
  `id` int(11) NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `singup`
--

INSERT INTO `singup` (`id`, `username`, `password`, `date_create`) VALUES
(0, 'thang', 'abcd', '2022-06-06 11:47:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(10) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id_slide`, `image`, `created_at`, `update_at`) VALUES
(1, 'image-14.jpg', '2022-05-22 08:39:55', '2022-05-22 08:44:36'),
(2, 'image-33.jpg', '2022-05-22 08:39:55', '2022-05-22 08:44:36'),
(3, 'image-13.jpg', '2022-05-22 08:39:55', '2022-05-22 08:44:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `users_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `full_name`, `users_name`, `email`, `password`, `phone`, `address`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Đoàn Thị Thùy Linh', 'Hieu YEu Linh', 'doanlinh101998@gmail.com', '$2y$10$TE8Q0ak2lz3W7.pWUQMW7.Li5O7KkGFwlI/ci8McxtPtKpLkWybbK', '0983017992', 'Đa Lộc -Ân Thi-Hưng Yê', '', NULL, '2022-04-14 03:08:32', '2022-04-13 20:08:32'),
(8, 'Đoàn Thị Linh', 'Linh', 'doanlinh1098@gmail.com', '$2y$10$E2tUqHVotdoL8T9d2DhBlepbHod5zuTTVYVafvLl1caMG2t67NYrS', '0983017991', 'Bình Nguyên-Đa Lộc-Ân Thi-Hưng', '', 'bWKdka3a0UR3Qu8Iu2wGYZrqafQnlzhk9O82dcsUlILBO0vIXS0zvog62m51', '2022-04-14 02:45:51', '2022-04-13 19:45:51'),
(9, 'daadas', 'dasdawaw', 'aseease', 'dadawdad', 'adadad', 'addadad', NULL, NULL, '2022-05-07 04:05:03', '2022-05-06 21:05:03'),
(10, 'awdawdawdaw', 'dadawdaw', 'dawdawdaw', 'dawdawdaw', 'dawdawdawda', 'dawdaw', NULL, NULL, '2022-04-13 20:04:13', '2022-04-13 20:04:13'),
(11, 'Dưa hấu', 'dhaudhaudaw', 'thangdang20122001@gmail.com', 'thangdang20122001@gmail.com', '+84353866145', 'hung yen', NULL, NULL, '2022-04-18 01:45:26', '2022-04-18 01:45:26');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills_ban`
--
ALTER TABLE `bills_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills_nhap`
--
ALTER TABLE `bills_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail_ban`
--
ALTER TABLE `bill_detail_ban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail_nhap`
--
ALTER TABLE `bill_detail_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_sp`
--
ALTER TABLE `loai_sp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenloai` (`tenloai`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_new`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `phan_hoi`
--
ALTER TABLE `phan_hoi`
  ADD PRIMARY KEY (`id_phan_hoi`);

--
-- Chỉ mục cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `singup`
--
ALTER TABLE `singup`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`),
  ADD UNIQUE KEY `id_slide` (`id_slide`),
  ADD UNIQUE KEY `id_slide_2` (`id_slide`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `users_name` (`users_name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills_ban`
--
ALTER TABLE `bills_ban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `bills_nhap`
--
ALTER TABLE `bills_nhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bill_detail_ban`
--
ALTER TABLE `bill_detail_ban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `bill_detail_nhap`
--
ALTER TABLE `bill_detail_nhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `loai_sp`
--
ALTER TABLE `loai_sp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_new` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `nha_cung_cap`
--
ALTER TABLE `nha_cung_cap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phan_hoi`
--
ALTER TABLE `phan_hoi`
  MODIFY `id_phan_hoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
