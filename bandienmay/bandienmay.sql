-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 12:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bandienmay`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'Toan@gmail.com', 'e3ceb5881a0a1fdaad01296d7554868d', 'Xuân Toàn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Bài 1 : Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 'a4.jpg'),
(2, 'Bài 2: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 2, 'm3.jpg'),
(3, 'Bài 3: Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 3, 'k2.jpg'),
(4, 'Bài 4 :Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'b4.jpg'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Bài 5 : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 4, 'm8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Tủ lạnh'),
(3, 'Máy giặc'),
(4, 'Điện thoại'),
(5, 'Tivi ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức máy lạnh'),
(2, 'Kiến thức máy giặc'),
(3, 'Kiến thức laptop'),
(4, 'Kiến thức Tivi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(10, 17, 7, '3060', 12, '2021-10-21 04:11:55', 1, 0),
(11, 21, 5, '8979', 14, '2021-10-21 10:58:59', 0, 0),
(12, 26, 6, '8979', 14, '2021-10-21 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2021-10-21 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2021-10-21 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2021-10-21 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2021-10-21 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2021-10-21 02:35:19', 0, 0),
(18, 26, 3, '4249', 18, '2021-10-21 02:45:46', 0, 0),
(19, 26, 3, '8728', 19, '2021-10-21 02:46:40', 0, 0),
(20, 21, 1, '5037', 20, '2021-10-21 02:48:16', 0, 0),
(21, 20, 1, '5037', 20, '2021-10-21 02:48:17', 0, 0),
(22, 21, 1, '1594', 21, '2021-10-21 02:51:05', 0, 0),
(23, 20, 1, '1594', 21, '2021-10-04 02:51:05', 0, 0),
(24, 20, 1, '2323', 22, '2021-10-04 02:54:27', 0, 0),
(25, 21, 3, '2323', 22, '2021-10-04 02:54:27', 0, 0),
(26, 21, 2, '5737', 23, '2021-10-04 02:57:00', 0, 0),
(28, 25, 3, '7785', 25, '2021-10-04 03:11:51', 0, 0),
(29, 22, 5, '7785', 25, '2021-10-04 03:11:52', 0, 0),
(30, 27, 2, '7785', 25, '2021-10-04 03:11:52', 0, 0),
(31, 21, 1, '5396', 26, '2021-10-04 03:49:08', 0, 0),
(32, 20, 3, '5396', 26, '2021-10-04 03:49:08', 0, 0),
(33, 20, 3, '7914', 28, '2021-10-05 05:38:42', 0, 0),
(34, 26, 1, '7914', 28, '2021-10-05 05:38:42', 0, 0),
(35, 25, 2, '6687', 27, '2021-10-09 09:48:42', 1, 2),
(41, 21, 1, '5480', 29, '2021-12-13 10:13:00', 0, 0),
(42, 26, 1, '5480', 29, '2021-12-13 10:13:00', 0, 0),
(43, 26, 1, '9619', 30, '2021-12-18 06:20:26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2021-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2021-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2021-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2021-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2021-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2021-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2021-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2021-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2021-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2021-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2021-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2021-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2021-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2021-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2021-10-09 09:50:08', 27, 0, 2),
(18, 21, 1, '5480', '2021-12-13 10:13:00', 29, 0, 0),
(19, 26, 1, '5480', '2021-12-13 10:13:00', 29, 0, 0),
(20, 26, 1, '9619', '2021-12-18 06:20:26', 30, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(4, 'Laptop Sony', 24, '6000000', 'mk6.jpg', 2),
(5, 'Galaxy A10', 20, '15000000', 'mk2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(30, 'toanem', '0978675432', 'xuantoan', 'nguyen Xuan toan', 'ton@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0),
(31, 'xuan tin', '00987564', 'tinadmin', 'Xuan tin', 'tin@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Tủ lạnh A10', 'dasdasdasadasd', 'dasdasddsadasds', '6000000', '5500000', 0, 0, 10, 'k2.jpg'),
(18, 5, 'Tivi sony 29\'', 'asdasd', 'dasdasd', '5000000', '4500000', 0, 0, 1, 'm4.jpg'),
(19, 5, 'Tivi sony 40\'', 'asdasd', 'dasdasd', '5600000', '4800000', 0, 0, 1, 'm4.jpg'),
(20, 4, 'Galaxy A10', 'dasdad', 'dasdas', '15000000', '14000000', 0, 0, 10, 'mk2.jpg'),
(21, 4, 'Galaxy A15', 'dasdad', 'dasdas', '15000000', '14000000', 0, 0, 10, 'mk3.jpg'),
(22, 2, 'Tủ lạnh sony ', 'dasdad', 'dasdas', '75000000', '68000000', 0, 0, 5, 'k2.jpg'),
(23, 2, 'Tủ lạnh Samsung', 'dasdaddasda', 'dasdasdasd', '105000000', '94000000', 0, 0, 10, 'k2.jpg'),
(24, 1, 'Laptop Sony', 'sfsdf', 'adsf', '6000000', '5500000', 0, 0, 10, 'mk6.jpg'),
(25, 1, 'Laptop A15', 'sfsdf', 'adsf', '6600000', '5300000', 0, 0, 10, 'mk6.jpg'),
(26, 3, 'Máy giặc Samsung', 'dasdas', 'dsadas', '105000000', '99000000', 0, 0, 10, 'm8.jpg'),
(27, 3, 'Máy giặc Shark', 'dasdas', 'dsadas', '75000000', '63000000', 0, 0, 10, 'm8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'Slider khuyến mãi ', 1),
(2, 'b3.jpg', 'Slider 50%', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Indexes for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
