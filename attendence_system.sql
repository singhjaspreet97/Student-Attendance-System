-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2018 at 04:47 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendence_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`id`, `student_name`, `roll_number`) VALUES
(1, 'John', '20'),
(3, 'Sam', '10'),
(4, 'Rahul', '5'),
(7, 'Sahil', '15'),
(12, 'Jassi Gill', '50');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_records`
--

CREATE TABLE `attendence_records` (
  `id` int(10) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `roll_number` varchar(255) NOT NULL,
  `attendence_status` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence_records`
--

INSERT INTO `attendence_records` (`id`, `student_name`, `roll_number`, `attendence_status`, `date`) VALUES
(1, 'John', '20', 'Present', '2018-08-25'),
(2, 'Sam', '10', 'Absent', '2018-08-25'),
(3, 'Rahul', '5', 'Present', '2018-08-25'),
(4, 'Sahil', '15', 'Absent', '2018-08-26'),
(5, 'Sahil', '15', 'Absent', '2018-08-26'),
(6, 'Sahil', '15', 'Absent', '2018-08-26'),
(7, 'John', '20', 'Absent', '2018-08-27'),
(8, 'Sam', '10', 'Present', '2018-08-27'),
(9, 'Rahul', '5', 'Present', '2018-08-27'),
(10, 'Sahil', '15', 'Present', '2018-08-27'),
(11, 'Jassi Gill', '50', 'Absent', '2018-08-27'),
(12, 'John', '20', 'Present', '2018-09-03'),
(13, 'Sam', '10', 'Present', '2018-09-03'),
(14, 'Rahul', '5', 'Present', '2018-09-03'),
(15, 'Sahil', '15', 'Present', '2018-09-03'),
(16, 'Jassi Gill', '50', 'Absent', '2018-09-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_records`
--
ALTER TABLE `attendence_records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendence_records`
--
ALTER TABLE `attendence_records`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
