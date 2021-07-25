-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 09:34 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmritdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEvents` ()  SELECT * FROM events$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `clubchange`
--

CREATE TABLE `clubchange` (
  `id` int(11) NOT NULL,
  `club_id` varchar(25) NOT NULL,
  `action` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubchange`
--

INSERT INTO `clubchange` (`id`, `club_id`, `action`, `cdate`) VALUES
(1, 'CSE01', 'UPDATED', '2021-01-07 19:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` varchar(25) NOT NULL,
  `club_name` varchar(25) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `branch`) VALUES
('CIV01', 'SOCE', 'CIV'),
('CIV02', 'ECO', 'CIV'),
('CSE01', 'Code Chef', 'CSE'),
('CSE02', 'HACKER EARTH', 'CSE'),
('CSE03', 'aaa', 'CSE'),
('ECE01', 'TAQ', 'ECE'),
('ECE02', 'ETA', 'ECE'),
('EEE01', 'FEEE', 'EEE'),
('EEE02', 'ENSAV', 'EEE'),
('ISE01', 'RISE', 'ISE'),
('ISE02', 'GLUG', 'ISE'),
('ME01', 'SAE', 'ME'),
('ME02', 'SME', 'ME');

--
-- Triggers `clubs`
--
DELIMITER $$
CREATE TRIGGER `updateClubNames` AFTER UPDATE ON `clubs` FOR EACH ROW INSERT INTO clubchange values(null, NEW.club_id,"UPDATED",NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `e_id` varchar(25) NOT NULL,
  `e_name` varchar(30) DEFAULT NULL,
  `o_name` varchar(25) DEFAULT NULL,
  `club_id` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`e_id`, `e_name`, `o_name`, `club_id`, `start_date`, `end_date`, `status`) VALUES
('ACE01', 'Event 1', 'Aman', 'CSE01', '2021-01-09', '2021-01-10', 'To be held'),
('ACE02', 'Event 2', 'Mannpreet', 'CSE01', '2021-01-06', '2021-01-07', 'Done'),
('ECO01', 'Event 1', 'Kirthi', 'CIV02', '2021-01-15', '2021-01-16', 'To be held'),
('ENSAV01', 'Event 1', 'Pallavi', 'EEE02', '2021-01-15', '2021-01-17', 'To be held'),
('ENSAV02', 'Event 2', 'Ranjitha', 'EEE02', '2021-01-16', '2021-01-17', 'To be held'),
('ETA01', 'Event 1', 'Cathrin', 'ECE02', '2021-01-30', '2021-01-30', 'To be held'),
('ETA02', 'Event 2', 'Prajwal', 'ECE02', '2021-01-14', '2021-01-15', 'Cancelled'),
('FEEE01', 'Event 1', 'Jyothi', 'EEE01', '2021-01-07', '2021-01-11', 'To be held'),
('FEEE02', 'Event 2', 'Sureka', 'EEE01', '2021-01-20', '2021-01-21', 'To be held'),
('GLUG01', 'Event 1', 'Akil', 'ISE02', '2021-01-11', '2021-01-14', 'To be held'),
('GLUG02', 'Event 2', 'Divya', 'ISE02', '2021-01-12', '2021-01-14', 'To be held'),
('HE01', 'Event 1', 'Ishitha', 'CSE02', '2021-01-07', '2021-01-08', 'Cancelled'),
('HE02', 'Event 2', 'Nithin', 'CSE02', '2021-01-14', '2021-01-17', 'To be held'),
('RISE01', 'Event 1', 'Arun', 'ISE01', '2021-01-11', '2021-01-12', 'To be held'),
('RISE02', 'Event 2', 'Bharath', 'ISE01', '2021-01-09', '2021-01-10', 'To be held'),
('SAE01', 'Event 1', 'Krupa', 'ME01', '2021-01-29', '2021-01-30', 'To be held'),
('SAE02', 'Event 2', 'Prathvi', 'ME01', '2021-01-18', '2021-01-19', 'To be held'),
('SME01', 'Event 1', 'Rohit', 'ME02', '2021-01-27', '2021-01-28', 'To be held'),
('SME02', 'Event 2', 'Vishnu', 'ME02', '2021-01-04', '2021-01-05', 'Done'),
('SOCE01', 'Event 1', 'Manoj', 'CIV01', '2021-01-01', '2021-01-03', 'Done'),
('SOCE02', 'Event 2', 'Soujanya', 'CIV01', '2021-01-16', '2021-01-19', 'To be held'),
('TAQ01', 'Event 1', 'Pranav', 'ECE01', '2021-01-05', '2021-01-06', 'Done'),
('TAQ02', 'Event 2', 'Raghav', 'ECE01', '2021-01-21', '2021-01-22', 'To be held');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `m_id` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `ph_no` varchar(10) DEFAULT NULL,
  `club_id` varchar(25) DEFAULT NULL,
  `desg` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`m_id`, `name`, `branch`, `sex`, `email`, `ph_no`, `club_id`, `desg`) VALUES
('1CR18CS101', 'Aman', 'CSE', 'M', 'abc@gmail.com', '1234567890', 'CSE01', 'member'),
('1CR18EC161', 'Raghav', 'ECE', 'M', 'cfd@gmail.com', '1341767894', 'ECE01', 'member'),
('1CR18EE076', 'Ananya', 'EEE', 'F', 'abcd@gmail.com', '1234567890', 'EEE01', 'head'),
('1CRCV001', 'Ankush', 'CIV', 'M', 'gfd@gmail.com', '1341767894', 'CIV02', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `organiser`
--

CREATE TABLE `organiser` (
  `m_id` varchar(10) NOT NULL,
  `e_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organiser`
--

INSERT INTO `organiser` (`m_id`, `e_id`) VALUES
('1CR18CS101', 'ACE01'),
('1CR18EC161', 'TAQ02');

-- --------------------------------------------------------

--
-- Table structure for table `resourceperson`
--

CREATE TABLE `resourceperson` (
  `r_name` varchar(25) DEFAULT NULL,
  `email_id` varchar(25) DEFAULT NULL,
  `company` varchar(25) DEFAULT NULL,
  `desg` varchar(25) DEFAULT NULL,
  `ph_no` varchar(10) DEFAULT NULL,
  `e_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resourceperson`
--

INSERT INTO `resourceperson` (`r_name`, `email_id`, `company`, `desg`, `ph_no`, `e_id`) VALUES
('Rohan', 'christyshekar@gmail.com', 'KPMG', 'member', '4567890231', 'ACE01'),
('Preeti', 'yte@gmail.com', 'XYZ', 'Product manager', '9087654321', 'SAE01');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` varchar(10) NOT NULL,
  `s_name` varchar(25) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `sem` int(1) DEFAULT NULL,
  `ph_no` varchar(10) DEFAULT NULL,
  `e_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `s_name`, `branch`, `sex`, `email`, `sem`, `ph_no`, `e_id`) VALUES
('1CR18CS191', 'Priscilla', 'CSE', 'F', 'abe@gmail.com', 5, '1234567898', 'FEEE01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubchange`
--
ALTER TABLE `clubchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `organiser`
--
ALTER TABLE `organiser`
  ADD PRIMARY KEY (`m_id`,`e_id`),
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `resourceperson`
--
ALTER TABLE `resourceperson`
  ADD KEY `e_id` (`e_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`,`e_id`),
  ADD KEY `e_id` (`e_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubchange`
--
ALTER TABLE `clubchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`club_id`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`club_id`);

--
-- Constraints for table `organiser`
--
ALTER TABLE `organiser`
  ADD CONSTRAINT `organiser_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `members` (`m_id`),
  ADD CONSTRAINT `organiser_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `events` (`e_id`);

--
-- Constraints for table `resourceperson`
--
ALTER TABLE `resourceperson`
  ADD CONSTRAINT `resourceperson_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `events` (`e_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `events` (`e_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
