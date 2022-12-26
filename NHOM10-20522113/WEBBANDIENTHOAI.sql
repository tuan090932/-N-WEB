-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 26, 2022 at 10:49 AM
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
-- Database: `iphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminne`
--

CREATE TABLE `adminne` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminne`
--

INSERT INTO `adminne` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(3, 'admin1', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sdt` int(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `noinhan` varchar(40) NOT NULL,
  `gichu` varchar(40) NOT NULL,
  `tonggia` int(40) NOT NULL,
  `tinhtrang` int(40) NOT NULL,
  `ngaymua` datetime NOT NULL,
  `brand` varchar(40) NOT NULL,
  `loaisanpham` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `sdt`, `mail`, `noinhan`, `gichu`, `tonggia`, `tinhtrang`, `ngaymua`, `brand`, `loaisanpham`) VALUES
(66, 'khanh123', 909651123, 'gietconheo88@gmail.com', '120/bà rịa vũng tàu/bên nôm', 'đơn hàng này không được hoàn về,đơn hàng', 1000, 0, '2022-12-25 08:30:53', 'iphone', 'iphone13'),
(67, 'khanh123', 909651123, 'gietconheo88@gmail.com', 'khu đồ thị chí linh TPHCM', 'lấy cho em cái màu xám  ', 19000, 1, '2022-12-25 13:26:39', 'iphone', 'iphone-14'),
(68, 'lethetuan', 932823912, '20522113@gm.uit.edu.vn', '30/4/khu đô thị chí linh thành phố VŨNG ', 'giao hàng sớm giúp em ạ ', 20000, 1, '2022-12-25 14:07:02', 'iphone', 'iphone-14pro'),
(69, 'lethetuan', 932812732, 'gietconheo888@gmail.com', '30/2/phường rạch dừa/ thành phố vũng tùa', 'giao vào ngày 27/12/2022 ', 5000, 1, '2022-12-25 14:08:57', 'vivo', 'vivo-v21'),
(70, 'kenh123', 932757263, 'gietconheo88@gmail.com', 'khu đô thị chí linh TPHCM', 'giao sớm  ', 20000, 0, '2022-12-25 20:50:20', 'iphone', 'iphone-14pro'),
(71, 'tuan123', 931232813, 'gietconheo88@gmail.com', 'tphcm, quận 9', 'giao vào hẻm 30/4 lê hồng phong ', 19000, 1, '2022-12-25 22:37:39', 'iphone', 'iphone-14'),
(72, 'tuan123', 91236482, 'gietconheo88@gmail.com', '123/phường 9', 'ship nhanh  ', 21000, 1, '2022-12-26 00:59:21', 'iphone', 'iphone-14pro'),
(73, 'kien123', 2147483647, '20522113@gm.uit.edu.vn', '123/khu đô thị tphcm', 'giao sớm ', 10000, 1, '2022-12-26 01:46:39', 'vivo', 'vivo-v23');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'iphone'),
(2, 'vivo'),
(3, 'nokia'),
(4, 'oppo'),
(5, 'xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(40) NOT NULL,
  `image` varchar(40) NOT NULL,
  `brand_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `image`, `brand_id`) VALUES
(1, 'iphone-14pro', '21000', '../img/iphone-14pro.jpg', 1),
(2, 'iphone-14', '19000', '../img/iphone-14.jpg', 1),
(3, 'iphone-13promax', '21000', '../img/iphone-13promax.jpg', 1),
(4, 'iphone-13pro', '15000', '../img/iphone-13pro.jpg', 1),
(5, 'iphone-13', '14000', '../img/iphone-13.jpg', 1),
(6, 'vivo-v23', '10000', '../img/vivo-v23.jpg', 2),
(7, 'vivo-v25', '7000', '../img/vivo-v25.jpg', 2),
(8, 'vivo-v22', '6000', '../img/vivo-v22.jpg', 2),
(9, 'vivo-v21', '5000', '../img/vivo-v21.jpg', 2),
(10, 'nokia-c21', '14500', '../img/nokia-c21.jpg', 3),
(11, 'nokia-c31', '16000', '../img/nokia-c31.jpg', 3),
(12, 'nokia-g20', '11500', '../img/nokia-g20.jpg', 3),
(13, 'oppo-7', '3000', '../img/iphone-13promax.jpg', 4),
(14, 'oppo-6', '4000', '../img/iphone-13pro.jpg', 4),
(15, 'oppo-pro', '3400', '../img/iphone-13.jpg', 4),
(16, 'oppo-5', '5000', '../img/oppo-5.jpg', 4),
(17, 'xiaomi-11', '2000', '../img/xiaomi-11.jpg', 5),
(18, 'xiaomi-11-pro', '1000', '../img/xiaomi-11-pro.jpg', 5),
(19, 'xiaomi-12', '1500', '../img/xiaomi-12.jpg', 5),
(20, 'xiaomi-12-pro', '3000', '../img/xiaomi-12-pro.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(11, 'tuan', 'gietconheo88@gmail.com', 'provt123', '2022-12-24 08:05:33'),
(12, 'tuan123', 'gietconheo88@gmail.com', 'abc', '2022-12-24 14:15:49'),
(14, 'khanh123', 'gietconheo88@gmail.com', 'tuan123', '2022-12-25 07:49:14'),
(15, 'TUAN123', 'gietconheo88@gmail.com', 'TUAN123', '2022-12-25 13:21:11'),
(16, 'TUAN123', 'gietconheo88@gmail.com', 'TUAN123', '2022-12-25 13:22:21'),
(17, 'lethetuan', '20522113@gm.uit.edu.vn', 'provt123', '2022-12-25 14:05:31'),
(18, 'kenh123', 'linhli@gmail.com', 'kenh123', '2022-12-25 19:34:42'),
(19, 'tuan123', 'gietconheo88@gmail.com', 'tuan123', '2022-12-25 22:21:02'),
(20, 'kien123', 'tuan@gmail.com', 'kien123', '2022-12-26 01:45:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminne`
--
ALTER TABLE `adminne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminne`
--
ALTER TABLE `adminne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
