-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2018 at 04:56 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chuvanduong_eyewearstore_th17`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) UNSIGNED NOT NULL,
  `username` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role_admin` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `img_path` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `email`, `phone`, `address`, `role_admin`, `status`, `img_path`, `create_time`, `update_time`) VALUES
(1, 'duongcv', '12345', 'dragonhn1106@gmail.com', '0964014502', 'haf nooij', -1, 1, '30594871_1333640823445946_1457325310256087040_o.jpg', '0000-00-00 00:00:00', '2018-04-11 21:17:13'),
(2, 'admin', '12345', '', '', '', -1, 1, 'kieu_kinh_1.2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) NOT NULL,
  `question_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_user` tinyint(3) NOT NULL,
  `create_time` datetime NOT NULL,
  `like_answer` int(10) UNSIGNED DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `status`, `username`, `email`, `level_user`, `create_time`, `like_answer`, `content`) VALUES
(1, 25, 1, 'admin', 'dragonhn1xxx@gmail.com', 1, '2018-04-25 16:22:30', 0, 'sao thế bạn'),
(2, 25, 1, 'admin', 'dragonhn1xxx@gmail.com', 0, '2018-04-25 16:24:06', 0, 'xxxxx');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_hoadon` int(11) NOT NULL,
  `id_dh` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_hoadon`, `id_dh`, `status`, `create_time`, `update_time`) VALUES
(1, 1, 1, '2018-03-26 13:06:35', NULL),
(2, 2, 1, '2018-03-26 13:06:38', NULL),
(3, 4, 1, '2018-03-26 13:06:41', NULL),
(4, 5, 1, '2018-03-26 13:06:43', NULL),
(5, 8, 1, '2018-04-21 08:18:16', '0000-00-00 00:00:00'),
(6, 7, 1, '2018-04-21 08:18:20', '0000-00-00 00:00:00'),
(7, 7, 1, '2018-04-21 08:18:22', '0000-00-00 00:00:00'),
(8, 7, 1, '2018-04-21 08:18:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id_hd` int(11) NOT NULL,
  `id_kinh` int(10) UNSIGNED NOT NULL,
  `TenKH` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(11) NOT NULL,
  `Email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SoLuong` int(11) UNSIGNED NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id_hd`, `id_kinh`, `TenKH`, `SDT`, `Email`, `DiaChi`, `GhiChu`, `SoLuong`, `ThanhTien`, `TrangThai`, `create_time`, `update_time`) VALUES
(1, 1, 'duongcv', 964014502, 'duongcv@gmail.com', 'hanoi', 'dat hang nhanh', 100, 6900000, 1, '2018-03-26 13:10:26', '2018-03-26 13:10:29'),
(2, 2, 'duongcv', 964014502, 'duongcv@gmail.com', 'hanoi', 'dathang', 100, 69000000, 1, '2018-03-26 13:10:20', '2018-03-26 13:10:23'),
(3, 3, 'duongcv2', 964014502, 'duongcv@gmail.com', 'hanoi', 'dat hang nhanh', 1000, 6900000, 1, '2018-03-26 13:10:13', '2018-03-26 13:10:17'),
(4, 2, 'duongcv4', 964014502, 'duongcv@gmail.com', 'hanoi', 'dathang', 2, 12000000, 1, '2018-03-26 13:10:06', '2018-03-26 13:10:10'),
(5, 21, 'duongcv3', 964014502, 'duongcv@gmail.com', 'hanoi', 'dat hang gap', 4, 120000000, 1, '2018-03-26 13:10:01', '2018-03-26 13:10:03'),
(6, 21, 'duongcv5', 964014502, 'duongcv@gmail.com', 'hanoi', 'dat hang gap', 4, 120000000, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 8, 'duongcv', 964014502, 'duongcv1006@gmail.com', 'hanoij', 'dat hanh nhanh', 2, 2000000, 2, '2018-04-20 03:32:25', '0000-00-00 00:00:00'),
(8, 11, 'duongcv', 964014502, 'duongcv1006@gmail.com', 'hanoij', 'dat hanh nhanh', 1, 1000000, 2, '2018-04-20 03:32:25', '0000-00-00 00:00:00'),
(9, 8, 'duongcv5', 964014505, 'dragonhn1xxx@gmail.com', 'hanoi', '', 1, 1000002, 0, '2018-04-25 15:08:15', '0000-00-00 00:00:00'),
(10, 11, 'duongcv5', 964014505, 'dragonhn1xxx@gmail.com', 'hanoi', 'sadsadsa', 1, 1000002, 0, '2018-04-25 15:09:06', '0000-00-00 00:00:00'),
(11, 11, 'duongcv5', 964014505, 'dragonhn1xxx@gmail.com', 'hanoi', 'nhanh e ơi', 100, 100000200, 0, '2018-04-25 15:37:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kinh`
--

CREATE TABLE `kinh` (
  `id` int(11) NOT NULL,
  `TenKinh` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_nsx` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_npp` int(11) NOT NULL,
  `HinhAnh` varchar(200) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `GiaCu` int(11) NOT NULL,
  `GiaMoi` int(11) DEFAULT NULL,
  `id_loai` int(11) NOT NULL,
  `status` int(100) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `SoLuotXem` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kinh`
--

INSERT INTO `kinh` (`id`, `TenKinh`, `id_nsx`, `id_npp`, `HinhAnh`, `GiaCu`, `GiaMoi`, `id_loai`, `status`, `SoLuong`, `SoLuotXem`, `create_time`, `date_time`) VALUES
(0, '', '', 0, NULL, 11, NULL, 0, 0, 0, 0, NULL, NULL),
(2, 'T8200696 - K&Iacute;NH THỜI TRANG NAM NỮ1', '1', 1, 'kieu_kinh_1.1.jpg', 1000, 1000, 1, 1, 1, 8, '0000-00-00 00:00:00', '2018-04-10 16:59:57'),
(3, 'T8200696 - K&Iacute;NH THỜI TRANG NAM NỮ2', '2', 2, 'kieu_kinh_1.1.jpg', 1000, 1000, 1, 1, 1, 0, '0000-00-00 00:00:00', '2018-04-20 03:30:36'),
(4, 'T8200696 - K&Iacute;NH THỜI TRANG NAM NỮ3', '3', 3, 'cung_loai_1.jpg', 1000, 3000000, 1, 1, 1, 0, '0000-00-00 00:00:00', '2018-04-24 09:39:48'),
(5, 'T8200696 - K&Iacute;NH THỜI TRANG NAM NỮ4', '4', 4, 'kieu_kinh_2.1.jpg', 1000, 900000, 1, 1, 1, 6, '0000-00-00 00:00:00', '2018-04-24 09:40:02'),
(6, 'PORSCHE- 18K- P8499 - K&Iacute;NH THỜI TRANG NAM', '5', 5, 'kieu_kinh_1.2.jpg', 1000000, 900000, 3, 1, 321, 2, '2018-04-10 16:15:51', '2018-04-11 20:54:05'),
(7, 'PORSCHE- 18K- P8499 - K&Iacute;NH THỜI TRANG NAM1', '1', 1, 'kieu_kinh_1.jpg', 1000000, 2147483647, 3, 1, 321, 3, '2018-04-10 16:16:39', '2018-04-11 20:53:14'),
(8, 'PORSCHE-18K-P8181 - GỌNG K&Iacute;NH NỮ5', '2', 2, 'kieu_kinh_1.jpg', 1000002, 900000, 2, 1, 321, 1, '2018-04-10 16:17:25', '2018-04-24 09:40:19'),
(9, 'PORSCHE-18K-P8181 - GỌNG K&Iacute;NH NỮ6', '3', 3, 'kieu_kinh_1.jpg', 1000000, 900000, 2, 1, 321, 33, '2018-04-10 16:17:25', '2018-04-10 16:59:43'),
(10, 'PORSCHE-18K-P8181 - GỌNG K&Iacute;NH NỮ7', '4', 4, 'kieu_kinh_1.jpg', 1000000, 900000, 2, 1, 321, 75, '2018-04-10 16:17:25', '2018-04-10 16:59:43'),
(11, 'PORSCHE-18K-P8181 - GỌNG K&Iacute;NH NỮ8', '5', 5, 'kieu_kinh_1.jpg', 1000002, 1000002000, 2, 1, 321, 44, '2018-04-10 16:17:25', '2018-04-10 16:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `loaikinh`
--

CREATE TABLE `loaikinh` (
  `id_loai` int(11) NOT NULL,
  `TenLoai` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `img_path` varchar(120) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(100) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaikinh`
--

INSERT INTO `loaikinh` (`id_loai`, `TenLoai`, `img_path`, `status`, `create_time`, `update_time`) VALUES
(1, 'K&iacute;nh mắt thời trang nam', 'kieu_kinh_1.2.jpg', 0, '0000-00-00 00:00:00', '2018-04-04 08:58:54'),
(2, 'K&iacute;nh mắt thời trang nữ 2', 'kieu_kinh_1.2.jpg', 1, '0000-00-00 00:00:00', '2018-04-08 20:16:30'),
(3, 'Kính mắt dành cho trẻ em', 'kieu_kinh_1.2.jpg', 1, '2018-03-26 00:26:55', '2018-03-26 00:26:58'),
(4, 'Kính thuốc', 'kieu_kinh_1.2.jpg', 1, '2018-03-26 00:27:34', '2018-03-26 00:27:37'),
(5, 'Kính áp tròng', 'kieu_kinh_1.2.jpg', 1, '2018-03-26 00:27:57', '2018-03-26 00:28:00'),
(6, 'k&iacute;nh mắt thời trang kute', 'kieu_kinh_1.2.jpg', 0, '2018-04-04 08:52:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nhaphanphoi`
--

CREATE TABLE `nhaphanphoi` (
  `id_npp` int(11) NOT NULL,
  `TenNPP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SDTNPP` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChiNPP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhaphanphoi`
--

INSERT INTO `nhaphanphoi` (`id_npp`, `TenNPP`, `SDTNPP`, `DiaChiNPP`, `img_path`, `create_time`, `update_time`, `status`) VALUES
(1, 'C&ocirc;ng Ty Cổ Phần Thương Mại Đầu Tư VILANDIO', '0966778494', '201 L&yacute; Tự Trọng, P. Bến Th&agrave;nh, Quận 1, TP. Hồ Ch&iacute; Minh', 'kieu_kinh_1.2.jpg', '0000-00-00 00:00:00', '2018-04-10 05:39:53', 1),
(2, 'Công Ty TNHH Kính Mắt Việt Nam', '(024)3736535', '138B Giảng Võ, Q. Ba Đình, Hà Nội', 'kieu_kinh_1.2.jpg', NULL, NULL, 1),
(3, 'Việt Tín - Công Ty TNHH Kính Mắt Việt Tín', '(024)3767316', '345 P. Dịch Vọng, Q. Cầu Giấy, Hà Nội', 'kieu_kinh_1.2.jpg', NULL, NULL, 1),
(4, 'Kính Mắt VNS', '0949198866', '259 Đội Cấn, Q. Ba Đình, Hà Nội', 'kieu_kinh_1.2.jpg', NULL, NULL, 1),
(5, 'Thanh Lịch - C&ocirc;ng Ty TNHH K&iacute;nh Mắt Thanh Lịch2', '0964014502', '97 H&agrave;ng B&ocirc;ng, Q. Ho&agrave;n Kiếm, H&agrave; Nội', 'kieu_kinh_1.2.jpg', '0000-00-00 00:00:00', '2018-04-02 00:39:43', 1),
(6, 'duongcv2', '0964014502', 'h&agrave; nội', 'kieu_kinh_1.2.jpg', '0000-00-00 00:00:00', '2018-04-02 00:40:36', 0),
(7, 'hay lam', '0964014503', 'hay lắm', 'kieu_kinh_1.2.jpg', '2018-04-04 08:47:33', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `id_nsx` int(11) NOT NULL,
  `TenNSX` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SDTNSX` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChiNSX` varchar(200) NOT NULL,
  `img_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(100) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`id_nsx`, `TenNSX`, `SDTNSX`, `DiaChiNSX`, `img_path`, `status`, `create_time`, `update_time`) VALUES
(1, 'Gucci', '0964014502', 'USA_American', 'kieu_kinh_1.1.jpg', 0, '0000-00-00 00:00:00', '2018-04-10 09:09:01'),
(2, 'Coach', '0964014502', 'USA', 'kieu_kinh_1.2.jpg', 0, '2018-03-26 00:29:55', '2018-03-26 00:29:57'),
(3, 'Christian Dior', '0964014502', 'USA', 'kieu_kinh_1.2.jpg', 1, '2018-03-26 00:30:42', '2018-03-26 00:30:44'),
(4, 'Dolce & Gabbana', '0964014502', 'USA', 'kieu_kinh_1.2.jpg', 1, '2018-03-26 00:29:55', '2018-03-26 00:29:57'),
(5, 'RayBan', '0964014502', 'USA', 'kieu_kinh_1.2.jpg', 1, '2018-03-26 00:29:55', '2018-03-26 00:29:57'),
(6, 'guccci-gang', '0964014504', '321321312', 'kieu_kinh_1.2.jpg', 1, '2018-04-04 10:27:43', '0000-00-00 00:00:00'),
(7, '1321321321', '0964014501', '321321321321312', 'kieu_kinh_1.2.jpg', 0, '2018-04-04 10:28:24', '0000-00-00 00:00:00'),
(8, 'duongcv', '0964014506', 'h&agrave; n?i', 'kieu_kinh_1.2.jpg', 1, '2018-04-04 10:31:28', '0000-00-00 00:00:00'),
(9, 'k&iacute;nh mắt h&agrave; nội', '0964014507', 'h&agrave; n?i', 'kieu_kinh_1.2.jpg', 1, '2018-04-04 10:32:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `id_kinh` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `like_comment` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `username`, `email`, `content`, `create_time`, `id_kinh`, `status`, `like_comment`) VALUES
(24, 'admin', 'dragonhn1xxx@gmail.com', '321321321', '2018-04-25 15:55:02', 28, 1, 0),
(25, 'admin', 'dragonhn1xxx@gmail.com', 'duongcv', '2018-04-25 16:09:52', 10, 1, 0),
(26, '', '', '', '0000-00-00 00:00:00', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id_tk` int(11) NOT NULL,
  `TenDangNhap` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenHienThi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Quyen` int(11) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `authen_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id_tk`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `SDT`, `Email`, `Quyen`, `Trang_thai`, `authen_key`, `create_time`, `update_time`) VALUES
(1, 'duongcv', '123', 'duongcv', 'hanoi', '0964014502', 'Duongcv@gmail.com', 1, 1, 'YVQLYcwzYR0CZcCA9OdB03n8o', '2018-03-26 13:07:19', NULL),
(2, 'duongcv2', '123', 'duongcv', 'hanoi', '0964014502', 'Duongcv@gmail.com', 1, 1, 'YVQLYcwzYR0CZcCA9OdB03n8o', '2018-03-26 13:07:19', '0000-00-00 00:00:00'),
(3, 'duongcv3', '123', 'duongcv', 'hanoi', '0964014502', 'Duongcv@gmail.com', 1, 1, 'YVQLYcwzYR0CZcCA9OdB03n8o', '2018-03-26 13:07:19', '0000-00-00 00:00:00'),
(4, 'duongcv4', '123', 'duongcv', 'hanoi', '0964014502', 'Duongcv@gmail.com', 1, 1, 'YVQLYcwzYR0CZcCA9OdB03n8o', '2018-03-26 13:07:19', '0000-00-00 00:00:00'),
(5, 'duongcv5', '123', 'duongcv', 'hanoi', '0964014502', 'Duongcv@gmail.com', 1, 1, 'YVQLYcwzYR0CZcCA9OdB03n8o', '2018-03-26 13:07:19', '0000-00-00 00:00:00'),
(6, 'duongcv6', '123', 'duongcv', 'hanoi', '0964014502', 'Duongcv@gmail.com', 1, 1, 'YVQLYcwzYR0CZcCA9OdB03n8o', '2018-03-26 13:07:19', '0000-00-00 00:00:00'),
(7, 'duongcv', '827ccb0eea8a706c4c34a16891f84e7b', 'duongcv', 'duongcv', '0964014502', 'abcd@gmail.com', 1, 1, 'ycirJ-kztF-_MMscw-YVQLYcwzYR0CZcCA9OdB03n8o', '2018-04-16 20:09:44', '0000-00-00 00:00:00'),
(8, 'user', '827ccb0eea8a706c4c34a16891f84e7b', 'duongcv321', 'hanoi', '0964014503', 'abcdf@gmail.com', 1, 1, 'cOvvr1Z3f5fGbJCbspobj9Na0LJye577H01qGOC8JMI', '2018-04-16 20:11:19', '0000-00-00 00:00:00'),
(10, 'user2', '202cb962ac59075b964b07152d234b70', 'duongcv4', 'hanoi', '0964014504', 'dragonhn1006@gmail.com', 1, 1, '32UwHsSJEa7cx_Dm34Dq6bT-PAsEeW_dlzxijrylYKM', '2018-04-16 20:19:59', '0000-00-00 00:00:00'),
(11, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'duongcv5', 'hanoi', '0964014505', 'dragonhn1xxx@gmail.com', 1, 1, 'y0tO0d58btKu-F6NogcP5QQwkzPt2F-saQ7KgVGbsM4', '2018-04-16 20:22:05', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_hd`);

--
-- Indexes for table `kinh`
--
ALTER TABLE `kinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaikinh`
--
ALTER TABLE `loaikinh`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `nhaphanphoi`
--
ALTER TABLE `nhaphanphoi`
  ADD PRIMARY KEY (`id_npp`);

--
-- Indexes for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`id_nsx`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id_tk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_hd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kinh`
--
ALTER TABLE `kinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `loaikinh`
--
ALTER TABLE `loaikinh`
  MODIFY `id_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nhaphanphoi`
--
ALTER TABLE `nhaphanphoi`
  MODIFY `id_npp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `id_nsx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
