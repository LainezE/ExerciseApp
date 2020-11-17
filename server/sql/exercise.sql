-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freemysqlhosting.net
-- Generation Time: Nov 17, 2020 at 01:06 AM
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
-- Table structure for table `EX_Fall_2020_Comments`
--

CREATE TABLE `EX_Fall_2020_Comments` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Text` varchar(4000) DEFAULT NULL,
  `Workout_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Emojis`
--

CREATE TABLE `EX_Fall_2020_Emojis` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Code` varchar(2) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EX_Fall_2020_Emojis`
--

INSERT INTO `EX_Fall_2020_Emojis` (`id`, `created_at`, `update_at`, `Name`, `Description`, `Code`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'red_heart', 'red heart - U+2764', '??', 420);

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Exercise_Types`
--

CREATE TABLE `EX_Fall_2020_Exercise_Types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Muscle_Group` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Followers`
--

CREATE TABLE `EX_Fall_2020_Followers` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `Following_id` int(11) NOT NULL,
  `Follower_id` int(11) NOT NULL,
  `IsAccepted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Reactions`
--

CREATE TABLE `EX_Fall_2020_Reactions` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Emoji` varchar(2) DEFAULT NULL,
  `Workout_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Types`
--

CREATE TABLE `EX_Fall_2020_Types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EX_Fall_2020_Types`
--

INSERT INTO `EX_Fall_2020_Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '2020-11-15 02:54:55', 'Types', 1),
(2, '0000-00-00 00:00:00', '2020-11-15 02:54:56', 'User Types', 1),
(3, '0000-00-00 00:00:00', '2020-11-15 02:54:56', 'Media Types', 1),
(4, '0000-00-00 00:00:00', '2020-11-15 02:54:57', 'Contact Method Types', 1),
(5, '0000-00-00 00:00:00', '2020-11-15 02:54:57', 'Admin', 2),
(6, '0000-00-00 00:00:00', '2020-11-15 02:54:58', 'User', 2),
(20, '0000-00-00 00:00:00', '2020-11-15 02:54:57', 'Emoji Types', 1),
(21, '0000-00-00 00:00:00', '2020-11-15 02:54:58', 'image/gif', 3),
(22, '0000-00-00 00:00:00', '2020-11-15 02:54:59', 'image/jpeg', 3),
(23, '0000-00-00 00:00:00', '2020-11-15 02:54:59', 'image/pngvideo', 3),
(24, '0000-00-00 00:00:00', '2020-11-15 02:55:00', 'video/webm', 3),
(25, '0000-00-00 00:00:00', '2020-11-15 02:55:00', 'video/ogg', 3),
(26, '0000-00-00 00:00:00', '2020-11-15 02:55:00', 'Email', 4),
(27, '0000-00-00 00:00:00', '2020-11-15 02:55:01', 'Cell Phone', 4),
(420, '0000-00-00 00:00:00', '2020-11-15 02:55:01', 'Reactions', 20);

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Users`
--

CREATE TABLE `EX_Fall_2020_Users` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `User_Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EX_Fall_2020_Users`
--

INSERT INTO `EX_Fall_2020_Users` (`id`, `FirstName`, `LastName`, `DOB`, `Password`, `User_Type`) VALUES
(1, 'Eli', 'Lainez', '2020-11-15 00:00:00', '123', 5),
(2, 'Eli', 'Lainez', '2020-11-15 00:00:00', '123', 5);

-- --------------------------------------------------------

--
-- Table structure for table `EX_Fall_2020_Workouts`
--

CREATE TABLE `EX_Fall_2020_Workouts` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `Owner_id` int(11) NOT NULL,
  `Start_Time` datetime NOT NULL,
  `End_Time` datetime NOT NULL,
  `Exercise_Type` varchar(45) NOT NULL,
  `Sets` int(11) DEFAULT NULL,
  `Reps_Per_Set` int(11) DEFAULT NULL,
  `Weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `EX_Fall_2020_Comments`
--
ALTER TABLE `EX_Fall_2020_Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Workouts1_idx` (`Workout_id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Users1_idx` (`Owner_id`);

--
-- Indexes for table `EX_Fall_2020_Emojis`
--
ALTER TABLE `EX_Fall_2020_Emojis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EX_Fall_2020_Name_UNIQUE` (`Name`),
  ADD UNIQUE KEY `EX_Fall_2020_Code_UNIQUE` (`Code`),
  ADD KEY `fk_Emojis_Types1_idx` (`Type_id`);

--
-- Indexes for table `EX_Fall_2020_Exercise_Types`
--
ALTER TABLE `EX_Fall_2020_Exercise_Types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_EX_Fall_2020_Exercise_Types_Name_UNIQUE` (`Name`),
  ADD KEY `fk_EX_Fall_2020_Exercise_Types_Types1_idx` (`Type`),
  ADD KEY `fk_EX_Fall_2020_Exercise_Types_Muscle_Group_idx` (`Muscle_Group`);

--
-- Indexes for table `EX_Fall_2020_Followers`
--
ALTER TABLE `EX_Fall_2020_Followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Followers_Following_idx` (`Following_id`),
  ADD KEY `fk_EX_Fall_2020_Followers_Follower_idx` (`Follower_id`);

--
-- Indexes for table `EX_Fall_2020_Reactions`
--
ALTER TABLE `EX_Fall_2020_Reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Workouts1_idx` (`Workout_id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Users1_idx` (`Owner_id`);

--
-- Indexes for table `EX_Fall_2020_Types`
--
ALTER TABLE `EX_Fall_2020_Types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EX_Fall_2020_Name_UNIQUE` (`Name`),
  ADD KEY `fk_EX_Fall_2020_Types_Types1_idx` (`Type_id`);

--
-- Indexes for table `EX_Fall_2020_Users`
--
ALTER TABLE `EX_Fall_2020_Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Users_Types1_idx` (`User_Type`);

--
-- Indexes for table `EX_Fall_2020_Workouts`
--
ALTER TABLE `EX_Fall_2020_Workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Workouts_Users1_idx` (`Owner_id`),
  ADD KEY `fk_EX_Fall_2020_Workout_Type_idx` (`Exercise_Type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `EX_Fall_2020_Comments`
--
ALTER TABLE `EX_Fall_2020_Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Emojis`
--
ALTER TABLE `EX_Fall_2020_Emojis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Exercise_Types`
--
ALTER TABLE `EX_Fall_2020_Exercise_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Followers`
--
ALTER TABLE `EX_Fall_2020_Followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Reactions`
--
ALTER TABLE `EX_Fall_2020_Reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Types`
--
ALTER TABLE `EX_Fall_2020_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Users`
--
ALTER TABLE `EX_Fall_2020_Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `EX_Fall_2020_Workouts`
--
ALTER TABLE `EX_Fall_2020_Workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `EX_Fall_2020_Comments`
--
ALTER TABLE `EX_Fall_2020_Comments`
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Workouts1` FOREIGN KEY (`Workout_id`) REFERENCES `EX_Fall_2020_Workouts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `EX_Fall_2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Emojis`
--
ALTER TABLE `EX_Fall_2020_Emojis`
  ADD CONSTRAINT `fk_EX_Fall_2020_Emojis_Types1` FOREIGN KEY (`Type_id`) REFERENCES `EX_Fall_2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Exercise_Types`
--
ALTER TABLE `EX_Fall_2020_Exercise_Types`
  ADD CONSTRAINT `fk_EX_Fall_2020_Exercise_Types_Muscle_Group` FOREIGN KEY (`Muscle_Group`) REFERENCES `EX_Fall_2020_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Exercise_Types_Types1_Types1` FOREIGN KEY (`Type`) REFERENCES `EX_Fall_2020_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Followers`
--
ALTER TABLE `EX_Fall_2020_Followers`
  ADD CONSTRAINT `fk_EX_Fall_2020_Followers_Follower` FOREIGN KEY (`Follower_id`) REFERENCES `EX_Fall_2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Followers_Following` FOREIGN KEY (`Following_id`) REFERENCES `EX_Fall_2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Reactions`
--
ALTER TABLE `EX_Fall_2020_Reactions`
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Workouts10` FOREIGN KEY (`Workout_id`) REFERENCES `EX_Fall_2020_Workouts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Users10` FOREIGN KEY (`Owner_id`) REFERENCES `EX_Fall_2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Types`
--
ALTER TABLE `EX_Fall_2020_Types`
  ADD CONSTRAINT `fk_EX_Fall_2020_Types_Types1` FOREIGN KEY (`Type_id`) REFERENCES `EX_Fall_2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Users`
--
ALTER TABLE `EX_Fall_2020_Users`
  ADD CONSTRAINT `fk_EX_Fall_2020_Users_Types1` FOREIGN KEY (`User_Type`) REFERENCES `EX_Fall_2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `EX_Fall_2020_Workouts`
--
ALTER TABLE `EX_Fall_2020_Workouts`
  ADD CONSTRAINT `fk_EX_Fall_2020_Workout_Exercise_Types` FOREIGN KEY (`Exercise_Type`) REFERENCES `EX_Fall_2020_Exercise_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Workout_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `EX_Fall_2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
