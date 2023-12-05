-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Dec 04, 2023 at 01:36 PM
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
  `reporting_mngr_name` int(11) NOT NULL,
  `account_owner_name` int(11) NOT NULL,
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

--
-- Dumping data for table `emp_designation`
--

INSERT INTO `emp_designation` (`id`, `emp_designation`) VALUES
(1, 'PowerBI'),
(2, 'Senior_Business_Analyst'),
(3, 'UX_Designer'),
(4, 'Lead_Engineer'),
(5, 'Software_Engineer'),
(6, 'Technical_Lead'),
(7, 'Technical_Project_Manager'),
(8, 'Data_Science_Consultant'),
(9, 'QA_Trainee'),
(10, 'Scrum_Master'),
(11, 'Frontend_Developer'),
(12, 'Graduate_Engineer_Trainee'),
(13, 'QA_Engineer'),
(14, 'Software_Consultant'),
(15, 'Trainee_PM_Coordinator_Scrum'),
(16, 'Senior_Software_Engineer'),
(17, 'Data_Analyst'),
(18, 'Associate_QA_Engineer'),
(19, 'Intern_DevOps'),
(20, 'Intern_QA'),
(21, 'DevOps_Engineer'),
(22, 'QA_Lead_Scrum'),
(23, 'QA_Consultant'),
(24, 'Technical_Delivery_Manager'),
(25, 'Associate_Software_Engineer'),
(26, 'Business_Analyst'),
(27, 'Associate_Software_Engineer'),
(28, 'Module_Lead'),
(29, 'Senior_QA_Engineer'),
(30, 'Technical_Manager'),
(31, 'Trainee_Reactjs'),
(32, 'Trainee_QA'),
(33, 'Assistant_Vice_President'),
(34, 'Delivery_Head-India'),
(35, 'Sharepoint_Developer'),
(36, 'Software_Trainee_(Intern)'),
(37, 'Full_Stack_Application_Developer'),
(38, 'Data_Engineer_Consultant'),
(39, 'QA_Manager'),
(40, 'Pre_Sales_Cloud'),
(41, 'Full_Stack_Developer'),
(42, 'Architect'),
(43, 'DBA_Consultant'),
(44, 'Manager_Corporate_Strategy'),
(45, 'Project_Manager_UX_Scrum'),
(46, 'React_Native_Mobile_Developer'),
(47, 'Senior_Analyst'),
(48, 'Student_Intern'),
(49, 'Senior_Python_Developer'),
(50, 'Senior_Network_Engineer'),
(51, 'Telecom_Engineer'),
(52, 'Assistant_Manager_QA_Automation'),
(53, 'UI_UX_Designer'),
(54, 'IT_Support');

-- --------------------------------------------------------

--
-- Table structure for table `emp_project`
--

CREATE TABLE `emp_project` (
  `id` int(11) NOT NULL,
  `emp_project_name` varchar(200) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_project`
--

INSERT INTO `emp_project` (`id`, `emp_project_name`, `status`) VALUES
(1, 'Boyle_Sports', 'active'),
(2, 'CreditOne_Bank', 'active'),
(3, 'Everi_Central_Credit_(Dev)', 'active'),
(4, 'Everi_Central_Credit_(QA)', 'active'),
(5, 'Everi_Flash_Legacy_Promo_Enroll_QA', 'active'),
(6, 'Everi_Kiosk_Porting_Dev', 'active'),
(7, 'Everi_Kiosk_Porting_QA', 'active'),
(8, 'Everi_Loyalty_Mobile', 'active'),
(9, 'Everi_Promo_Games_QA', 'active'),
(10, 'Harley_Davidson', 'active'),
(11, 'HGV', 'active'),
(12, 'HGV_MS:Chorus', 'active'),
(13, 'HGV_MS:Clarity', 'active'),
(14, 'HGV_MS:Middleware', 'active'),
(15, 'HGV_MS:Voice', 'active'),
(16, 'Internal_Vertisystem', 'active'),
(17, 'Boyle_Sports', 'active'),
(18, 'CreditOne_Bank', 'active'),
(19, 'Everi_Central_Credit_(Dev)', 'active'),
(20, 'Everi_Central_Credit_(QA)', 'active'),
(21, 'Everi_Flash_Legacy_Promo_Enroll_QA', 'active'),
(22, 'Everi_Kiosk_Porting_Dev', 'active'),
(23, 'Everi_Kiosk_Porting_QA', 'active'),
(24, 'Everi_Loyalty_Mobile', 'active'),
(25, 'Everi_Promo_Games_QA', 'active'),
(26, 'Harley_Davidson', 'active'),
(27, 'HGV', 'active'),
(28, 'HGV_MS:Chorus', 'active'),
(29, 'HGV_MS:Clarity', 'active'),
(30, 'HGV_MS:Middleware', 'active'),
(31, 'HGV_MS:Voice', 'active'),
(32, 'Internal_Vertisystem', 'active'),
(33, 'Kofile', 'active'),
(34, 'NDC', 'active'),
(35, 'Nevada_Hearts_and_Vascular', 'active'),
(36, 'OKTA', 'active'),
(37, 'Paxton_And_Hollyhock', 'active'),
(38, 'Paxton_And_Hollyhock_II', 'active'),
(39, 'PF_2.0_Support', 'active'),
(40, 'PF_2.0_Support_Call Center', 'active'),
(41, 'PF_2.0_Support_Dev', 'active'),
(42, 'PF_Quickbase', 'active'),
(43, 'ProjectsForce_2.0', 'active'),
(44, 'ProjectsForce_2.0_Intern', 'active'),
(45, 'Python_AI_Lab', 'active'),
(46, 'Reimer', 'active'),
(47, 'Sally_Holdings_LLC', 'active'),
(48, 'Sparkz_Dev_LLC', 'active'),
(49, 'Stanford_Health_Care', 'active'),
(50, 'Symtrain', 'active'),
(51, 'Thalia', 'active'),
(52, 'XYPRO_Technology_Corporation', 'active'),
(53, 'YATS_Shared_Support', 'active'),
(54, 'Acceleration_Point', 'active'),
(55, 'Advanta_AMR', 'active'),
(56, 'Advanta_Phlebotomy', 'active'),
(57, 'Amazon', 'active');

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
-- Table structure for table `emp_reporting_manager`
--

CREATE TABLE `emp_reporting_manager` (
  `reporting_mngr_name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_reporting_manager`
--

INSERT INTO `emp_reporting_manager` (`reporting_mngr_name`, `id`, `status`) VALUES
('Prateek_Kumar_Solanki', 1, 'active'),
('Siol_Singhai', 2, 'active'),
('Kaushalendra_Pandey', 3, 'active'),
('Haritima_Paliwal', 4, 'active'),
('Shailendra_Singh', 5, 'active'),
('Gurpreet_Singh', 6, 'active'),
('Swati_Rawat', 7, 'active'),
('Pawan_Singh', 8, 'active'),
('Vishal_Kathiriya', 9, 'active'),
('Ninad_Dabir', 10, 'active'),
('Himanshu_Joshi', 11, 'active'),
('Deepak_Meena', 12, 'active'),
('Pawan_Singh_Tomar', 13, 'active'),
('Amith_Mascarenhas', 14, 'active'),
('Deepak_Sharma', 15, 'active'),
('Dinesh_Duseja', 16, 'active'),
('Sivaraman_Ganesan', 17, 'active'),
('Subir_Nigam', 18, 'active'),
('Shaitalee_Vengurlekar', 19, 'active');

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
-- Table structure for table `project_account_owner`
--

CREATE TABLE `project_account_owner` (
  `account_owner_name` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD KEY `reporting_mngr_name` (`reporting_mngr_name`),
  ADD KEY `account_owner_name` (`account_owner_name`),
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
-- Indexes for table `emp_reporting_manager`
--
ALTER TABLE `emp_reporting_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_workplace_status`
--
ALTER TABLE `emp_workplace_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_account_owner`
--
ALTER TABLE `project_account_owner`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `emp_project`
--
ALTER TABLE `emp_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
  ADD CONSTRAINT `emp_ibfk_1` FOREIGN KEY (`reporting_mngr_name`) REFERENCES `emp_reporting_manager` (`id`),
  ADD CONSTRAINT `emp_ibfk_2` FOREIGN KEY (`account_owner_name`) REFERENCES `project_account_owner` (`id`),
  ADD CONSTRAINT `emp_ibfk_3` FOREIGN KEY (`emp_designation`) REFERENCES `emp_designation` (`id`),
  ADD CONSTRAINT `emp_ibfk_4` FOREIGN KEY (`emp_department`) REFERENCES `emp_department` (`id`),
  ADD CONSTRAINT `emp_ibfk_5` FOREIGN KEY (`emp_project`) REFERENCES `emp_project` (`id`),
  ADD CONSTRAINT `emp_ibfk_6` FOREIGN KEY (`emp_project_status`) REFERENCES `emp_project_status` (`id`),
  ADD CONSTRAINT `emp_ibfk_7` FOREIGN KEY (`emp_company_status`) REFERENCES `emp_company_status` (`id`),
  ADD CONSTRAINT `emp_ibfk_8` FOREIGN KEY (`emp_workplace_status`) REFERENCES `emp_workplace_status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
