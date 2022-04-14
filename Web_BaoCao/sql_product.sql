-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 09:24 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltw_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `trash` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `alias`, `status`, `trash`) VALUES
(1, 'Việt Tiến', 'viet-tien', 1, 0),
(2, 'An Phước', 'an-phuoc', 1, 0),
(3, 'Novelty', 'novelty', 1, 0),
(4, 'The Blues', 'the-blues', 1, 0),
(5, 'Sea', 'sea', 1, 0),
(6, 'Foci', 'foci', 1, 0),
(7, 'MARC FASHION', 'marc-fashion', 1, 0),
(8, 'POPBIRDY', 'popbirdy', 1, 0),
(9, 'HNOSS', 'hnoss', 1, 0),
(10, 'CLOTHESRACK', 'clothesrack', 1, 0),
(11, 'REN', 'ren', 1, 0),
(12, 'NOSBYN', 'nosbyn', 1, 0),
(13, 'Khatoco', 'khatoco', 1, 0),
(14, 'Levis', 'levis', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `alias`, `parent`, `status`, `trash`, `created_at`, `created_by`, `updated_at`, `updated_by`, `access`) VALUES
(1, 'Thời trang nam', 'thoi-trang-nam', 0, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(2, 'Thời trang nữ', 'thoi-trang-nu', 0, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(3, 'Phụ kiện', 'phu-kien', 0, 1, 0, '0000-00-00 00:00:00', NULL, '2017-11-21 08:43:56', NULL, 0),
(4, 'Quần tây nam', 'quan-tay-nam', 1, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(5, 'Quần jean nam', 'quan-jean-nam', 1, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(6, 'Áo sơ mi nam', 'ao-so-mi-nam', 1, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(7, 'Áo thun nam', 'ao-thun-nam', 1, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(8, 'Quần tây nữ', 'quan-tay-nu', 2, 1, 0, '0000-00-00 00:00:00', NULL, '2017-11-21 08:44:06', NULL, 0),
(9, 'Quần jean nữ', 'quan-jean-nu', 2, 1, 0, '0000-00-00 00:00:00', NULL, '2017-11-21 08:44:18', NULL, 0),
(10, 'Áo sơ mi nữ', 'ao-so-mi-nu', 2, 1, 0, '0000-00-00 00:00:00', NULL, '2017-11-21 08:44:28', NULL, 0),
(11, 'Áo thun nữ', 'ao-thun-nu', 2, 1, 0, '0000-00-00 00:00:00', NULL, '2017-11-21 08:44:38', NULL, 0),
(12, 'Đầm ngắn', 'dam-ngan', 2, 1, 0, '0000-00-00 00:00:00', NULL, '2017-11-21 08:44:51', NULL, 0),
(13, 'Đầm maxi', 'dam-maxi', 2, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(14, 'Túi xách/ví tui dsdfasd', NULL, 3, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(15, 'Giày', 'giay', 0, 0, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(22, 'Áo thun nữ', NULL, 2, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(58, 'thoi trang tre em 6', NULL, 0, 0, 1, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(87, 'newnw', NULL, 5, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(88, 'teeee', NULL, 1, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(89, 'ttt', NULL, 1, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0),
(90, 'abc', NULL, 4, 1, 0, '0000-00-00 00:00:00', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trash` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `menu_name`, `menu_link`, `status`, `trash`) VALUES
(1, 'Trang chủ', 'frontend/index', 1, 0),
(2, 'Sản phẩm', 'frontend/allProducts/1', 1, 0),
(3, 'Tin tức thời trang', 'frontend/news', 1, 0),
(4, 'Chính sách mua hàng', 'frontend/policy', 1, 0),
(5, 'Về chúng tôi', 'frontend/aboutUs', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `customer_id`, `order_date`, `fullname`, `address`, `email`, `phone`, `delivered`, `trash`, `status`) VALUES
(40, '', 0, NULL, 'dfad', 'dfa', 'dfasd@gmail.com', '4534', NULL, 0, 1),
(41, '', 0, NULL, 'gdf', 'bbb', 'dfasd@gmail.com', '433566', NULL, 0, 1),
(42, '', 0, '2018-12-20 12:21:47', 'dfad', 'bbb', 'ccc@gmail.com', '4534', NULL, 0, 1),
(43, '', 0, '2018-12-20 12:34:26', 'gdf', 'sdfa', 'fadf@gmail.com', '433566', NULL, 0, 1),
(56, '', 0, '2021-03-03 09:45:31', 'delivered', 'gsss', 'sv2119110135@hitu.edu.vn', '5443453452', NULL, 0, 1),
(57, '', 0, '2021-03-03 10:06:33', 'address', 'gsss', 'sv2119135@hitu.edu.vn', '5443453452', NULL, 0, 1),
(58, '', 0, '2021-03-03 10:07:21', 'address', 'gsss', 'sv2119135@hitu.edu.vn', '5443453452', NULL, 0, 1),
(59, '', 0, '2021-03-03 10:07:55', 'hahahaha', 'gsss', 'sv21@hitu.edu.vn', '5647890', NULL, 0, 1),
(60, '', 0, '2021-03-03 10:21:23', 'address', 'gsss', 'sv2119135@hitu.edu.vn', '5443453452', NULL, 0, 1),
(61, '', 0, '2021-03-03 10:22:03', 'hahahaha', 'gsss', 'sv21@hitu.edu.vn', '5647890', NULL, 0, 1),
(62, '', 0, '2022-03-12 07:00:17', 'address', '', 'sv2119135@hitu.edu.vn', '5443453452', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trash` tinyint(1) DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `qty`, `trash`, `status`) VALUES
(49, 73, 2, 0, 1),
(49, 74, 1, 0, 1),
(50, 72, 2, 0, 1),
(50, 73, 2, 0, 1),
(50, 74, 1, 0, 1),
(51, 73, 3, 0, 1),
(51, 74, 6, 0, 1),
(52, 74, 6, 0, 1),
(53, 60, 1, 0, 1),
(54, 4, 1, 0, 1),
(54, 31, 1, 0, 1),
(54, 97, 1, 0, 1),
(55, 4, 1, 0, 1),
(60, 60, 0, 0, 1),
(60, 72, 0, 0, 1),
(60, 73, 0, 0, 1),
(61, 60, 1, 0, 1),
(61, 72, 1, 0, 1),
(61, 73, 2, 0, 1),
(62, 14, 1, 0, 1),
(62, 15, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `product_category` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` float NOT NULL,
  `product_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` tinyint(1) DEFAULT 0,
  `sale_price` int(11) DEFAULT NULL,
  `sale_date_begin` date DEFAULT NULL,
  `sale_date_end` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `access` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `alias`, `brand_id`, `product_category`, `avatar`, `image`, `quantity`, `price`, `product_detail`, `sale`, `sale_price`, `sale_date_begin`, `sale_date_end`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`, `access`) VALUES
(1, 'QUẦN TÂY NAM 1', 'quan-tay-nam-1', 1, 4, 'QTNAM1.jpg', 'QTNAM1.jpg', 0, 3, '<p>The cat was playing in the garden.</p>\n\n<p>update</p>\n\n<p>fasdfadklasdlfdsf;asdf</p>\n\n<p>dfasldkfa;lsdf<img alt=\"\" src=\"http://localhost:8080/mvc_test/public/images/frontend/cupcake01.jpg\" style=\"float:left; height:133px; width:200px\" /></p>\n', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, 0, 0, 0),
(3, 'QUẦN TÂY NAM 3', 'quan-tay-nam-3', 1, 4, 'QTNAM3.jpg', 'QTNAM3.jpg', 0, 3, '<p>The cat was playing in the garden.</p>\r\n', 1, 2, '2017-11-21', '2017-11-30', NULL, NULL, '2017-11-21 04:40:21', NULL, 0, 1, 0),
(5, 'QUẦN TÂY NAM 5', 'quan-tay-nam-5', 14, 4, 'QTNAM5.jpg', 'QTNAM5.jpg', 0, 1, '<p>banh bao thit trung</p>\r\n', 0, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, '2017-11-23 03:47:05', NULL, 0, 1, 0),
(6, 'QUẦN TÂY NAM 6', 'quan-tay-nam-6', 14, 4, 'QTNAM6.jpg', 'QTNAM6.jpg', 0, 3, '<p>banh cuon</p>\r\n', 0, NULL, NULL, NULL, NULL, NULL, '2017-11-21 08:45:33', NULL, 0, 0, 0),
(7, 'QUẦN TÂY NAM 7', NULL, 1, 4, 'QTNAM7.jpg', 'QTNAM7.jpg', 0, 1, 'fasfasdf', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, 0, 1, 0),
(8, 'QUAN JEAN NAM 1', 'quan-jean-nam-1', NULL, 5, NULL, 'JNAM1.jpg', 0, 2, '<p>dsdad</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(9, 'QUẦN JEAN NAM 2', NULL, NULL, 5, NULL, 'JNAM2.jpg', 0, 2, 'gsdfght', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(10, 'QUẦN JEAN NAM 3', NULL, NULL, 5, NULL, 'JNAM3.jpg', 0, 3, 'dfgdfasdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(11, 'QUẦN JEAN NAM 4', NULL, NULL, 5, NULL, 'JNAM4.jpg', 0, 3, 'gsdtsdfgsdfgdfgdfsfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0),
(12, 'QUẦN JEAN NAM 5', NULL, NULL, 5, NULL, 'JNAM5.jpg', 0, 1, 'sdfsgjf', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, 0, 1, 0),
(13, 'QUẦN JEAN NAM 6', NULL, NULL, 5, NULL, 'JNAM6.png', 0, 3, '<p>fdgdfgsdggsdrgtear</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(14, 'SO MI NAM 1', 'so-mi-nam-1', 2, 6, 'SOMINAM1.jpg', 'SOMINAM1.JPG', 0, 31, '<p>sdfasdfaswerwes</p>\r\n', 1, 0, NULL, NULL, NULL, NULL, '2017-11-21 08:02:46', NULL, 0, 1, 0),
(15, 'SOMINAM2', NULL, NULL, 6, NULL, 'SOMINAM2.JPG', 0, 5, '<p>fasdasdfsdfasfas</p>\r\n', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(16, 'SOMINAM3', NULL, NULL, 6, NULL, 'SOMINAM3.jpg', 0, 4, '<p>dfgsdfgsd</p>\r\n', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(17, 'SOMINAM4', NULL, NULL, 6, NULL, 'SOMINAM4.JPG', 0, 4, '<p>dsdfasdf</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(18, 'SOMINAM5', NULL, NULL, 6, NULL, 'SOMINAM5.JPG', 0, 4, 'KJFAJSFLAKSJDFLKAJDSKA', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(19, 'THUNNAM1', NULL, NULL, 7, NULL, 'THUNNAM1.JPG', 0, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(20, 'THUNNAM2', NULL, NULL, 7, NULL, 'THUNNAM2.JPG', 0, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(21, 'THUNNAM3', NULL, NULL, 7, NULL, 'THUNNAM3.JPG', 0, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(22, 'THUNNAM4', NULL, NULL, 7, NULL, 'THUNNAM4.PNG', 0, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(23, 'THUNNAM5', NULL, NULL, 7, NULL, 'THUNNAM5.JPG', 0, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(24, 'THUNNAM6', NULL, NULL, 7, NULL, 'THUNNAM6.JPG', 0, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(25, 'QUẦN TÂY NỮ 1', NULL, 10, 8, NULL, 'QTNU1.JPG', 0, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(26, 'QUẦN TÂY NỮ 2', NULL, 7, 8, NULL, 'QTNU2.JPG', 0, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(27, 'QUẦN TÂY NỮ 3', NULL, 7, 8, NULL, 'QTNU3.JPG', 0, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(28, 'QUẦN TÂY NỮ 4', NULL, 7, 8, NULL, 'QT5.JPG', 0, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(29, 'QUẦN TÂY NỮ 5', NULL, 7, 8, NULL, 'QTNU5.JPG', 0, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(30, 'QUẦN TÂY NỮ 6', NULL, NULL, 8, NULL, 'QTNU6.JPG', 0, 8, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(31, 'JEAN NỮ 1', NULL, NULL, 9, NULL, 'JNU1.JPG', 0, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(32, 'JEAN NỮ 2', NULL, NULL, 9, NULL, 'JNU2.JPG', 0, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(33, 'JEAN NỮ 3', NULL, NULL, 9, NULL, 'JNU3.JPG', 0, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(34, 'JEAN NỮ 4', NULL, NULL, 9, NULL, 'JNU4.JPG', 0, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(35, 'QUẦN JEAN NỮ 5', NULL, NULL, 9, NULL, 'JNU5.JPG', 0, 9, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(36, 'QUẦN JEAN NỮ 6', NULL, NULL, 9, NULL, 'JNU6.JPG', 0, 8, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(37, 'ÁO SƠ MI NỮ 1', NULL, 8, 10, NULL, 'SNU1.JPG', 0, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(38, 'ÁO SƠ MI NỮ 2', NULL, NULL, 10, NULL, 'SNU2.JPG', 0, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(39, 'ÁO SƠ MI NỮ 3', NULL, NULL, 10, NULL, 'SNU3.JPG', 0, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(40, 'ÁO SƠ MI NỮ 4', NULL, NULL, 10, NULL, 'SNU4.JPG', 0, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(41, 'ÁO SƠ MI NỮ 5', NULL, NULL, 10, NULL, 'SNU5.JPG', 0, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(42, 'ÁO SƠ MI NỮ 6', NULL, NULL, 10, NULL, 'SNU6.JPG', 0, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(43, 'ÁO THUN NỮ 1', NULL, NULL, 11, NULL, 'TNU1.JPG', 0, 9, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(44, 'ÁO THUN NỮ 2', NULL, NULL, 11, NULL, 'TNU2.JPG', 0, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(45, 'ÁO THUN NỮ 3', NULL, NULL, 11, NULL, 'TNU3.JPG', 0, 3, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(46, 'ÁO THUN NỮ 4', NULL, NULL, 11, NULL, 'TNU4.JPG', 0, 9, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(47, 'ÁO THUN NỮ 5', NULL, NULL, 11, NULL, 'TNU5.JPG', 0, 23, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(48, 'ÁO THUN NỮ 6', NULL, NULL, 11, NULL, 'TNU6.JPG', 0, 32, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(49, 'ĐẦM NGẮN 1', NULL, NULL, 12, NULL, 'DN1.JPG', 0, 35, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(50, 'ĐẦM NGẮN 2', NULL, NULL, 12, NULL, 'DN2.JPG', 0, 23, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(51, 'ĐẦM NGẮN 3', NULL, NULL, 12, NULL, 'DN3.JPG', 0, 12, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(52, 'ĐẦM NGẮN 4', NULL, NULL, 12, NULL, 'DN4.JPG', 0, 34, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(53, 'ĐẦM NGẮN 5', NULL, NULL, 12, NULL, 'DN5.JPG', 0, 33, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(54, 'ĐẦM NGẮN 6', NULL, NULL, 12, NULL, 'DN6.JPG', 0, 21, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(55, 'ĐẦM MAXI 1', NULL, NULL, 13, NULL, 'DM1.jpg', 0, 13, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(56, 'ĐẦM MAXI 2', NULL, NULL, 13, NULL, 'DM2.JPG', 0, 35, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(57, 'ĐẦM MAXI 3', NULL, NULL, 13, NULL, 'DM3.JPG', 0, 54, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(58, 'ĐẦM MAXI 4', NULL, NULL, 13, NULL, 'DM4.JPG', 0, 37, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(59, 'ĐẦM MAXI 5', NULL, NULL, 13, NULL, 'DM5.JPG', 0, 25, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(60, 'TÚI XÁCH 1', NULL, NULL, 14, NULL, 'T1.JPG', 0, 32, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(61, 'TÚI XÁCH 2', NULL, NULL, 14, NULL, 'T2.JPG', 0, 9, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(62, 'TÚI XÁCH 3', NULL, NULL, 14, NULL, 'T3.JPG', 0, 7, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(63, 'GIÀY 1', NULL, NULL, 15, NULL, 'G1.JPG', 0, 21, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(64, 'GIÀY 2', NULL, NULL, 15, NULL, 'G2.JPG', 0, 24, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(65, 'GIAY 3', NULL, NULL, 15, NULL, 'G3.JPG', 0, 8, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(66, 'MẮT KÍNH 1', NULL, NULL, 16, NULL, 'K1.JPG', 0, 43, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(67, 'MẮT KÍNH 2', NULL, NULL, 16, NULL, 'K2.JPG', 0, 27, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0),
(68, 'MẮT KÍNH 322', NULL, NULL, 16, NULL, 'K3.JPG', 0, 32, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0),
(69, 'oa dep qua', NULL, 5, 2, NULL, 'full.jpg', 0, 23, '<p>chi titet chi tiet</p>\r\n', 0, 0, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, 1, 1, 0),
(70, 'Vay ngan de thuong', NULL, NULL, 12, NULL, 'index.jpg', 0, 32000, '<p>dfad</p>\r\n\r\n<p>adfasdf</p>\r\n\r\n<p>sdfasdf</p>\r\n', 0, 0, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL, NULL, 0, 1, 0),
(71, 'ĐẦM NGẮN 7', 'dam-ngan-7', 11, 12, 'DN5.jpg', 'DN5.jpg', 0, 34, '<p>DFASD</p>\r\n\r\n<p>SDJFAKSDJFA</p>\r\n\r\n<p>SDFASKJDFKASDF</p>\r\n', 0, NULL, NULL, NULL, '2017-11-21 09:59:17', 'admin', '2017-11-21 09:59:17', 'admin', 0, 1, NULL),
(72, 'ĐẦM NGẰN 8', 'dam-ngan-8', 10, 12, '', 'DN2.jpg', 0, 423, '<p>&Aacute;DFASDFSDFA</p>\r\n', 0, NULL, NULL, NULL, '2017-11-21 09:59:56', 'admin', '2017-11-21 09:59:56', 'admin', 0, 1, NULL),
(73, 'ĐẦM NGẰN 9', 'dam-ngan-9', 11, 12, '', 'DN3.jpg', 0, 43, '<p>DFASDFASDF</p>\r\n\r\n<p>SDFA</p>\r\n\r\n<p>SDFASDF</p>\r\n', 0, NULL, NULL, NULL, '2017-11-21 10:00:41', 'admin', '2017-11-21 10:00:41', 'admin', 0, 1, NULL),
(74, 'ĐẦM NGẰN 10', 'dam-ngan-10', 0, 12, '', 'DM6.jpg', 0, 56, '<p>FASDFASDFASDFASD</p>\r\n', 0, NULL, NULL, NULL, '2017-11-21 10:02:15', 'admin', '2017-11-21 10:02:15', 'admin', 0, 1, NULL),
(75, 'ao dam be', NULL, 1, 1, NULL, 'temp.png', 32, 222, '					 	\r\nsdfasd\r\n\r\nsdf\r\n\r\nasdf\r\n\r\n					', 0, NULL, NULL, NULL, '2019-03-22 10:21:30', NULL, NULL, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `trash` tinyint(1) NOT NULL,
  `access` tinyint(1) NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `name`, `email`, `phone`, `address`, `avatar`, `created_at`, `status`, `trash`, `access`, `role`, `modified_at`) VALUES
(1, '', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', 'tran van a', 'dfasd@gmail.com', '09088888', '', NULL, '2019-03-15 08:46:49', 1, 0, 0, '', NULL),
(2, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Le B', 'ccc@gmail.com', '123456789', '', NULL, '2019-03-15 08:49:28', 1, 0, 0, 'admin', NULL),
(3, '', 'abc', 'Nguyen C', 'ads@asd.com', '45454545', '', NULL, '2019-03-15 09:03:16', 1, 0, 0, '', NULL),
(4, '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'sdfa', 'fadf@gmail.com', '84783749', '', NULL, '2019-03-15 09:24:53', 1, 0, 0, '', NULL),
(5, '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ho ten ca nhan', 'emailcuatui@gmail.com', '231111', '', NULL, '2019-05-15 02:30:19', 1, 0, 0, '', NULL),
(6, '', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', 'nguyen A', 'nguyenA@gmail.com', '123', '', NULL, '2019-05-22 12:43:07', 1, 0, 0, '', NULL),
(7, '', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', 'toi ten la', 'toilaai@gmail.com', '1234567890', '', NULL, '2019-05-22 12:54:28', 1, 0, 0, '', NULL),
(9, '', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 'abcdef', 'abc@gmail.com', '111111', '', NULL, '2019-05-29 12:56:14', 1, 0, 0, '', NULL),
(10, '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'delivered', 'sv2119110135@hitu.edu.vn', '123321', 'aaaaa', NULL, '2021-03-01 08:50:47', 1, 0, 0, '', NULL),
(14, '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'address', 'sv2119135@hitu.edu.vn', '5443453452', 'aaaaa', NULL, '2021-03-01 09:33:21', 1, 0, 0, '', NULL),
(15, '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'taldjaka', 'sv35@hitu.edu.vn', '544345', 'aaaaabbbb', NULL, '2021-03-01 09:36:01', 1, 0, 0, '', NULL),
(16, '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hahahaha', 'sv21@hitu.edu.vn', '5647890', 'hahahah', NULL, '2021-03-01 09:38:20', 1, 0, 0, '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
