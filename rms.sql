-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 10:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `account_type`, `date_created`, `created_by`) VALUES
(1, 'admin', 'admin', 'Admin', '2023-12-07 00:38:12', 'Admin'),
(2, 'clerk', 'clerk', 'Clerk', '2023-12-06 21:45:50', 'admin'),
(3, 'cashier', 'cashier', 'Cashier', '2023-12-06 21:46:00', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `date_time`, `category`, `creator`) VALUES
(1, '2023-12-07 08:44:20', 'CategoryTest', 'admin'),
(2, '2023-12-07 09:33:33', 'Demo Category', 'admin'),
(3, '2023-12-07 09:33:46', 'Category One', 'admin'),
(4, '2023-12-07 11:27:16', 'CategoryTwo', 'admin'),
(5, '2023-12-07 11:27:22', 'Category Three', 'admin'),
(6, '2023-12-07 11:27:28', 'Category QQ', 'admin'),
(7, '2023-12-08 09:15:30', 'Category 115566', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL,
  `quantities` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `description`, `date_time`, `creator`, `quantities`, `price`) VALUES
(1, 'Item One', 'CategoryTest', 'demo test', '2023-12-07 08:44:45', 'admin', 189, 28.00),
(2, 'Item Two', 'Demo Category', 'demo demo demo demo demo demo', '2023-12-07 10:11:16', 'admin', 54, 30.00),
(3, 'Item Three', 'Category One', 'qwerty qwery qwet qwww', '2023-12-07 10:13:48', 'admin', 38, 13.00),
(4, 'TestItem', 'CategoryTest', 'This is a test. This is a test. This is a test. This is a test.', '2023-12-07 10:52:53', 'admin', 89, 52.00),
(5, 'Astro', 'Category One', 'astro test', '2023-12-07 10:53:21', 'admin', 31, 28.00),
(6, 'ABC', 'Category QQ', 'qweqwe qweqww qweqw', '2023-12-07 11:27:42', 'admin', 222, 5.00),
(7, 'XYZZ', 'Category Three', 'code astro', '2023-12-07 11:28:00', 'admin', 25, 28.00),
(8, 'Test123', 'CategoryTest', 'aaaa bbb cccc', '2023-12-07 11:28:38', 'admin', 77, 52.00),
(9, 'Prod 88', 'Category QQ', 'asdaqweqww', '2023-12-07 11:29:03', 'admin', 69, 19.00),
(10, 'Item XY', 'CategoryTwo', 'as qw ww rrrr ttttttttttt', '2023-12-07 11:29:22', 'admin', 74, 21.00),
(11, 'Test Item', 'CategoryTest', 'asdasdasda', '2023-12-07 11:29:40', 'admin', 123, 23.00),
(12, 'Test Test', 'Category QQ', 'This is just a demo test. This is just a demo test.', '2023-12-08 09:14:26', 'admin', 126, 38.00);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `item_id`, `item_name`, `item_price`, `quantity`, `sub_total`, `date`, `month`, `year`, `week`) VALUES
(1, 1, 'Item One', 28.00, 8, 224.00, '2023-12-07', 12, 2023, 49),
(2, 3, 'Item Three', 13.00, 7, 91.00, '2023-12-07', 12, 2023, 49),
(3, 2, 'Item Two', 30.00, 11, 330.00, '2023-12-07', 12, 2023, 49),
(4, 1, 'Item One', 28.00, 3, 84.00, '2023-12-07', 12, 2023, 49),
(5, 3, 'Item Three', 13.00, 11, 143.00, '2023-12-07', 12, 2023, 49),
(6, 5, 'Astro', 28.00, 13, 364.00, '2023-12-07', 12, 2023, 49),
(7, 10, 'Item XY', 21.00, 5, 105.00, '2023-12-07', 12, 2023, 49),
(8, 11, 'Test Item', 23.00, 5, 115.00, '2023-12-08', 12, 2023, 49),
(9, 2, 'Item Two', 30.00, 3, 90.00, '2023-12-08', 12, 2023, 49),
(10, 3, 'Item Three', 13.00, 7, 91.00, '2023-12-08', 12, 2023, 49),
(11, 5, 'Astro', 28.00, 6, 168.00, '2023-12-08', 12, 2023, 49),
(12, 12, 'Test Test', 38.00, 11, 418.00, '2023-12-08', 12, 2023, 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
