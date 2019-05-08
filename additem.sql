-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2019 at 02:03 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `additem`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `Entry No` int(11) NOT NULL AUTO_INCREMENT,
  `groupNo` int(11) NOT NULL,
  `idNo` int(11) NOT NULL,
  `borrowersName` varchar(40) NOT NULL,
  `item` varchar(40) NOT NULL,
  `qnty` int(11) NOT NULL,
  `borrowedOn` datetime DEFAULT NULL,
  `returnedOn` datetime DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Entry No`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Entry No`, `groupNo`, `idNo`, `borrowersName`, `item`, `qnty`, `borrowedOn`, `returnedOn`, `remarks`) VALUES
(1, 2, 2100002, 'Mora, Luis', 'Broomstick', 5, '2019-05-08 00:06:59', NULL, 'none'),
(2, 2, 2154800, 'Vittoria, Franz', 'Tabo', 3, '2019-05-08 00:22:27', NULL, 'none'),
(3, 1, 2143111, 'WEIRDONG MAHOGANI', 'Broom', 8, '2019-05-08 00:24:18', NULL, 'missing 2 brooms'),
(4, 3, 2100345, 'Woo Bin, Kim', 'Dust Pan', 7, '2019-05-08 06:51:20', NULL, 'broke 1 of the dustpan'),
(5, 3, 2154882, 'Spider-Man', 'Pale', 4, '2019-05-08 06:52:41', NULL, 'none'),
(6, 3, 1234567, 'Yen, Donnie', 'Broom', 2, '2019-05-08 07:19:34', NULL, '1 broom lost all its hair'),
(7, 2, 9876543, 'Dwayne, Johnson', 'Dust Pan', 10, '2019-05-08 07:23:25', NULL, '3 dustpans were damaged'),
(8, 4, 7654321, 'Malto, Sean', 'Tabo', 6, '2019-05-08 22:01:57', NULL, 'none');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
