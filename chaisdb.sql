-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 09:30 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chaisdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `charityID` int(11) NOT NULL,
  `charityName` varchar(50) DEFAULT NULL,
  `charityAddress` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `charitytype_ID` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charity`
--

INSERT INTO `charity` (`charityID`, `charityName`, `charityAddress`, `contact`, `description`, `charitytype_ID`, `location`) VALUES
(1, 'TUMAINI', 'KAWE', '21345', 'WATOTO WA MTAANI', NULL, NULL),
(2, 'MWEMA', 'WAZO', '076472', 'WATOTO WA MTAANI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `charitytype`
--

CREATE TABLE `charitytype` (
  `charityType_ID` int(11) NOT NULL,
  `type_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charitytype`
--

INSERT INTO `charitytype` (`charityType_ID`, `type_name`) VALUES
(1, 'orphans'),
(2, 'streer chidren'),
(3, 'elders'),
(4, 'drug addicts');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donationID` int(11) NOT NULL,
  `donation_date` date DEFAULT NULL,
  `donationtype_ID` int(11) DEFAULT NULL,
  `charityID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donationtype`
--

CREATE TABLE `donationtype` (
  `donationtype_ID` int(11) NOT NULL,
  `donationType_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fundraising_compaign`
--

CREATE TABLE `fundraising_compaign` (
  `compaignID` int(11) NOT NULL,
  `compain_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `compaign_goal` varchar(200) DEFAULT NULL,
  `compaign_progress` varchar(100) DEFAULT NULL,
  `charityID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `reportID` int(11) NOT NULL,
  `report_date` date DEFAULT NULL,
  `report_data` varchar(255) DEFAULT NULL,
  `reportType_ID` int(11) DEFAULT NULL,
  `charityID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reporttype`
--

CREATE TABLE `reporttype` (
  `reportType_ID` int(11) NOT NULL,
  `rportType_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`charityID`),
  ADD KEY `charitytype_ID` (`charitytype_ID`);

--
-- Indexes for table `charitytype`
--
ALTER TABLE `charitytype`
  ADD PRIMARY KEY (`charityType_ID`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donationID`),
  ADD KEY `charityID` (`charityID`),
  ADD KEY `donationtype_ID` (`donationtype_ID`);

--
-- Indexes for table `donationtype`
--
ALTER TABLE `donationtype`
  ADD PRIMARY KEY (`donationtype_ID`);

--
-- Indexes for table `fundraising_compaign`
--
ALTER TABLE `fundraising_compaign`
  ADD PRIMARY KEY (`compaignID`),
  ADD KEY `charityID` (`charityID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`reportID`),
  ADD KEY `charityID` (`charityID`),
  ADD KEY `reportType_ID` (`reportType_ID`);

--
-- Indexes for table `reporttype`
--
ALTER TABLE `reporttype`
  ADD PRIMARY KEY (`reportType_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `charity`
--
ALTER TABLE `charity`
  MODIFY `charityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charitytype`
--
ALTER TABLE `charitytype`
  MODIFY `charityType_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donationtype`
--
ALTER TABLE `donationtype`
  MODIFY `donationtype_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fundraising_compaign`
--
ALTER TABLE `fundraising_compaign`
  MODIFY `compaignID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reporttype`
--
ALTER TABLE `reporttype`
  MODIFY `reportType_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `charity`
--
ALTER TABLE `charity`
  ADD CONSTRAINT `charity_ibfk_1` FOREIGN KEY (`charitytype_ID`) REFERENCES `charitytype` (`charityType_ID`);

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`charityID`) REFERENCES `charity` (`charityID`),
  ADD CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`donationtype_ID`) REFERENCES `donationtype` (`donationtype_ID`);

--
-- Constraints for table `fundraising_compaign`
--
ALTER TABLE `fundraising_compaign`
  ADD CONSTRAINT `fundraising_compaign_ibfk_1` FOREIGN KEY (`charityID`) REFERENCES `charity` (`charityID`);

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`charityID`) REFERENCES `charity` (`charityID`),
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`reportType_ID`) REFERENCES `reporttype` (`reportType_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
