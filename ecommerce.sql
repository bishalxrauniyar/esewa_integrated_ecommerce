-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 07:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(6) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category`) VALUES
(1, 'Mobiles'),
(2, 'Laptops'),
(3, 'Shoes'),
(4, 'Clothes'),
(5, 'Watch'),
(6, 'Home Appliances'),
(7, 'Gadgets'),
(8, 'Sports'),
(9, 'Electronics'),
(10, 'Camera'),
(11, 'Auto Mobiles');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(6) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `first_name`, `last_name`, `password`, `customer_address`, `contact`, `email`) VALUES
(1, '', 'Rimal', 'suraj', 'Syangja', '9841312224', 'surajrimal@gmail.com'),
(2, '', 'Shrestha', 'rupesh', 'Chitwan', '985203345', 'rupeshshrestha@gmail.com'),
(9, 'Suraj', 'Rimal', 'suraj', 'ssss', '123456', 'surajrimal49@gmail.com'),
(10, 'Surajj', 'Rimal', 'MÔŸO„äÖ”^;ÆÑH\0N', 'Dharan nnnn ', '899999999', 'surajrimal1@gmail.com'),
(11, 'Suraj', 'Rimal', 'MÔŸO„äÖ”^;ÆÑH\0N', 'Syangja', '9841312224', 'surajrimal50@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_order`
--

CREATE TABLE `tbl_customer_order` (
  `id` int(11) NOT NULL,
  `order_id` int(6) NOT NULL,
  `session_id` int(11) NOT NULL,
  `customer_id` int(6) DEFAULT NULL,
  `product_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer_order`
--

INSERT INTO `tbl_customer_order` (`id`, `order_id`, `session_id`, `customer_id`, `product_id`) VALUES
(1, 1, 0, NULL, 1),
(2, 2, 0, NULL, 2),
(3, 3, 0, NULL, 3),
(4, 4, 0, NULL, 1),
(5, 5, 0, NULL, 2),
(6, 6, 0, NULL, 4),
(7, 7, 0, NULL, 5),
(8, 8, 0, NULL, 1),
(9, 9, 0, NULL, 3),
(10, 10, 0, NULL, 6),
(11, 11, 0, NULL, 7),
(12, 12, 0, NULL, 5),
(13, 13, 0, NULL, 1),
(14, 14, 0, NULL, 3),
(15, 15, 0, NULL, 4),
(16, 16, 0, NULL, 5),
(17, 17, 0, NULL, 1),
(18, 18, 0, NULL, 2),
(19, 19, 0, NULL, 8),
(20, 20, 0, NULL, 7),
(21, 21, 0, 1, 1),
(22, 22, 0, 1, 39),
(23, 23, 0, 1, 1),
(24, 24, 0, 1, 25),
(25, 25, 0, 1, 50),
(26, 26, 0, 1, 14),
(27, 27, 0, 1, 7),
(28, 28, 0, 1, 57),
(29, 29, 0, 1, 57),
(37, 46, 0, 2, 1),
(38, 47, 1, 2, 1),
(39, 48, 24, 1, 31),
(127, 138, 35, 1, 3),
(128, 139, 35, 1, 4),
(129, 140, 35, 1, 12),
(130, 141, 35, 1, 32),
(131, 142, 35, 1, 1),
(132, 143, 35, 1, 3),
(133, 144, 35, 1, 2),
(134, 145, 35, 1, 1),
(135, 146, 36, 1, 48),
(136, 147, 36, 1, 4),
(137, 148, 36, 1, 4),
(138, 149, 37, 1, 41),
(139, 150, 37, 1, 11),
(140, 151, 37, 1, 38),
(141, 152, 38, 1, 5),
(142, 153, 38, 1, 37),
(143, 154, 39, 1, 19),
(144, 155, 40, 1, 2),
(145, 156, 40, 1, 4),
(146, 157, 40, 1, 4),
(147, 158, 41, 1, 11),
(148, 159, 41, 1, 11),
(149, 160, 41, 1, 11),
(150, 161, 41, 1, 11),
(151, 162, 41, 1, 11),
(152, 163, 41, 1, 11),
(153, 164, 41, 1, 11),
(154, 165, 41, 1, 17),
(155, 166, 41, 1, 40),
(156, 167, 42, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(6) NOT NULL,
  `quantity` int(6) NOT NULL,
  `total` float NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_id` int(6) NOT NULL,
  `category_id` int(6) NOT NULL,
  `session_id` int(11) NOT NULL,
  `customer_id` int(6) DEFAULT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `quantity`, `total`, `order_date`, `product_id`, `category_id`, `session_id`, `customer_id`, `customer_name`, `customer_address`, `contact`) VALUES
(1, 1, 10000, '2017-07-09 03:41:17', 1, 4, 1, NULL, '', '', ''),
(2, 1, 10000, '2017-07-09 03:44:27', 2, 4, 1, NULL, '', '', ''),
(3, 1, 10000, '2017-07-09 03:44:27', 3, 4, 1, NULL, '', '', ''),
(4, 1, 10000, '2017-07-09 03:44:27', 1, 4, 2, NULL, '', '', ''),
(5, 1, 10000, '2017-07-09 03:44:27', 2, 4, 2, NULL, '', '', ''),
(6, 1, 10000, '2017-07-09 03:44:28', 4, 4, 2, NULL, '', '', ''),
(7, 1, 10000, '2017-07-09 03:44:28', 5, 6, 3, NULL, '', '', ''),
(8, 1, 10000, '2017-07-09 03:44:28', 1, 4, 3, NULL, '', '', ''),
(9, 1, 10000, '2017-07-09 03:44:28', 3, 4, 3, NULL, '', '', ''),
(10, 1, 10000, '2017-07-09 03:44:28', 6, 6, 3, NULL, '', '', ''),
(11, 1, 10000, '2017-07-09 03:44:28', 7, 6, 3, NULL, '', '', ''),
(12, 1, 10000, '2017-07-09 03:44:28', 5, 6, 4, NULL, '', '', ''),
(13, 1, 10000, '2017-07-09 03:44:28', 1, 4, 4, NULL, '', '', ''),
(14, 1, 10000, '2017-07-09 03:44:28', 3, 4, 4, NULL, '', '', ''),
(15, 1, 10000, '2017-07-09 03:44:28', 4, 4, 5, NULL, '', '', ''),
(16, 1, 10000, '2017-07-09 03:44:28', 5, 6, 5, NULL, '', '', ''),
(17, 1, 10000, '2017-07-09 03:44:28', 1, 4, 5, NULL, '', '', ''),
(18, 1, 10000, '2017-07-09 03:44:28', 2, 4, 5, NULL, '', '', ''),
(19, 1, 10000, '2017-07-09 03:44:28', 8, 6, 5, NULL, '', '', ''),
(20, 1, 10000, '2017-07-09 03:47:02', 7, 6, 9, NULL, '', '', ''),
(21, 2, 222222, '2017-07-09 03:47:01', 1, 4, 6, NULL, 'suraj rimal', 'ssss', '333'),
(22, 1, 139000, '2017-07-09 03:47:01', 39, 5, 6, NULL, 'Suraj Rimal', 'Dharan', '9882345678'),
(23, 1, 1650, '2017-07-09 03:47:01', 1, 4, 7, NULL, 'Suraj Rimal', 'Dharan', '981920570'),
(24, 1, 3500, '2017-07-09 03:47:01', 25, 3, 7, NULL, 'Suraj Rimal', 'Dharan', '9852056588'),
(25, 1, 800, '2017-07-09 03:47:01', 50, 4, 7, NULL, 'Suraj Rimal', 'Dharan', '9882345678'),
(26, 1, 67500, '2017-07-09 03:47:01', 14, 2, 8, NULL, 'Suraj Rimal', 'Syangja', '9882345678'),
(27, 6, 15000, '2017-07-09 03:47:02', 7, 6, 8, NULL, 'Suraj Rimal', 'Dharan nepal', '899999999'),
(28, 10, 4500000, '2017-07-09 03:47:02', 57, 11, 8, NULL, 'Suraj Rimal', 'Syangja', '9841312224'),
(29, 3, 1350000, '2017-07-09 03:47:02', 57, 11, 9, NULL, 'Suraj Rimal', 'Syangja', '9841312224'),
(46, 1, 12, '2017-07-09 03:22:31', 1, 4, 22, NULL, '', '', ''),
(47, 6, 88888, '2017-07-09 03:30:13', 1, 4, 1, 2, '', '', ''),
(48, 1, 77000, '2017-07-09 12:01:18', 31, 5, 24, 1, 'Suraj Rimal', 'syangja', '98888'),
(138, 1, 1400, '2017-07-10 14:24:13', 3, 4, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(139, 1, 1700, '2017-07-10 14:25:05', 4, 4, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(140, 1, 140000, '2017-07-10 15:56:47', 12, 2, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(141, 1, 4500, '2017-07-10 15:57:13', 32, 7, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(142, 1, 1650, '2017-07-10 15:57:32', 1, 4, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(143, 1, 1400, '2017-07-10 15:57:44', 3, 4, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(144, 1, 1000, '2017-07-10 15:58:01', 2, 4, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(145, 1, 1650, '2017-07-10 15:58:39', 1, 4, 35, 1, 'Pradip Acharya ', 'tinkune dharan', '9806430446'),
(146, 1, 6600, '2017-07-10 16:47:40', 48, 3, 36, 1, 'Vai Jaan', 'nepal', '981920570'),
(147, 1, 1700, '2017-07-10 16:48:37', 4, 4, 36, 1, 'Vai Jaan', 'nepal', '981920570'),
(148, 1, 1700, '2017-07-10 16:49:03', 4, 4, 36, 1, 'Vai Jaan', 'nepal', '981920570'),
(149, 5, 34000, '2017-07-11 02:56:28', 41, 3, 37, 1, 'Suraj Rimal', 'Dharan', '9882345678'),
(150, 5, 440000, '2017-07-11 02:56:20', 11, 2, 37, 1, 'Suraj Rimal', 'Dharan', '9882345678'),
(151, 1, 45000, '2017-07-11 02:59:15', 38, 9, 37, 1, 'Suraj Rimal', 'Dharan', '9882345678'),
(152, 1, 70000, '2017-07-11 03:07:04', 5, 6, 38, 1, 'Suraj Rimal', 'Dharan nepal', '9882345678'),
(153, 1, 1000, '2017-07-11 03:14:17', 37, 9, 38, 1, 'Suraj Rimal', 'Dharan nepal', '9882345678'),
(154, 1, 67000, '2017-07-11 03:41:52', 19, 1, 39, 1, 'Ayush Poudel', 'Dharan', '9861572252'),
(155, 1, 1000, '2017-07-11 05:01:36', 2, 4, 40, 1, 'Gyan Tharu', 'Dharan', '9806430446'),
(156, 1, 1700, '2017-07-11 05:03:48', 4, 4, 40, 1, 'Gyan Tharu', 'Dharan', '9806430446'),
(157, 1, 1700, '2017-07-11 05:06:24', 4, 4, 40, 1, 'Gyan Tharu', 'Dharan', '9806430446'),
(158, 1, 88000, '2024-10-18 17:16:44', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(159, 1, 88000, '2024-10-18 17:19:58', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(160, 1, 88000, '2024-10-18 17:20:02', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(161, 1, 88000, '2024-10-18 17:23:23', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(162, 1, 88000, '2024-10-18 17:23:28', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(163, 1, 88000, '2024-10-18 17:25:29', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(164, 1, 88000, '2024-10-18 17:25:33', 11, 2, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(165, 1, 60000, '2024-10-18 17:25:42', 17, 1, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(166, 1, 34000, '2024-10-18 17:38:51', 40, 5, 41, 1, 'dfsdfsd', 'fsdfsef', '1011010101'),
(167, 5, 300000, '2024-10-19 06:43:58', 17, 1, 42, 1, 'Bishal Raiuniyar', 'Tahachal', '9843737513');

--
-- Triggers `tbl_order`
--
DELIMITER $$
CREATE TRIGGER `tbl_order_AFTER_INSERT` AFTER INSERT ON `tbl_order` FOR EACH ROW BEGIN
INSERT INTO tbl_ordered_item (order_id, product_id, session_id)
            VALUES (new.id, new.product_id, new.session_id);
            
INSERT INTO tbl_customer_order (order_id, session_id, product_id, customer_id)
            VALUES (new.id, new.session_id, new.product_id, new.customer_id);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ordered_item`
--

CREATE TABLE `tbl_ordered_item` (
  `id` int(11) NOT NULL,
  `order_id` int(6) NOT NULL,
  `product_id` int(6) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ordered_item`
--

INSERT INTO `tbl_ordered_item` (`id`, `order_id`, `product_id`, `session_id`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 1, 2),
(5, 5, 2, 2),
(6, 6, 4, 2),
(7, 7, 5, 3),
(8, 8, 1, 3),
(9, 9, 3, 3),
(10, 10, 6, 3),
(11, 11, 7, 3),
(12, 12, 5, 4),
(13, 13, 1, 4),
(14, 14, 3, 4),
(15, 15, 4, 5),
(16, 16, 5, 5),
(17, 17, 1, 5),
(18, 18, 2, 5),
(19, 19, 8, 5),
(20, 20, 7, 5),
(21, 21, 1, 2),
(22, 22, 39, 10),
(23, 23, 1, 10),
(24, 24, 25, 14),
(25, 25, 50, 15),
(26, 26, 14, 16),
(27, 27, 7, 20),
(28, 28, 57, 21),
(29, 29, 57, 21),
(47, 46, 1, 22),
(48, 47, 1, 1),
(49, 48, 31, 24),
(137, 138, 3, 35),
(138, 139, 4, 35),
(139, 140, 12, 35),
(140, 141, 32, 35),
(141, 142, 1, 35),
(142, 143, 3, 35),
(143, 144, 2, 35),
(144, 145, 1, 35),
(145, 146, 48, 36),
(146, 147, 4, 36),
(147, 148, 4, 36),
(148, 149, 41, 37),
(149, 150, 11, 37),
(150, 151, 38, 37),
(151, 152, 5, 38),
(152, 153, 37, 38),
(153, 154, 19, 39),
(154, 155, 2, 40),
(155, 156, 4, 40),
(156, 157, 4, 40),
(157, 158, 11, 41),
(158, 159, 11, 41),
(159, 160, 11, 41),
(160, 161, 11, 41),
(161, 162, 11, 41),
(162, 163, 11, 41),
(163, 164, 11, 41),
(164, 165, 17, 41),
(165, 166, 40, 41),
(166, 167, 17, 42);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(6) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL,
  `category_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `product_name`, `price`, `image`, `description`, `status`, `category_id`) VALUES
(1, 'Shirt white', 1650, '2013-new-stylish-men-039-s-shirt-fashion.jpg', '', 'ON', 4),
(2, 'T-shirt colorful', 1000, '23-05-2016-colorful.jpg', '', 'ON', 4),
(3, 'Full T-shirt', 1400, '23-05-2016-index9.jpg', '', 'ON', 4),
(4, 'Fancy Shirt', 1700, '23-05-2016-index13.jpg', '', 'ON', 4),
(5, 'Fridge Large', 70000, '23-05-2016-largefridge.jpg', '', 'ON', 6),
(6, 'Washing Machine', 99125, '23-05-2016-wm.jpg', '', 'ON', 6),
(7, 'Rice Cooker', 15000, '23-05-2016-index17.jpg', '', 'ON', 6),
(8, 'Pressure Cooker', 5500, '23-05-2016-index20.jpg', '', 'OFF', 6),
(9, 'Kitchen Rack', 2500, '23-05-2016-index18.jpg', '', 'ON', 6),
(10, 'Spoons 7 pieces', 800, '23-05-2016-spoon.jpg', '', 'ON', 6),
(11, 'Laptop hp', 88000, '23-05-2016-hp.jpg', '', 'ON', 2),
(12, 'Macbook', 140000, '23-05-2016-macbook.jpg', '', 'ON', 2),
(13, 'Sony vio', 110000, '23-05-2016-vio.jpg', '', 'ON', 2),
(14, 'Lenovo', 67500, '23-05-2016-lennovo.jpg', '', 'ON', 2),
(15, 'Dell', 705500, '23-05-2016-hpred.jpg', '', 'ON', 2),
(16, 'iPhone 6 Plus', 90000, '23-05-2016-6p.jpg', '', 'ON', 1),
(17, 'iPhone 5', 60000, '23-05-2016-i5.jpg', '', 'ON', 1),
(18, 'Samsung 7s', 120000, '23-05-2016-s7.jpg', '', 'ON', 1),
(19, 'Samsung ', 67000, '23-05-2016-samsung.jpg', '', 'ON', 1),
(20, 'Selfie Stick iPhone', 2000, '23-05-2016-images (8).jpg', '', 'ON', 1),
(21, 'Jordan Full', 4300, '23-05-2016-index7.jpg', '', 'ON', 3),
(22, 'Nike Tavas', 3200, '23-05-2016-images3.jpg', '', 'ON', 3),
(23, 'Jordan B&W', 3450, '23-05-2016-images9.jpg', '', 'ON', 3),
(24, 'Nike Full', 6500, '23-05-2016-index4.jpg', '', 'ON', 3),
(25, 'Nike Airforce', 3500, '23-05-2016-index2.jpg', '', 'ON', 3),
(26, 'DAWEEO LCD', 76090, '23-05-2016-index.jpg', '', 'ON', 9),
(27, 'New LCD Display', 88000, '23-05-2016-index1.jpg', '', 'ON', 9),
(28, 'LED display', 20000, '23-05-2016-images2.jpg', '', 'ON', 9),
(29, 'LED display Medium', 10000, '23-05-2016-images5.jpg', '', 'ON', 10),
(30, '5 gear', 4000, '23-05-2016-gear.jpg', '', 'ON', 5),
(31, 'New 5', 77000, '23-05-2016-images1.jpg', '', 'ON', 5),
(32, 'Headphone', 4500, '23-05-2016-headred.jpg', '', 'ON', 7),
(33, 'Gear s2', 5500, '23-05-2016-images.jpg', '', 'ON', 7),
(34, 'Universal Mobile charger', 2700, '23-05-2016-index3.jpg', '', 'ON', 7),
(35, 'New Black Headphone', 3500, '23-05-2016-headblack.jpg', '', 'ON', 10),
(36, 'Core i5', 25000, '23-05-2016-images10.jpg', 'Intel Core i5 with 6GHz cache', 'ON', 10),
(37, 'Joysticks', 1000, '23-05-2016-images8.jpg', '', 'ON', 9),
(38, 'Projector', 45000, '23-05-2016-images6.jpg', '', 'ON', 9),
(39, 'Rolex', 139000, '23-05-2016-Rolex.jpg', '', 'ON', 5),
(40, 'Borland', 34000, '23-05-2016-borland.jpg', '', 'ON', 5),
(41, 'Addidas Spring', 6800, '23-05-2016-spring.jpg', '', 'ON', 3),
(42, 'Addidas shoe', 6000, '23-05-2016-addidas.jpg', '', 'ON', 3),
(43, 'Nike Airmax', 6600, '23-05-2016-Airmax.jpg', '', 'ON', 3),
(44, 'Nike Football', 7800, '23-05-2016-foot.jpg', '', 'ON', 3),
(45, 'Jordan B&P', 5100, '23-05-2016-B&P.jpg', '', 'ON', 3),
(46, 'Party Shoe', 2500, '23-05-2016-PARTY.jpg', '', 'ON', 3),
(47, 'New Party Shoe', 4000, '23-05-2016-nw.jpg', '', 'ON', 3),
(48, 'Latest Nike sporty', 6600, '23-05-2016-lates.jpg', '', 'ON', 3),
(49, 'iPhone Gear', 2900, '23-05-2016-ig.jpg', '', 'ON', 7),
(50, 'Cap Mercedies', 800, '23-05-2016-capmer.jpg', '', 'ON', 4),
(51, 'Microsoft', 34500, 'images.jpg', 'new phone', 'ON', 1),
(52, 'Kodak', 166000, 'images (3).jpg', '-32 MP high focusing power', 'ON', 10),
(53, 'Canon', 160000, 'download (8).jpg', '27 MP with high definition.Limited pieces only.Book now', 'ON', 10),
(54, 'Sony Medium', 80000, 'ads.jpg', '22 MP with flash with reasonable price.', 'ON', 10),
(55, 'Sony Large', 180000, 'images (4).jpg', '32 MP with flash,Limited pieces only,hurry up!', 'ON', 10),
(56, 'iPhone 7', 170000, 'download.jpg', 'Wireless charger,16Mp high focusing 10,waterproof', 'ON', 1),
(57, 'Ktm Duke', 450000, '33..jpg', 'Color: Yellow\r\nMileage: 30 kmpl ', 'ON', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

CREATE TABLE `tbl_session` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(200) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `customer_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_session`
--

INSERT INTO `tbl_session` (`id`, `ip_address`, `timestamp`, `customer_id`) VALUES
(1, '192.168.1.1', '2017-07-05 05:41:12', NULL),
(2, '192.168.1.2', '2017-07-05 05:41:12', NULL),
(3, '192.168.1.9', '2017-07-05 05:41:12', NULL),
(4, '192.168.1.4', '2017-07-05 05:41:12', NULL),
(5, '192.168.1.88', '2017-07-05 05:41:12', NULL),
(6, '::1', '2017-07-09 03:16:36', NULL),
(7, '::1', '2017-07-09 03:16:36', NULL),
(8, '::1', '2017-07-09 03:16:36', NULL),
(9, '::1', '2017-07-09 03:16:36', NULL),
(10, '::1', '2017-07-09 03:16:36', NULL),
(11, '::1', '2017-07-09 03:16:36', NULL),
(12, '::1', '2017-07-09 03:16:36', NULL),
(13, '::1', '2017-07-09 03:16:36', NULL),
(14, '::1', '2017-07-09 03:16:36', NULL),
(15, '::1', '2017-07-09 03:16:36', NULL),
(16, '::1', '2017-07-09 03:16:36', NULL),
(17, '::1', '2017-07-09 03:16:36', NULL),
(18, '::1', '2017-07-09 03:16:36', NULL),
(19, '::1', '2017-07-09 03:16:36', NULL),
(20, '::1', '2017-07-09 03:16:36', NULL),
(21, '::1', '2017-07-09 03:16:36', NULL),
(22, '::1', '2017-07-09 03:16:36', NULL),
(23, '::1', '2017-07-09 11:57:39', NULL),
(24, '::1', '2017-07-09 12:00:48', NULL),
(25, '::1', '2017-07-09 15:04:12', NULL),
(26, '::1', '2017-07-09 15:08:09', NULL),
(27, '::1', '2017-07-09 15:10:45', NULL),
(28, '::1', '2017-07-09 15:11:02', NULL),
(29, '::1', '2017-07-09 15:11:22', NULL),
(30, '::1', '2017-07-09 15:59:25', NULL),
(31, '::1', '2017-07-09 16:13:17', NULL),
(32, '::1', '2017-07-10 01:38:33', NULL),
(33, '::1', '2017-07-10 12:02:59', NULL),
(34, '::1', '2017-07-10 12:18:14', NULL),
(35, '::1', '2017-07-10 12:23:49', NULL),
(36, '::1', '2017-07-10 16:47:11', NULL),
(37, '::1', '2017-07-11 02:19:19', NULL),
(38, '::1', '2017-07-11 03:04:55', NULL),
(39, '::1', '2017-07-11 03:40:58', NULL),
(40, '::1', '2017-07-11 05:00:19', NULL),
(41, '::1', '2024-10-18 17:02:40', NULL),
(42, '::1', '2024-10-19 06:39:25', NULL);

--
-- Triggers `tbl_session`
--
DELIMITER $$
CREATE TRIGGER `update_customer` AFTER UPDATE ON `tbl_session` FOR EACH ROW BEGIN
update tbl_order set customer_id = new.customer_id where session_id = new.id;
update tbl_order set session_id = new.id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(10) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `image`, `description`) VALUES
(1, 'slide1.jpg', 'slider one'),
(2, 'slide2.jpg', 'slider two'),
(3, 'slide3.jpg', 'slider three'),
(4, '1474455_1448670912018958_774953239_n.jpg', '-for dasain and tihar ,25% discount to all sales\r\n-for limited time only'),
(5, 'nepa25.gif', '-Nike Tavas for gents\r\n-flexible body and sole\r\n-available in other four different colors\r\n-hurry up for your new styles and looking...');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(6) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `user_name`, `user_password`) VALUES
(1, 'surajrimal', 'suraj'),
(2, 'rupesh', 'rup');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `tbl_customer_order`
--
ALTER TABLE `tbl_customer_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_customer_order_tbl_order1_idx` (`order_id`),
  ADD KEY `fk_tbl_customer_order_tbl_customer1_idx` (`customer_id`),
  ADD KEY `fk_tbl_customer_order_tbl_product1_idx` (`product_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_order_tbl_product1_idx` (`product_id`,`category_id`),
  ADD KEY `fk_tbl_order_tbl_session1_idx` (`session_id`),
  ADD KEY `fk_tbl_order_tbl_customer1_idx` (`customer_id`);

--
-- Indexes for table `tbl_ordered_item`
--
ALTER TABLE `tbl_ordered_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_order_item_tbl_order1_idx` (`order_id`),
  ADD KEY `fk_tbl_order_item_tbl_product1_idx` (`product_id`),
  ADD KEY `fk_tbl_order_item_tbl_session1_idx` (`session_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`,`category_id`),
  ADD KEY `fk_tbl_product_tbl_category1_idx` (`category_id`);

--
-- Indexes for table `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_session_tbl_customer1_idx` (`customer_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer_order`
--
ALTER TABLE `tbl_customer_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `tbl_ordered_item`
--
ALTER TABLE `tbl_ordered_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_session`
--
ALTER TABLE `tbl_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_customer_order`
--
ALTER TABLE `tbl_customer_order`
  ADD CONSTRAINT `fk_tbl_customer_order_tbl_customer1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tbl_customer_order_tbl_order1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tbl_customer_order_tbl_product1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_tbl_order_tbl_customer1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tbl_order_tbl_product1` FOREIGN KEY (`product_id`,`category_id`) REFERENCES `tbl_product` (`id`, `category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tbl_order_tbl_session1` FOREIGN KEY (`session_id`) REFERENCES `tbl_session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ordered_item`
--
ALTER TABLE `tbl_ordered_item`
  ADD CONSTRAINT `fk_tbl_order_item_tbl_order1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tbl_order_item_tbl_product1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tbl_order_item_tbl_session1` FOREIGN KEY (`session_id`) REFERENCES `tbl_session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_tbl_product_tbl_category1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD CONSTRAINT `fk_tbl_session_tbl_customer1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
