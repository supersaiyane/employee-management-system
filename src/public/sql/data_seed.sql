--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`) VALUES
(1, 'testuser', '$2b$10$17bAuRB2Gi9EpsCKwe8qwu1Ai88a/fYAmTySPYBGzbCfTIA/RiFO2', 'admin', 'active');

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

--
-- Dumping data for table `emp_company_status`
--

INSERT INTO `emp_company_status` (`id`, `emp_company_status`) VALUES
(1, 'Working'),
(2, 'Resigned');


--
-- Dumping data for table `emp_workplace_status`
--

INSERT INTO `emp_workplace_status` (`id`, `emp_workplace_status`) VALUES
(1, 'WFH'),
(2, 'Hybrid'),
(3, 'Local Office');
