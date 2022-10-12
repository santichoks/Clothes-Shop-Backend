-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2022 at 04:43 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothes_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `status` enum('placed_order','paid','shipping_out','completed') NOT NULL DEFAULT 'placed_order',
  `order_date` datetime NOT NULL,
  `paid_date` datetime DEFAULT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `status`, `order_date`, `paid_date`, `address`) VALUES
(1, 1, 'shipping_out', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(2, 2, 'paid', '2022-10-08 19:42:46', '2022-10-15 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(3, 3, 'placed_order', '2022-10-06 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(4, 4, 'completed', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(5, 5, 'shipping_out', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(6, 6, 'shipping_out', '2022-10-08 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(7, 7, 'completed', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(8, 8, 'placed_order', '2022-10-10 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(9, 9, 'paid', '2022-10-09 19:42:46', '2022-10-15 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(10, 10, 'placed_order', '2022-10-07 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(11, 11, 'shipping_out', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(12, 12, 'placed_order', '2022-10-09 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(13, 13, 'paid', '2022-10-11 19:42:46', '2022-10-18 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(14, 14, 'placed_order', '2022-10-05 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(15, 15, 'placed_order', '2022-10-09 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(16, 16, 'placed_order', '2022-10-08 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(17, 17, 'placed_order', '2022-10-11 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(18, 18, 'placed_order', '2022-10-10 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(19, 19, 'placed_order', '2022-10-06 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(20, 20, 'placed_order', '2022-10-07 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(21, 21, 'placed_order', '2022-10-11 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(22, 22, 'shipping_out', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(23, 23, 'completed', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(24, 24, 'shipping_out', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(25, 25, 'completed', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(26, 26, 'completed', '2022-10-08 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(27, 27, 'placed_order', '2022-10-11 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(28, 28, 'placed_order', '2022-10-10 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(29, 29, 'placed_order', '2022-10-06 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(30, 30, 'placed_order', '2022-10-07 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(31, 1, 'placed_order', '2022-10-11 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(32, 1, 'shipping_out', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(33, 2, 'completed', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(34, 2, 'completed', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(35, 3, 'placed_order', '2022-10-09 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(36, 3, 'paid', '2022-10-09 19:42:46', '2022-10-19 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(37, 4, 'paid', '2022-10-08 19:42:46', '2022-10-15 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(38, 4, 'shipping_out', '2022-10-10 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(39, 5, 'paid', '2022-10-08 19:42:46', '2022-10-16 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(40, 5, 'shipping_out', '2022-10-07 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(41, 6, 'paid', '2022-10-09 19:42:46', '2022-10-13 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(42, 6, 'completed', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(43, 7, 'shipping_out', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(44, 7, 'shipping_out', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(45, 8, 'completed', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(46, 8, 'paid', '2022-10-10 19:42:46', '2022-10-14 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(47, 9, 'placed_order', '2022-10-11 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(48, 9, 'placed_order', '2022-10-10 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(49, 10, 'placed_order', '2022-10-06 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(50, 10, 'placed_order', '2022-10-07 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(51, 11, 'completed', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(52, 11, 'placed_order', '2022-10-09 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(53, 12, 'paid', '2022-10-11 19:42:46', '2022-10-18 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(54, 12, 'shipping_out', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(55, 13, 'completed', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(56, 13, 'completed', '2022-10-08 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(57, 14, 'completed', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(58, 14, 'shipping_out', '2022-10-10 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(59, 15, 'shipping_out', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(60, 15, 'placed_order', '2022-10-07 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(61, 16, 'placed_order', '2022-10-11 19:38:13', NULL, '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(62, 16, 'completed', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(63, 17, 'completed', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(64, 17, 'shipping_out', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(65, 18, 'shipping_out', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(66, 18, 'paid', '2022-10-09 19:42:46', '2022-10-17 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(67, 19, 'completed', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(68, 19, 'completed', '2022-10-10 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(69, 20, 'shipping_out', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(70, 20, 'completed', '2022-10-07 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(71, 21, 'shipping_out', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(72, 21, 'paid', '2022-10-07 19:42:46', '2022-10-16 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(73, 22, 'completed', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(74, 22, 'shipping_out', '2022-10-05 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(75, 23, 'paid', '2022-10-08 19:42:46', '2022-10-15 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(76, 23, 'completed', '2022-10-08 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(77, 24, 'paid', '2022-10-10 19:42:46', '2022-10-19 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(78, 24, 'paid', '2022-10-11 19:42:46', '2022-10-15 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(79, 25, 'shipping_out', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(80, 25, 'completed', '2022-10-07 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(81, 26, 'shipping_out', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(82, 26, 'completed', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(83, 27, 'completed', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(84, 27, 'paid', '2022-10-09 19:42:46', '2022-10-13 18:55:07', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(85, 28, 'shipping_out', '2022-10-09 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(86, 28, 'shipping_out', '2022-10-08 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(87, 29, 'shipping_out', '2022-10-11 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(88, 29, 'completed', '2022-10-10 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(89, 30, 'completed', '2022-10-06 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400'),
(90, 30, 'shipping_out', '2022-10-07 19:38:13', '2022-10-14 20:08:28', '178/25 Soi Vuthipun Ratchaprarob Road Phayathai Bangkok 10400');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `gender` enum('Men','Women') NOT NULL,
  `style` varchar(32) NOT NULL,
  `size` enum('XS','S','M','L','XL') NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `gender`, `style`, `size`, `price`) VALUES
(1, 'Men', 'Plain color / Red', 'XS', 400),
(2, 'Men', 'Plain color / Red', 'S', 400),
(3, 'Men', 'Plain color / Red', 'M', 420),
(4, 'Men', 'Plain color / Red', 'L', 430),
(5, 'Men', 'Plain color / Red', 'XL', 450),
(6, 'Women', 'Plain color / Black', 'XS', 290),
(7, 'Women', 'Plain color / Black', 'S', 290),
(8, 'Women', 'Plain color / Black', 'M', 290),
(9, 'Women', 'Plain color / Black', 'L', 320),
(10, 'Women', 'Plain color / Black', 'XL', 320),
(11, 'Men', 'Batman', 'XS', 400),
(12, 'Men', 'Batman', 'S', 400),
(13, 'Men', 'Batman', 'M', 420),
(14, 'Men', 'Batman', 'L', 430),
(15, 'Men', 'Batman', 'XL', 450),
(16, 'Women', 'Batman', 'XS', 290),
(17, 'Women', 'Batman', 'S', 290),
(18, 'Women', 'Batman', 'M', 290),
(19, 'Women', 'Batman', 'L', 320),
(20, 'Women', 'Batman', 'XL', 320),
(21, 'Men', 'Spiderman', 'XS', 400),
(22, 'Men', 'Spiderman', 'S', 400),
(23, 'Men', 'Spiderman', 'M', 420),
(24, 'Men', 'Spiderman', 'L', 430),
(25, 'Men', 'Spiderman', 'XL', 450),
(26, 'Women', 'Spiderman', 'XS', 290),
(27, 'Women', 'Spiderman', 'S', 290),
(28, 'Women', 'Spiderman', 'M', 290),
(29, 'Women', 'Spiderman', 'L', 320),
(30, 'Women', 'Spiderman', 'XL', 320);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
