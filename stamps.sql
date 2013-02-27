-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2013 at 03:05 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stamps`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tin` varchar(100) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `tin`, `contact`, `email`, `address`, `createdAt`, `updatedAt`) VALUES
(10, 'Watsons', '123-123-123', '312313', 'watsons@yahoo.com', '123 asda asd Mandaluyong City', '2013-02-27 15:17:38', NULL),
(11, 'Jolibee', '1231-123-1231', '23131', 'jolibee@yahoo.com', '123 alskdaskl Manila City', '2013-02-27 15:22:49', NULL),
(12, 'Mang Inasal', '423-2342-12312-345', '234324', 'Mangi@y.com', '123 kasdlaksjd pasig City', '2013-02-27 15:40:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(16) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `firstname`, `middlename`, `lastname`, `createdAt`, `updatedAt`) VALUES
(5, 'jezer', 'bdceddb39f502438091decbfe3c6f3336fc11f4b', 'admin', 'jezer', 'galang', 'crespo', '2013-02-26 00:00:00', '2013-02-26 00:00:00'),
(6, 'paula', '62e52d2ac616f25dfddd0968a947fa7e84e5c086', 'staff', 'paula', NULL, 'barquez', '2013-02-27 16:34:28', '2013-02-27 14:17:17');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
