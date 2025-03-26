-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 08:15 AM
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
-- Database: `academy_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `productDetails` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`productDetails`)),
  `createdBy` varchar(255) NOT NULL,
  `creationDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `uuid`, `name`, `email`, `mobile`, `paymentMethod`, `total`, `productDetails`, `createdBy`, `creationDate`) VALUES
(19, '939c9ea0-0a03-11f0-98ba-bf00479fdca5', 'Inkithai Meiyalagan', 'inkithai@gmail.com', '0750370177', 'Cash', 3000, '[{\"id\":7,\"name\":\"javascript\",\"course_fee\":3000,\"total\":3000}]', 'inkithai@gmail.com', '2025-03-26'),
(20, 'a25a1e40-0a03-11f0-98ba-bf00479fdca5', 'Inkithai Meiyalagan', 'inkithai@gmail.com', '0750370177', 'Cash', 3000, '[{\"id\":7,\"name\":\"javascript\",\"course_fee\":3000,\"total\":3000}]', 'inkithai@gmail.com', '2025-03-26'),
(21, 'a25b08a0-0a03-11f0-98ba-bf00479fdca5', 'Inkithai Meiyalagan', 'inkithai@gmail.com', '0750370177', 'Cash', 3000, '[{\"id\":7,\"name\":\"javascript\",\"course_fee\":3000,\"total\":3000}]', 'inkithai@gmail.com', '2025-03-26'),
(22, 'a25ba4e0-0a03-11f0-98ba-bf00479fdca5', 'Inkithai Meiyalagan', 'inkithai@gmail.com', '0750370177', 'Cash', 3000, '[{\"id\":7,\"name\":\"javascript\",\"course_fee\":3000,\"total\":3000}]', 'inkithai@gmail.com', '2025-03-26'),
(23, '54085880-0a06-11f0-98ba-bf00479fdca5', 'Inkithai Meiyalagan', 'inkithai@gmail.com', '0750370177', 'Credit Card', 3000, '[{\"id\":6,\"name\":\"python\",\"course_fee\":3000,\"total\":3000}]', 'inkithai@gmail.com', '2025-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `course_master`
--

CREATE TABLE `course_master` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `course_fee` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_master`
--

INSERT INTO `course_master` (`course_id`, `course_name`, `description`, `course_fee`, `status`) VALUES
(4, 'Core Java', 'Java Beginners level', 6000, 'true'),
(6, 'python', 'basic python', 3000, 'true'),
(7, 'javascript', 'begginer javascript', 3000, 'true'),
(8, 'React Js', 'basic react', 5000, 'true'),
(9, 'Next Js', 'Javascript library', 4000, 'true'),
(10, 'HTML and CSS', 'html', 2000, 'true');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `address`, `mobile`, `email`, `password`, `role`) VALUES
(2, 'Admin', 'ABC Uni', '9038060439', 'abcd@gmail.com', '123', 'admin'),
(14, 'Inkithai Meiyalagan', 'Queens Hostel, Gemunupura 2nd Lane,', '0750370177', 'inkithai@gmail.com', 'inkithai123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_master`
--
ALTER TABLE `course_master`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `course_master`
--
ALTER TABLE `course_master`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
