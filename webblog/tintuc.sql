-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2022 lúc 03:34 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `url`, `content`, `image`) VALUES
(14, '1', 'https://www.nettruyenme.com/truyen-tranh/ton-thuong/chap-156/661886', 'asd', 'z3770466801032_101aa99a7b1774490a31e6e7e1ab9553.jpg'),
(15, '2', 'https://www.scribd.com/archive/plans?doc=510271753&metadata=%7B%22context%22%3A%22archive_view_restr', 'qweqw', 'z3770466801032_101aa99a7b1774490a31e6e7e1ab9553.jpg'),
(16, '3', 'https://www.nettruyenme.com/truyen-tranh/ton-thuong/chap-156/661886', '123213', 'z3770466801032_101aa99a7b1774490a31e6e7e1ab9553.jpg'),
(17, '4', 'https://www.nettruyenme.com/truyen-tranh/ton-thuong/chap-156/661886', '123123123', 'logo.jpg'),
(18, '5', 'https://www.nettruyenme.com/truyen-tranh/ton-thuong/chap-156/661886', '123123123123123', 'anhbia4.jpg'),
(19, '6', 'https://www.nettruyenme.com/truyen-tranh/ton-thuong/chap-156/661886', '2425215123', 'anhbia3.jpg'),
(20, '7', 'https://www.tranhoangtrung.click', 'Shop đèn', 'anhbia5.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_customer`
--

INSERT INTO `tb_customer` (`id`, `name`, `website`) VALUES
(1, 'Nguyễn Văn Cường', 'freetuts.net'),
(2, 'Trương Phúc Hoài Minh', 'freetuts.net'),
(3, 'Đặng Văn Chương', 'freetuts.net'),
(4, 'Trương Tấn Thành', 'freetuts.net'),
(5, 'Lâm văn Lang', 'demo.com'),
(6, 'Nguyễn Văn Kiệt', 'ajax.com'),
(7, 'Nguyễn Thị Nở', 'thimau.com'),
(8, 'Đặng Thị Thoa', 'scrolling.com'),
(9, 'Trương Văn Kiệt', 'ajaxscrolling.com'),
(10, 'Đặng Thị Tâm', 'nono.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
