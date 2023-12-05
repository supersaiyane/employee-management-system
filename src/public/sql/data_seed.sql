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


INSERT INTO emp_project (emp_project, status) VALUES
('Boyle_Sports', 'active'),
('CreditOne_Bank', 'active'),
('Everi_Central_Credit_(Dev)', 'active'),
('Everi_Central_Credit_(QA)', 'active'),
('Everi_Flash_Legacy_Promo_Enroll_QA', 'active'),
('Everi_Kiosk_Porting_Dev', 'active'),
('Everi_Kiosk_Porting_QA', 'active'),
('Everi_Loyalty_Mobile', 'active'),
('Everi_Promo_Games_QA', 'active'),
('Harley_Davidson', 'active'),
('HGV', 'active'),
('HGV_MS:Chorus', 'active'),
('HGV_MS:Clarity', 'active'),
('HGV_MS:Middleware', 'active'),
('HGV_MS:Voice', 'active'),
('Internal_Vertisystem', 'active'),
('Kofile', 'active'),
('NDC', 'active'),
('Nevada_Hearts_and_Vascular', 'active'),
('OKTA', 'active'),
('Paxton_And_Hollyhock', 'active'),
('Paxton_And_Hollyhock_II', 'active'),
('PF_2.0_Support', 'active'),
('PF_2.0_Support_Call Center', 'active'),
('PF_2.0_Support_Dev', 'active'),
('PF_Quickbase', 'active'),
('ProjectsForce_2.0', 'active'),
('ProjectsForce_2.0_Intern', 'active'),
('Python_AI_Lab','active'),
('Reimer','active'),
('Sally_Holdings_LLC','active'),
('Sparkz_Dev_LLC','active'),
('Stanford_Health_Care','active'),
('Symtrain','active'),
('Thalia','active'),
('XYPRO_Technology_Corporation','active'),
('YATS_Shared_Support','active'),
('Acceleration_Point','active'),
('Advanta_AMR','active'),
('Advanta_Phlebotomy','active'),
('Amazon','active');



INSERT INTO emp_reporting_manager (id,reporting_mngr_name, status) VALUES
('1','Prateek_Kumar_Solanki','active'),
('2','Siol_Singhai','active'),
('3','Kaushalendra_Pandey','active'),
('4','Haritima_Paliwal','active'),
('5','Shailendra_Singh','active'),
('6','Gurpreet_Singh','active'),
('7','Swati_Rawat','active'),
('8','Pawan_Singh','active'),
('9','Vishal_Kathiriya','active'),
('10','Ninad_Dabir','active'),
('11','Himanshu_Joshi','active'),
('12','Deepak_Meena','active'),
('13','Pawan_Singh_Tomar','active'),
('14','Amith_Mascarenhas','active'),
('15','Deepak_Sharma','active'),
('16','Dinesh_Duseja','active'),
('17','Sivaraman_Ganesan','active'),
('18','Subir_Nigam','active'),
('19',('Shaitalee_Vengurlekar','active')



INSERT INTO emp_designation (emp_designation) VALUES
('PowerBI'),
('Senior_Business_Analyst'),
('UX_Designer'),
('Lead_Engineer'),
('Software_Engineer'),
('Technical_Lead'),
('Technical_Project_Manager'),
('Data_Science_Consultant'),
('QA_Trainee'),
('Scrum_Master'),
('Frontend_Developer'),
('Graduate_Engineer_Trainee'),
('QA_Engineer'),
('Software_Consultant'),
('Trainee_PM_Coordinator_Scrum'),
('Senior_Software_Engineer'),
('Data_Analyst'),
('Associate_QA_Engineer'),
('Intern_DevOps'),
('Intern_QA'),
('DevOps_Engineer'),
('QA_Lead_Scrum'),
('QA_Consultant'),
('Technical_Delivery_Manager'),
('Associate_Software_Engineer'),
('Business_Analyst'),
('Associate_Software_Engineer'),
('Module_Lead'),
('Senior_QA_Engineer'),
('Technical_Manager'),
('Trainee_Reactjs'),
('Trainee_QA'),
('Assistant_Vice_President'),
('Delivery_Head-India'),
('Sharepoint_Developer'),
('Software_Trainee_(Intern)'),
('Full_Stack_Application_Developer'),
('Data_Engineer_Consultant'),
('QA_Manager'),
('Pre_Sales_Cloud'),
('Full_Stack_Developer'),
('Architect'),
('DBA_Consultant'),
('Manager_Corporate_Strategy'),
('Project_Manager_UX_Scrum'),
('React_Native_Mobile_Developer'),
('Senior_Analyst'),
('Student_Intern'),
('Senior_Python_Developer'),
('Senior_Network_Engineer'),
('Telecom_Engineer'),
('Assistant_Manager_QA_Automation'),
('UI_UX_Designer'),
('IT_Support')
