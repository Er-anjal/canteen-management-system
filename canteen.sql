-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 12:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Item_Id` int(11) NOT NULL,
  `Item_Name` varchar(50) NOT NULL,
  `Item_Price` float(10,2) NOT NULL,
  `Item_Stock` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Item_Id`, `Item_Name`, `Item_Price`, `Item_Stock`) VALUES
(1, 'Tea', 20.00, 8),
(2, 'Veg.MoMo', 100.00, 19),
(3, 'Chi.MoMO', 140.00, 29),
(4, 'Puri Tarkari', 60.00, 30),
(5, 'Fried Rice', 80.00, 20),
(6, 'Fried Rice(Buff)', 100.00, 30),
(7, 'Chi-Chaumin', 100.00, 30);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `Order_Id` varchar(50) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Time` varchar(30) NOT NULL,
  `User_Id` varchar(30) NOT NULL,
  `Item_Name` varchar(30) NOT NULL,
  `Item_Price` float(10,2) NOT NULL,
  `Item_Count` int(11) NOT NULL,
  `Total` float(10,2) NOT NULL,
  `Status` varchar(30) NOT NULL DEFAULT 'Processing'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `Order_Id`, `Date`, `Time`, `User_Id`, `Item_Name`, `Item_Price`, `Item_Count`, `Total`, `Status`) VALUES
(1, 'od_Anjal454355', '23/10/2022', '09:45:56 AM', 'Anjal', 'Tea', 8.00, 1, 8.00, 'Delivered'),
(2, 'od_Anjal744296', '21/12/2022', '07:20:57 PM', 'Anjal', 'Tea', 20.00, 1, 20.00, 'Delivered'),
(3, 'od_Anjal744296', '21/12/2022', '07:20:57 PM', 'Anjal', 'Veg.MoMo', 100.00, 1, 100.00, 'Delivered'),
(4, 'od_Anjal744296', '21/12/2022', '07:20:57 PM', 'Anjal', 'Chi.MoMO', 140.00, 1, 140.00, 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `noti_Id` int(11) NOT NULL,
  `User_Id` varchar(30) NOT NULL,
  `Notification` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`noti_Id`, `User_Id`, `Notification`) VALUES
(1, 'Anjal', 'Your order has been recieved.'),
(2, 'Anjal', 'Your order has been recieved.');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `trans_Id` varchar(30) NOT NULL,
  `User_Id` varchar(30) NOT NULL,
  `trans_Date` varchar(30) NOT NULL,
  `trans_Time` varchar(30) NOT NULL,
  `Details` varchar(150) NOT NULL,
  `Amount` float(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `trans_Id`, `User_Id`, `trans_Date`, `trans_Time`, `Details`, `Amount`) VALUES
(2, 'tr_Anjal744296', 'Anjal', '21/12/2022', '07:20:57 PM', 'Purchased 1 Tea..', 20.00),
(3, 'tr_Anjal744296', 'Anjal', '21/12/2022', '07:20:57 PM', 'Purchased 1 Veg.MoMo..', 100.00),
(4, 'tr_Anjal744296', 'Anjal', '21/12/2022', '07:20:57 PM', 'Purchased 1 Chi.MoMO..', 140.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_Id` varchar(30) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Dob` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Wallet` float(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Id`, `First_Name`, `Last_Name`, `Dob`, `Password`, `Phone`, `Mail`, `Wallet`) VALUES
('Admin', 'Admin', 'Admin', '1999-05-16', 'Admin', '9843364006', 'admin@gmail.com', 20000.00),
('Anjal', 'First_Name', 'Last_Name', 'Dob', 'anjal', '9843364006', 'anjalpandey5@gmail.com', 68628.00),
('Shirish', 'First_Name', 'Last_Name', 'Dob', 'shirish', '98******', 'Mail', 0.00),
('Suraj', 'First_Name', 'Last_Name', 'Dob', 'suraj', '98******', 'Mail', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Item_Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`noti_Id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Item_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `noti_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
