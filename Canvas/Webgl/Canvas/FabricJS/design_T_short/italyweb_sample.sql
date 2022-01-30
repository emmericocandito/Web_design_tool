-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2020 at 11:58 AM
-- Server version: 10.3.23-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `italyweb_sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `band_print_groups`
--

CREATE TABLE `band_print_groups` (
  `id` int(6) UNSIGNED NOT NULL,
  `desIT` varchar(100) DEFAULT NULL,
  `desEN` varchar(100) DEFAULT NULL,
  `desES` varchar(100) DEFAULT NULL,
  `desFR` varchar(100) DEFAULT NULL,
  `desDE` varchar(100) DEFAULT NULL,
  `desRO` varchar(100) DEFAULT NULL,
  `desPL` varchar(100) DEFAULT NULL,
  `desFI` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `band_type`
--

CREATE TABLE `band_type` (
  `id` int(6) UNSIGNED NOT NULL,
  `band` varchar(100) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `desIT` varchar(100) DEFAULT NULL,
  `desEN` varchar(100) DEFAULT NULL,
  `desES` varchar(100) DEFAULT NULL,
  `desFR` varchar(100) DEFAULT NULL,
  `desDE` varchar(100) DEFAULT NULL,
  `desRO` varchar(100) DEFAULT NULL,
  `desPL` varchar(100) DEFAULT NULL,
  `desFI` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(6) UNSIGNED NOT NULL,
  `codecolor` varchar(20) DEFAULT NULL,
  `desIT` varchar(800) DEFAULT NULL,
  `desEN` varchar(800) DEFAULT NULL,
  `desES` varchar(800) DEFAULT NULL,
  `desFR` varchar(800) DEFAULT NULL,
  `desDE` varchar(800) DEFAULT NULL,
  `desRO` varchar(800) DEFAULT NULL,
  `desPL` varchar(800) DEFAULT NULL,
  `desFI` varchar(800) DEFAULT NULL,
  `bg` varchar(30) DEFAULT NULL,
  `border` varchar(7) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `virtual_sample_contain`
--

CREATE TABLE `virtual_sample_contain` (
  `id` int(6) UNSIGNED NOT NULL,
  `serie` varchar(10) NOT NULL,
  `Article` varchar(25) DEFAULT NULL,
  `codecolor` varchar(20) DEFAULT NULL,
  `desIT` varchar(800) DEFAULT NULL,
  `desEN` varchar(800) DEFAULT NULL,
  `desES` varchar(800) DEFAULT NULL,
  `desFR` varchar(800) DEFAULT NULL,
  `desDE` varchar(800) DEFAULT NULL,
  `desRO` varchar(800) DEFAULT NULL,
  `desPL` varchar(800) DEFAULT NULL,
  `desFI` varchar(800) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `band` varchar(100) DEFAULT NULL,
  `update_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `band_print_groups`
--
ALTER TABLE `band_print_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `band_type`
--
ALTER TABLE `band_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `band` (`band`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `virtual_sample_contain`
--
ALTER TABLE `virtual_sample_contain`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `band_print_groups`
--
ALTER TABLE `band_print_groups`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `band_type`
--
ALTER TABLE `band_type`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtual_sample_contain`
--
ALTER TABLE `virtual_sample_contain`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
