-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freemysqlhosting.net
-- Generation Time: Nov 05, 2020 at 02:16 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql9374344`
--
CREATE DATABASE IF NOT EXISTS `sql9374344` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql9374344`;

-- --------------------------------------------------------
--
-- Table structure for table `Exercises`
--

CREATE TABLE `Exercises` (
  `Post_Number` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Time_Spent` int(11) UNSIGNED ZEROFILL DEFAULT '00000000000',
  `Sets` int(11) DEFAULT '0',
  `Reps` int(11) DEFAULT '0',
  `Likes` int(11) DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Location` varchar(45) DEFAULT 'Gym'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Likes`
--

CREATE TABLE `Likes` (
  `User_ID` int(11) DEFAULT NULL,
  `Post_Number` int(11) DEFAULT NULL,
  `Comment` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `User_Followers`
--

CREATE TABLE `User_Followers` (
  `Approval` tinyint(4) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `Follower_ID` int(11) NOT NULL,
  `Posts_Liked` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `User_ID` int(11) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Nickname` varchar(45) DEFAULT NULL,
  `Follower_Count` int(11) DEFAULT NULL,
  `Status` enum('A','U') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Exercises`
--
ALTER TABLE `Exercises`
  ADD PRIMARY KEY (`Post_Number`);

--
-- Indexes for table `User_Followers`
--
ALTER TABLE `User_Followers`
  ADD PRIMARY KEY (`User_ID`,`Follower_ID`),
  ADD KEY `Follower_ID_idx` (`Follower_ID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `User_ID_UNIQUE` (`User_ID`),
  ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Exercises`
--
ALTER TABLE `Exercises`
  MODIFY `Post_Number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `User_Followers`
--
ALTER TABLE `User_Followers`
  ADD CONSTRAINT `Follower_ID` FOREIGN KEY (`Follower_ID`) REFERENCES `Users` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `User_ID` FOREIGN KEY (`User_ID`) REFERENCES `Users` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
