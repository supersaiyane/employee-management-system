-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Dec 03, 2023 at 05:21 PM
-- Server version: 5.7.44
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `EmployeeManagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_current_location` varchar(100) NOT NULL,
  `emp_joining_date` date NOT NULL,
  `emp_leaving_date` date DEFAULT NULL,
  `emp_salary` decimal(10,2) DEFAULT NULL,
  `emp_manager` int(11) NOT NULL,
  `emp_designation` int(11) NOT NULL,
  `emp_department` int(11) NOT NULL,
  `emp_project` int(11) NOT NULL,
  `emp_project_status` int(11) NOT NULL,
  `emp_company_status` int(11) NOT NULL,
  `emp_workplace_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_company_status`
--

CREATE TABLE `emp_company_status` (
  `id` int(11) NOT NULL,
  `emp_company_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_company_status`
--

INSERT INTO `emp_company_status` (`id`, `emp_company_status`) VALUES
(1, 'Working'),
(2, 'Resigned');

-- --------------------------------------------------------

--
-- Table structure for table `emp_department`
--

CREATE TABLE `emp_department` (
  `id` int(11) NOT NULL,
  `emp_department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_department`
--

INSERT INTO `emp_department` (`id`, `emp_department_name`) VALUES
(1, 'Engineering'),
(2, 'Internal Recruitment'),
(3, 'Direct Hiring'),
(4, 'Admin'),
(5, 'HR'),
(6, 'Accounts'),
(7, 'Sales'),
(8, 'General Staff');

-- --------------------------------------------------------

--
-- Table structure for table `emp_designation`
--

CREATE TABLE `emp_designation` (
  `id` int(11) NOT NULL,
  `emp_designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_manager`
--

CREATE TABLE `emp_manager` (
  `emp_manager_name` varchar(100) NOT NULL,
  `emp_manager_emp_id` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_project`
--

CREATE TABLE `emp_project` (
  `id` int(11) NOT NULL,
  `emp_project` varchar(20) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_project_status`
--

CREATE TABLE `emp_project_status` (
  `id` int(11) NOT NULL,
  `emp_project_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_workplace_status`
--

CREATE TABLE `emp_workplace_status` (
  `id` int(11) NOT NULL,
  `emp_workplace_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_workplace_status`
--

INSERT INTO `emp_workplace_status` (`id`, `emp_workplace_status`) VALUES
(1, 'WFH'),
(2, 'Hybrid'),
(3, 'Local Office');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`) VALUES
(1, 'testuser', '$2b$10$17bAuRB2Gi9EpsCKwe8qwu1Ai88a/fYAmTySPYBGzbCfTIA/RiFO2', 'admin', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_manager` (`emp_manager`),
  ADD KEY `emp_designation` (`emp_designation`),
  ADD KEY `emp_department` (`emp_department`),
  ADD KEY `emp_project` (`emp_project`),
  ADD KEY `emp_project_status` (`emp_project_status`),
  ADD KEY `emp_company_status` (`emp_company_status`),
  ADD KEY `emp_workplace_status` (`emp_workplace_status`);

--
-- Indexes for table `emp_company_status`
--
ALTER TABLE `emp_company_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_department`
--
ALTER TABLE `emp_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_designation`
--
ALTER TABLE `emp_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_manager`
--
ALTER TABLE `emp_manager`
  ADD PRIMARY KEY (`emp_manager_emp_id`);

--
-- Indexes for table `emp_project`
--
ALTER TABLE `emp_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_project_status`
--
ALTER TABLE `emp_project_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_workplace_status`
--
ALTER TABLE `emp_workplace_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp_company_status`
--
ALTER TABLE `emp_company_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_department`
--
ALTER TABLE `emp_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `emp_designation`
--
ALTER TABLE `emp_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_project`
--
ALTER TABLE `emp_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_project_status`
--
ALTER TABLE `emp_project_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_workplace_status`
--
ALTER TABLE `emp_workplace_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp`
--
ALTER TABLE `emp`
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`emp_manager`) REFERENCES `emp_manager` (`emp_manager_emp_id`),
  ADD CONSTRAINT `emp_ibfk_2` FOREIGN KEY (`emp_designation`) REFERENCES `emp_designation` (`id`),
  ADD CONSTRAINT `emp_ibfk_3` FOREIGN KEY (`emp_department`) REFERENCES `emp_department` (`id`),
  ADD CONSTRAINT `emp_ibfk_4` FOREIGN KEY (`emp_project`) REFERENCES `emp_project` (`id`),
  ADD CONSTRAINT `emp_ibfk_5` FOREIGN KEY (`emp_project_status`) REFERENCES `emp_project_status` (`id`),
  ADD CONSTRAINT `emp_ibfk_6` FOREIGN KEY (`emp_company_status`) REFERENCES `emp_company_status` (`id`),
  ADD CONSTRAINT `emp_ibfk_7` FOREIGN KEY (`emp_workplace_status`) REFERENCES `emp_workplace_status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
