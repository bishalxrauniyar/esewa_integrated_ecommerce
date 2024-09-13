-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 07:31 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(6, 'Tom ', 't@gmail.com', '123456', 'tptom.jpg', '161461613', 'Bangladesh', 'Super Admin', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus, laudantium illo illum. Aut rem adipisci nostrum doloremque dicta est recusandae, iste, maxime. Voluptate, quasi? Odio asperiores quisquam aspernatur neque possimus. '),
(7, 'Kurt Cobain', 'k@gmail.com', '123456', 'kurt.jpg', '6546515641', 'Bangladesh', 'admin', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus dolor sit doloribus, fugit, voluptates quidem cumque tenetur excepturi facere, hic optio, sint libero. Veritatis tempore, natus delectus consectetur maiores, quo? ');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `p_id`, `ip_add`, `qty`, `size`) VALUES
(77, 18, '::1', 1, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'),
(2, 'Women', '\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old\r\n\r\n'),
(3, 'Kids', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'),
(4, 'Others', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(9, 450389922, 6000, 'Bkash', 2147483647, 5426, '20/12/2019'),
(11, 1933421241, 518, 'Rocket', 2147483647, 5542, '20/12/2019');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_quantity` int(10) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_quantity`, `product_price`, `product_desc`, `product_keywords`) VALUES
(1, 5, 1, '2019-12-25 14:36:01', 'New T-Shirt', 'T-shirt1.jpg', 'T-shirt1.jpg', 'T-shirt1.jpg', 15, 250, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', 'T-Shirts'),
(2, 5, 3, '2019-12-25 14:37:45', 'U.S. Polo Assn. Blue Polos shirt', 'U-S--Polo-Assn--Blue-Polos-0266-586842-1-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0268-586842-2-pdp_slider_l.jpg', 'U-S--Polo-Assn--Blue-Polos-0271-586842-3-pdp_slider_l.jpg', 8, 60, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'T-Shirt'),
(3, 5, 3, '2019-12-25 14:37:45', 'BENETTON White Polo Shirt', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-1-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0608-0914361-2-pdp_slider_l.jpg', 'United-Colors-of-Benetton-White-Polo-Shirt-0609-0914361-3-pdp_slider_l.jpg', 20, 98, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', 'T-Shirt'),
(4, 1, 1, '2019-12-25 14:37:45', 'Navy Blue Solid Denim Jacket', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-1-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-2-pdp_slider_l.jpg', 'Levi-s-Blue-Solid-Denim-Jacket-5953-6506172-3-pdp_slider_l.jpg', 17, 230, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'Jackets'),
(5, 1, 1, '2019-12-26 04:43:18', 'Denim Borg Lined Western Jacket', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 'Next-Denim-Borg-Lined-Western-Jacket-0465-0064553-3-pdp_slider_l.jpg', 2, 259, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'Jackets'),
(6, 1, 1, '2019-12-25 14:37:46', 'Jack & White Solid Denim Jacket', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-1-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-2-pdp_slider_l.jpg', 'Jack---Jones-White-Solid-Denim-Jacket-3115-5549091-3-pdp_slider_l.jpg', 9, 96, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'Jackets'),
(7, 4, 2, '2019-12-25 15:25:36', 'Nice Solid Long Coat With Lace', 'fur coat with button1.jpg', 'fur coat with button2.jpg', 'fur coat with button3.jpg', 0, 200, '<p>Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. kingVideo provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document</p>', 'Coats'),
(8, 4, 2, '2019-12-25 14:37:46', 'Sleeveless Faux Fur Hybrid Coat', 'Black Blouse Versace Coat1.jpg', 'Black Blouse Versace Coat2.jpg', 'Black Blouse Versace Coat3.jpg', 13, 245, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', 'Coats'),
(11, 4, 2, '2019-12-25 14:41:50', 'Women Tops', 'tops.jpg', 'tops.jpg', 'tops.jpg', 15, 3000, '<p>QWFEAFE</p>', 'tops'),
(16, 1, 1, '2019-12-25 17:36:05', 'Geox jacket', 'checkMan-Geox-Winter-jacket-2.jpg', 'checkMan-Geox-Winter-jacket-2.jpg', 'checkMan-Geox-Winter-jacket-2.jpg', 9, 3000, '<p>jacket</p>', 'jacket'),
(17, 3, 2, '2019-12-26 04:21:21', 'Women High Heels ', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-1.jpg', 5, 800, '<p>shoes</p>', 'shoes'),
(18, 3, 2, '2019-12-26 04:48:47', 'Women shoes', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 3, 3000, '<p><em><strong>shoes</strong></em></p>', 'shoes');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Leather Jackets', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'),
(2, 'Accessories', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'),
(3, 'Shoes', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'),
(4, 'Coat', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old'),
(5, 'T-Shirts', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(7, 'slider 1', 'slide0.jpg'),
(8, 'slider 2', 'slideer8.jpg'),
(9, 'slider 3', 'slider6.jpg'),
(12, 'test', '4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
