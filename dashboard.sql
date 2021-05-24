-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 10:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `c_time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `company_name`, `first_name`, `last_name`, `price`, `address`, `c_time`) VALUES
(1, 'web', 'Ajay Singh Pathania', 'singh', '499', 'Amritsar, punjab', '00:00:00'),
(2, 'web', 'parminder', 'singh', '199', 'Amritsar, punjab', '00:00:00'),
(3, 'webcodice', 'parminder', 'singh', '199', 'Amritsar, punjab', '00:00:00'),
(4, 'webcodice', 'Ajay Singh Pathania', 'singh', '499', 'amritsar punjab', '00:00:00'),
(5, 'webcodice', 'Ajay Singh Pathania', 'singh', '499', 'Amritsar, punjab', '00:00:00'),
(6, 'aq', 'aq', 'aq', '115', 'aq', '00:00:00'),
(7, 'aq', 'aq', 'aq', '115', 'aq', '00:00:00'),
(8, 'yt', 'yt', 'yt', '230', 'yt', '00:00:00'),
(9, 'po', 'po', 'po', '575', 'po', '00:00:00'),
(10, 'aw', 'aw', 'aw', '1150', 'aw', '00:00:00'),
(11, 'xx', 'xx', 'xx', '803.85', 'xx', '00:00:00'),
(12, 'cc', 'cc', 'cc', '141.45', 'cc', '00:00:00'),
(13, 'hh', 'hh', 'hh', '860.2', 'hh', '11:36:40'),
(14, 'ww', 'ww', 'ww', '524.4', 'ww', '11:37:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
