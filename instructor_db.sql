-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 30, 2019 at 08:30 AM
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
-- Database: `instructor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `classCode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class_sched` varchar(20) NOT NULL,
  `room` varchar(20) NOT NULL,
  PRIMARY KEY (`classCode`)
) ENGINE=MyISAM AUTO_INCREMENT=9426 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classCode`, `class_sched`, `room`) VALUES
(9425, 'Sun 1:00 - 2:00', 'DH205');

-- --------------------------------------------------------

--
-- Table structure for table `class_info`
--

DROP TABLE IF EXISTS `class_info`;
CREATE TABLE IF NOT EXISTS `class_info` (
  `idNo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `grpNo` int(11) DEFAULT NULL,
  `borrowersName` varchar(20) NOT NULL,
  `item` varchar(20) NOT NULL,
  `qnty` int(11) NOT NULL,
  `borrowedOn` datetime DEFAULT NULL,
  `returnedOn` datetime DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idNo`)
) ENGINE=MyISAM AUTO_INCREMENT=2156790 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_info`
--

INSERT INTO `class_info` (`idNo`, `grpNo`, `borrowersName`, `item`, `qnty`, `borrowedOn`, `returnedOn`, `remarks`) VALUES
(2156789, 4, 'Marquez, Juan', 'Broom', 3, '2019-04-30 16:24:42', '2019-04-30 16:24:42', 'Missing 1 Broom');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `faculty_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `password` varchar(20) NOT NULL,
  `loggedIn` datetime NOT NULL,
  `loggedOut` datetime NOT NULL,
  PRIMARY KEY (`faculty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9022 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`faculty_id`, `password`, `loggedIn`, `loggedOut`) VALUES
(9021, 'sk8192', '2019-04-30 16:04:51', '2019-04-30 16:04:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
