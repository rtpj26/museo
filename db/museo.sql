-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2016 at 11:31 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `museo`
--
CREATE DATABASE IF NOT EXISTS `museo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `museo`;

-- --------------------------------------------------------

--
-- Table structure for table `t000_login`
--

DROP TABLE IF EXISTS `t000_login`;
CREATE TABLE `t000_login` (
  `C000_LOGIN_ID` int(11) NOT NULL,
  `C000_USERNAME` varchar(50) NOT NULL,
  `C000_PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t000_login`
--

INSERT INTO `t000_login` (`C000_LOGIN_ID`, `C000_USERNAME`, `C000_PASSWORD`) VALUES
(1, 'ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `t001_user`
--

DROP TABLE IF EXISTS `t001_user`;
CREATE TABLE `t001_user` (
  `C001_USER_ID` int(11) NOT NULL,
  `C001_FNAME` varchar(50) NOT NULL,
  `C001_LNAME` varchar(50) NOT NULL,
  `C000_LOGIN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t001_user`
--

INSERT INTO `t001_user` (`C001_USER_ID`, `C001_FNAME`, `C001_LNAME`, `C000_LOGIN_ID`) VALUES
(1, 'ADMIN', 'ADMIN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t002_item`
--

DROP TABLE IF EXISTS `t002_item`;
CREATE TABLE `t002_item` (
  `C002_ITEM_ID` int(11) NOT NULL,
  `C002_ITEM_TITLE` varchar(100) NOT NULL,
  `C002_ITEM_DESCRIPTION` text,
  `C003_CREATOR_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t003_creator`
--

DROP TABLE IF EXISTS `t003_creator`;
CREATE TABLE `t003_creator` (
  `C003_CREATOR_ID` int(11) NOT NULL,
  `C003_CREATOR_FNAME` varchar(50) NOT NULL,
  `C003_CREATOR_LNAME` varchar(50) NOT NULL,
  `C003_CREATOR_PROFILE` text NOT NULL,
  `C004_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t004_image`
--

DROP TABLE IF EXISTS `t004_image`;
CREATE TABLE `t004_image` (
  `C004_IMAGE_ID` int(11) NOT NULL,
  `C004_IMAGE_FILENAME` varchar(100) NOT NULL,
  `C004_IMAGE_PATH` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t005_item_image_link`
--

DROP TABLE IF EXISTS `t005_item_image_link`;
CREATE TABLE `t005_item_image_link` (
  `C005_IIL_ID` int(11) NOT NULL,
  `C002_ITEM_ID` int(11) NOT NULL,
  `C004_IMAGE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t006_exhibit`
--

DROP TABLE IF EXISTS `t006_exhibit`;
CREATE TABLE `t006_exhibit` (
  `C006_EXHIBIT_ID` int(11) NOT NULL,
  `C006_EXHIBIT_SDATE` date NOT NULL,
  `C006_EXHIBIT_EDATE` date NOT NULL,
  `C006_EXHIBIT_TITLE` varchar(255) NOT NULL,
  `C006_EXHIBIT_DESCRIPTION` text NOT NULL,
  `C004_IMAGE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t007_exhibit_image_link`
--

DROP TABLE IF EXISTS `t007_exhibit_image_link`;
CREATE TABLE `t007_exhibit_image_link` (
  `C007_EIL_ID` int(11) NOT NULL,
  `C006_EXHIBIT_ID` int(11) NOT NULL,
  `C002_ITEM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t000_login`
--
ALTER TABLE `t000_login`
  ADD PRIMARY KEY (`C000_LOGIN_ID`);

--
-- Indexes for table `t001_user`
--
ALTER TABLE `t001_user`
  ADD PRIMARY KEY (`C001_USER_ID`),
  ADD KEY `C000_LOGIN_ID` (`C000_LOGIN_ID`);

--
-- Indexes for table `t002_item`
--
ALTER TABLE `t002_item`
  ADD PRIMARY KEY (`C002_ITEM_ID`);

--
-- Indexes for table `t003_creator`
--
ALTER TABLE `t003_creator`
  ADD PRIMARY KEY (`C003_CREATOR_ID`);

--
-- Indexes for table `t004_image`
--
ALTER TABLE `t004_image`
  ADD PRIMARY KEY (`C004_IMAGE_ID`);

--
-- Indexes for table `t005_item_image_link`
--
ALTER TABLE `t005_item_image_link`
  ADD PRIMARY KEY (`C005_IIL_ID`),
  ADD KEY `C002_ITEM_ID` (`C002_ITEM_ID`),
  ADD KEY `C004_IMAGE_ID` (`C004_IMAGE_ID`);

--
-- Indexes for table `t006_exhibit`
--
ALTER TABLE `t006_exhibit`
  ADD PRIMARY KEY (`C006_EXHIBIT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t000_login`
--
ALTER TABLE `t000_login`
  MODIFY `C000_LOGIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t001_user`
--
ALTER TABLE `t001_user`
  MODIFY `C001_USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t002_item`
--
ALTER TABLE `t002_item`
  MODIFY `C002_ITEM_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t003_creator`
--
ALTER TABLE `t003_creator`
  MODIFY `C003_CREATOR_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t004_image`
--
ALTER TABLE `t004_image`
  MODIFY `C004_IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t005_item_image_link`
--
ALTER TABLE `t005_item_image_link`
  MODIFY `C005_IIL_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t006_exhibit`
--
ALTER TABLE `t006_exhibit`
  MODIFY `C006_EXHIBIT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `t001_user`
--
ALTER TABLE `t001_user`
  ADD CONSTRAINT `t001_user_ibfk_1` FOREIGN KEY (`C000_LOGIN_ID`) REFERENCES `t000_login` (`C000_LOGIN_ID`);

--
-- Constraints for table `t005_item_image_link`
--
ALTER TABLE `t005_item_image_link`
  ADD CONSTRAINT `t005_item_image_link_ibfk_1` FOREIGN KEY (`C002_ITEM_ID`) REFERENCES `t002_item` (`C002_ITEM_ID`),
  ADD CONSTRAINT `t005_item_image_link_ibfk_2` FOREIGN KEY (`C004_IMAGE_ID`) REFERENCES `t004_image` (`C004_IMAGE_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
