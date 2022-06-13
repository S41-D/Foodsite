-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 06:15 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'Annab Said', 'annab', '21232f297a57a5a743894a0e4a801fc3'),
(14, 'Aboge Unknown', 'aboge', '21232f297a57a5a743894a0e4a801fc3'),
(15, 'Maloba Chiloba', 'maloba', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Beverages', 'Food_Category_869.jpg', 'Yes', 'Yes'),
(5, 'Breakfast', 'Food_Category_724.jpg', 'Yes', 'Yes'),
(6, 'Meal', 'Food_Category_487.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(3, 'Chai', 'The taste of Africa', '5.00', 'Food-Name-6229.jpg', 4, 'Yes', 'Yes'),
(5, 'English Tea', 'Tasty English Tea', '6.00', 'Food-Name-8974.jpg', 4, 'Yes', 'Yes'),
(6, 'Beetroot Punch', 'A healthy dose of red', '5.00', 'Food-Name-9309.jpg', 4, 'No', 'Yes'),
(7, 'Apple Punch', 'Get more zing with green', '10.00', 'Food-Name-636.jpg', 4, 'No', 'Yes'),
(8, 'Orange Cocktail', 'The best of anything orange', '5.00', 'Food-Name-9871.jpg', 4, 'No', 'Yes'),
(9, 'Pancakes', 'Sweet Maple Syrup Pancakes', '5.00', 'Food-Name-4904.jpg', 5, 'Yes', 'Yes'),
(10, 'Pilau', 'Savoury delic', '5.00', 'Food-Name-5490.jpg', 6, 'Yes', 'Yes'),
(11, 'Fruit Pancake', 'Berry goodness with pancakes', '5.00', 'Food-Name-345.jpg', 5, 'Yes', 'Yes'),
(12, 'Bread and French Beans', 'The vegan specialty', '5.00', 'Food-Name-8074.jpg', 5, 'No', 'Yes'),
(13, 'French Breakfast', 'Continental Croissant', '5.00', 'Food-Name-7062.jpg', 5, 'No', 'Yes'),
(14, 'Anjera', 'Horn of African delicacy', '5.00', 'Food-Name-7450.jpg', 6, 'No', 'Yes'),
(22, 'Creamers Coffee', 'Whats in that white', '5.00', 'Food-Name-4082.jpg', 4, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(4, 'Best Burger', '4.00', 1, '4.00', '2021-07-21 04:52:03', 'Ordered', 'Eden Derrick', '9708647895', 'eden@derrick.com', '3268'),
(5, 'Smoky BBQ Pizza', '6.00', 1, '6.00', '2021-07-21 11:50:14', 'Ordered', 'Said Said', '0720159372', 'ggi@gmail.com', 'Well,Under,Kneya'),
(6, 'Mixed Pizza', '10.00', 1, '10.00', '2021-07-21 11:53:52', 'Ordered', 'Eden Derrick', '0720159372', 'eden@derrick.com', '3268'),
(45, 'Beetroot Punch', '5.00', 1, '5.00', '2021-07-21 03:29:28', 'Ordered', '3ertyu', 'zsdfg', 'sdfgh@said.com', 'asdfgh'),
(46, 'Fruit Pancake', '5.00', 1, '5.00', '2021-07-22 05:39:07', 'Delivered', 'Eden Derrick', '98765432', 'eden@derrick.com', '3268'),
(47, 'English Tea', '6.00', 1, '6.00', '2021-07-22 05:57:47', 'Delivered', 'Eden Derrick', '0720159372', 'eden@derrick.com', '3268'),
(48, 'English Tea', '6.00', 1, '6.00', '2021-07-22 08:57:08', 'Ordered', 'Eden Derrick555', '55678', 'eden@derrick.com', '3268'),
(49, 'English Tea', '6.00', 1, '6.00', '2021-07-22 08:58:18', 'Ordered', 'Eden Derrick', '9708647895', 'eden@derrick.com', '3268'),
(50, 'English Tea', '6.00', 1, '6.00', '2021-07-22 09:09:39', 'Delivered', 'Eden Derrick', '8765432', 'eden@derrick.com', '3268'),
(51, 'Pancakes', '5.00', 1, '5.00', '2021-07-23 10:11:45', 'Delivered', 'MMMMM', '87654321', 'q@q.com', 'asdfghd'),
(52, 'Fruit Pancake', '5.00', 1, '5.00', '2021-07-23 10:13:44', 'Delivered', 'uytre', '765432', 'qqqqq@qqq.com', 'sdfvbvcx');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(16, 'Eden', 'Derrick', 'mad@boy.com', '827ccb0eea8a706c4c34a16891f84e'),
(17, 'qwert', 'man', 'qwer@man.com', '827ccb0eea8a706c4c34a16891f84e'),
(18, 'EDEN', 'MAN', 'qwerty@man.com', '827ccb0eea8a706c4c34a16891f84e'),
(19, 'Eden', 'Derrick', 'eden@derrick.com', '827ccb0eea8a706c4c34a16891f84e'),
(20, 'q', 'm', 'q@m.com', '827ccb0eea8a706c4c34a16891f84e'),
(21, 'qqqqqqqqq', 'qqqqq', 'ab@ab.com', '827ccb0eea8a706c4c34a16891f84e'),
(22, 'men', 'man', 'men@man.com', '827ccb0eea8a706c4c34a16891f84e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
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
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
