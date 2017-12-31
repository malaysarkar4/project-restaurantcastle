-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2017 at 03:07 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `search_res`
--

CREATE TABLE `search_res` (
  `res_name` varchar(20) NOT NULL,
  `loc` varchar(20) DEFAULT NULL,
  `avail` varchar(5) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search_res`
--

INSERT INTO `search_res` (`res_name`, `loc`, `avail`, `rating`, `price`) VALUES
('maa_kamla', 'bandel', '15', '3', '300'),
('treats', 'bandel', '23', '4', '700'),
('prince', 'bandel', '20', '7', '500'),
('royal_biriyani', 'chandannagar', '20', '4.5', '1000'),
('flavours', 'chandannagar', '20', '9.5', '1900'),
('tasty', 'chuchura', '21', '5.5', '400'),
('welcome', 'chuchura', '23', '5', '600'),
('new_jolly', 'bandel', '20', '2.5', '700'),
('hazi', 'bandel', '25', '8.5', '500'),
('blue_diamond', 'chuchura', '25', '10', '500'),
('evening_star', 'chuchura', '28', '9', '800'),
('spicy', 'chuchura', '28', '9', '650'),
('golden_spoon', 'chuchura', '30', '7.5', '750'),
('dominos', 'chandannagar', '22', '8.5', '1500'),
('monginis', 'chandannagar', '30', '1.5', '150'),
('shalimar', 'chandannagar', '14', '7', '950');

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `res_name` varchar(20) NOT NULL,
  `cuisiene` varchar(20) NOT NULL,
  `price` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`res_name`, `cuisiene`, `price`) VALUES
('maa_kamla', 'indian', '200'),
('maa_kamla', 'chinese', '300'),
('treats', 'chinese', '100'),
('treats', 'italian', '50'),
('prince', 'indian', '450'),
('prince', 'thai', '500'),
('royal_biriyani', 'biriyani', '200'),
('flavours', 'continental', '900'),
('flavours', 'sizzler', '1000'),
('tasty', 'rolls', '100'),
('tasty', 'chinese', '500'),
('welcome', 'mongolian', '500'),
('welcome', 'indian', '200'),
('new_jolly', 'manchurian', '100'),
('new_jolly', 'sandwich', '50'),
('hazi', 'kashmiri', '500'),
('hazi', 'punjabi', '500'),
('dominos', 'pizza', '500'),
('hazi', 'pasta', '505'),
('dominos', 'pastry', '50'),
('dominos', 'cakes', '250'),
('blue_diamond', 'paneer', '250'),
('blue_diamond', 'chicken', '250'),
('spicy', 'hot_dog', '50'),
('spicy', 'spring_roll', '150'),
('shalimar', 'snacks', '150'),
('shalimar', 'north_indian', '150'),
('shalimar', 'samosa', '5'),
('shalimar', 'chat', '25'),
('shalimar', 'dosa', '55'),
('shalimar', 'ice_cream', '35'),
('spicy', 'pasta', '45'),
('spicy', 'pizza', '145'),
('blue_diamond', 'kulcha', '145'),
('blue_diamond', 'pulav', '145'),
('blue_diamond', 'pakora_platter', '145'),
('blue_diamond', 'kebab', '145'),
('blue_diamond', 'momos', '145'),
('dominos', 'garlic_bread', '145'),
('dominos', 'choco_lava', '60'),
('dominos', 'coke', '60'),
('hazi', 'mughlai', '160'),
('hazi', 'kebabs', '200'),
('hazi', 'shorba', '300'),
('flavours', 'choupsey', '100'),
('flavours', 'hakka_noodles', '200'),
('flavours', 'cold_coffee', '200'),
('flavours', 'palak_paneer', '200'),
('flavours', 'chilli_paneer', '100'),
('flavours', 'manchurian', '150'),
('maa_kamla', 'chicken_manchurian', '150'),
('maa_kamla', 'garlic_chicken', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `search_res`
--
ALTER TABLE `search_res`
  ADD PRIMARY KEY (`res_name`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`res_name`,`cuisiene`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
