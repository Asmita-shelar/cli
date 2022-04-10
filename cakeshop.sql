-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2022 at 07:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` text NOT NULL,
  `passwords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `passwords`) VALUES
(1, 'ankits', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Sr_No` int(11) NOT NULL,
  `Cake_Name` text NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` text NOT NULL,
  `Email_id` text NOT NULL,
  `Contact_Number` text NOT NULL,
  `Status` text NOT NULL DEFAULT '\'undelivered\''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Sr_No`, `Cake_Name`, `Name`, `Address`, `Email_id`, `Contact_Number`, `Status`) VALUES
(64, 'sandwich', 'Ankit Luthra', 'Sanpada', 'aluthra@acpce.ac.in', '7021069789', 'undelivered'),
(65, 'Black Forest', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '7021069789', 'Delivered'),
(66, 'Red Velvet Cake', 'ankit singh', 'Sanpada', 'arsingh@acpce.ac.in', '7021069789', 'Delivered'),
(67, 'mousse jar', 'Ankit Luthra', 'Sanpada', 'aluthra@acpce.ac.in', '7021069789', 'Order Delivered'),
(68, 'sandwich', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '7021069789', 'undelivered'),
(69, 'Red Velvet Cake', 'Ankit Luthra', 'Sanpada', 'aluthra@acpce.ac.in', '7021069789', 'undelivered'),
(70, 'mousse jar', 'Ankit Luthra', 'Sanpada', 'aluthra@acpce.ac.in', '7021069789', 'undelivered'),
(71, 'Red Velvet Cake', 'Ankit Luthra', 'Sanpada', 'aluthra@acpce.ac.in', '7021069789', 'undelivered'),
(72, 'Black Forest', 'Ankit Luthra', 'Sanpada', 'aluthra@acpce.ac.in', '7021069789', 'undelivered'),
(73, 'Lemon tart', 'Ankit Singh', 'Sanpada, Navi-Mumbai-400705', 'arsingh@acpce.ac.i', '7021069789', 'undelivered'),
(74, 'Yellow Delight', 'dnbeldknwe', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', 'undelivered'),
(75, 'Red Velvet Cake', 'Aditi Singh', 'Kharghar', 'ankitsingh7021@gmail.com', '7021069789', 'Order Delivered'),
(76, 'Red Velvet Cake', 'XYz', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', 'undelivered'),
(77, 'Red Velvet Cake', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', 'undelivered'),
(80, 'Red Velvet Cake', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', 'undelivered'),
(81, 'Red Velvet Cake', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', 'Delivered'),
(82, 'pine apple cake', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', 'Order Delivered'),
(83, 'Red Velvet Cake', 'Ankit Singh', 'Sanpada', 'ankitsingh7021@gmail.com', '+917021069789', '\'undelivered\''),
(84, 'pine apple cake', 'asmita shelar', 'Kharghar', 'ankitsingh7021@gmail.com', '7021069789', 'Order Delivered'),
(85, 'pine apple cake', 'asmita shelar', 'Kharghar', 'ankitsingh7021@gmail.com', '7021069789', '\'undelivered\'');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Ankit', 'ankitsingh7021@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Aditi', 'aditisingh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Asmita Shelar', 'asmita@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'xyxz', 'xzzascy@yahoo.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
