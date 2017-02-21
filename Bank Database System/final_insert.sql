
/*
Branch_Master
*/
INSERT INTO `branch_mstr` (`branch_no`,`branch_name`,`branch_opening_date`,`IFSC_code`,`MICR_number`) VALUES ('B1','Vile Parle','1994-02-05','BKID0000046','400013055');
INSERT INTO `branch_mstr` (`branch_no`,`branch_name`,`branch_opening_date`,`IFSC_code`,`MICR_number`) VALUES ('B2','Churchgate','1997-04-08','BKID0000010','400013014');
INSERT INTO `branch_mstr` (`branch_no`,`branch_name`,`branch_opening_date`,`IFSC_code`,`MICR_number`) VALUES ('B3','Borivali','2001-07-09','BKID0000051','400013006');
INSERT INTO `branch_mstr` (`branch_no`,`branch_name`,`branch_opening_date`,`IFSC_code`,`MICR_number`) VALUES ('B4','Andheri','2002-03-01','BKID0000128','400013126');
INSERT INTO `branch_mstr` (`branch_no`,`branch_name`,`branch_opening_date`,`IFSC_code`,`MICR_number`) VALUES ('B5','Mahim','2004-01-11','BKID0000030','400013035');
INSERT INTO `branch_mstr` (`branch_no`,`branch_name`,`branch_opening_date`,`IFSC_code`,`MICR_number`) VALUES ('B6','Darya Ganj','2005-05-03','BKID0000056','400013018');


/*
Employee Master
*/
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E1','B1','Ivan','Nelson','Bayross','Adminstration','Manager',NULL);
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E10','B3','Anjali','Sameer','Pathak','Loans And Financing','Finance Assistance','E9');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E11','B3','Nirav','Alpha','Akbari','Client Servicing','Clerk','E9');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E12','B3','Jay','Beta','Joshi','Marketing','Sales Assitance','E9');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E13','B4','Harsh','Gamma','Mehta','Adminstration','Manager',NULL);
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E14','B4','Abhishek','A.','Kadivar','Loans And Financing','Finance Assistance','E13');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E15','B4','Dipen','Mukesh','Kanjiya','Client Servicing','Clerk','E13');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E16','B4','Jay','Ramesh','Shah','Marketing','Sales Assitance','E13');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E17','B5','Nirav','Suresh','Shah','Adminstration','Manager',NULL);
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E18','B5','Mihir','Chirag','Gajjar','Loans And Financing','Finance Assistance','E17');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E19','B5','Vidit','Jayesh','Shah','Client Servicing','Clerk','E17');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E2','B1','Amit',NULL,'Desai','Loans And Financing','Finance Assistance','E1');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E20','B5','Nand','B.','Parikh','Marketing','Sales Assitance','E17');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E21','B6','Ram','Gajanand','Patel','Adminstration','Manager',NULL);
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E22','B6','Hardil','Dhaval','Patel','Loans And Financing','Finance Assistance','E21');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E23','B6','Harsh','C.','Joshi','Client Servicing','Clerk','E21');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E24','B6','Jaynil','Mukesh','Jayant','Marketing','Sales Assitance','E21');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E3','B1','Maya','Mahima ','Joshi','Client Servicing','Clerk','E1');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E4','B1','Peter','Iyer ','Jospeh','Marketing','Sales Assitance','E1');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E5','B2','Mandhar','Dilip','Dalvi','Adminstration','Manager',NULL);
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E6','B2','Sonal','Abdul','Khan','Loans And Financing','Finance Assistance','E5');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E7','B2','Anil','Ashutosh','Kambli','Client Servicing','Clerk','E5');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E8','B2','Seema','P.','Apte','Marketing','Sales Assitance','E5');
INSERT INTO `employee_mstr` (`employee_no`,`branch_no`,`fname`,`mname`,`lname`,`dept`,`desig`,`mngr_no`) VALUES ('E9','B3','Vikram','Vlas ','Randive','Adminstration','Manager',NULL);


/*
Customer Master
*/
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C1', 'Peter', 'Randy', 'Scott', '1981-07-21', 'M', 'VP Quality Control', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C2', 'Deborah', 'Thomas', 'Harris', '1964-05-20', 'F', 'Mechanical Systems Engineer', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C3', 'Robert', 'Nicholas', 'Hicks', '1971-11-14', 'M', 'Assistant Manager', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C4', 'Anne', 'Shawn', 'Thomas', '1980-02-14', 'F', 'Research Assistant III', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C5', 'Robin', 'Jonathan', 'Harrison', '1962-04-24', 'F', 'Professor', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C6', 'Harry', 'Peter', 'Owens', '1975-05-02', 'M', 'Operator', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C7', 'Gloria', 'Russell', 'Matthews', '1971-04-11', 'F', 'Geological Engineer', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C8', 'Benjamin', 'Edward', 'Bishop', '1968-07-17', 'M', 'Analog Circuit Design manager', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C9', 'Anna', 'Jesse', 'Ramos', '1979-07-08', 'F', 'Account Coordinator', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C10', 'Jerry', 'Kevin', 'Rivera', '1986-02-18', 'M', 'Geologist III', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C11', 'Steven', 'Todd', 'Austin', '1983-08-14', 'M', 'Media Manager IV', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C12', 'Rose', 'George', 'Fernandez', '1962-02-23', 'F', 'Help Desk Operator', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C13', 'Marilyn', 'Gerald', 'Ortiz', '1967-05-06', 'F', 'Professor', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C14', 'John', 'Jerry', 'Patterson', '1981-04-20', 'M', 'Actuary', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C15', 'Beverly', 'Sean', 'Romero', '1966-11-10', 'F', 'Nurse Practicioner', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C16', 'Christopher', 'Chris', 'Garrett', '1980-02-24', 'M', 'Financial Advisor', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C17', 'Gary', 'Clarence', 'Jackson', '1977-07-05', 'M', 'VP Quality Control', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C18', 'Kenneth', 'Randy', 'Ramos', '1966-08-29', 'M', 'Compensation Analyst', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C19', 'Kimberly', 'Jeffrey', 'Torres', '1981-01-13', 'F', 'Assistant Manager', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C20', 'Scott', 'Jose', 'Scott', '1963-10-22', 'M', 'Librarian', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C21', 'Barbara', 'Willie', 'Knight', '1971-05-03', 'F', 'Nurse Practicioner', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C22', 'Doris', 'Larry', 'Sims', '1964-05-15', 'F', 'Information Systems Manager', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C23', 'Ashley', 'Jose', 'Day', '1968-07-27', 'F', 'Senior Financial Analyst', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C24', 'Matthew', 'Douglas', 'Morris', '1967-03-10', 'M', 'Product Engineer', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C25', 'Lisa', 'Billy', 'Burns', '1987-02-17', 'F', 'Assistant Media Planner', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C26', 'Sarah', 'David', 'Montgomery', '1985-03-12', 'F', 'Sales Representative', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C27', 'Ann', 'Craig', 'Morales', '1989-06-17', 'F', 'Speech Pathologist', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C28', 'Albert', 'Kevin', 'Smith', '1963-01-20', 'M', 'VP Quality Control', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C29', 'Joyce', 'Chris', 'Little', '1980-02-23', 'F', 'Project Manager', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C30', 'Rachel', 'Frank', 'Fields', '1988-04-27', 'F', 'Database Administrator III', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C31', 'Cynthia', 'Henry', 'Black', '1982-05-08', 'F', 'Sales Associate', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C32', 'Mark', 'Jesse', 'Hawkins', '1968-06-01', 'M', 'Business Systems Development Analyst', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C33', 'Kimberly', 'James', 'Berry', '1978-02-17', 'F', 'Product Engineer', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C34', 'Sandra', 'Jack', 'Crawford', '1973-10-17', 'F', 'Operator', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C35', 'Joseph', 'Keith', 'Watson', '1988-12-22', 'M', 'Research Associate', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C36', 'Marie', 'Robert', 'Holmes', '1982-01-05', 'F', 'Human Resources Assistant IV', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C37', 'Marie', 'Patrick', 'Andrews', '1981-05-31', 'F', 'Human Resources Manager', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C38', 'Ashley', 'Roger', 'Wood', '1964-09-09', 'F', 'Office Assistant I', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C39', 'Pamela', 'Jeremy', 'Ortiz', '1979-09-17', 'F', 'Biostatistician IV', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C40', 'Shawn', 'Jeffrey', 'Owens', '1987-03-05', 'M', 'Quality Control Specialist', 'Y', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C41', 'Larry', 'Edward', 'Anderson', '1982-01-07', 'M', 'Legal Assistant', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C42', 'Julia', 'Dennis', 'Price', '1986-07-20', 'F', 'Assistant Media Planner', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C43', 'Evelyn', 'Aaron', 'Carter', '1971-12-12', 'F', 'Programmer Analyst IV', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C44', 'Peter', 'James', 'Shaw', '1961-10-30', 'M', 'Research Associate', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C45', 'Frances', 'Brandon', 'Taylor', '1967-07-23', 'F', 'Health Coach IV', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C46', 'Ronald', 'Donald', 'Hunt', '1986-02-24', 'M', 'Administrative Officer', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C47', 'Ruth', 'Gregory', 'Willis', '1961-04-22', 'F', 'Administrative Officer', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C48', 'Katherine', 'Willie', 'Ryan', '1978-09-09', 'F', 'Compensation Analyst', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C49', 'Steve', 'Edward', 'Burton', '1970-02-02', 'M', 'Social Worker', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C50', 'Jean', 'Bruce', 'Ramos', '1965-02-24', 'F', 'Electrical Engineer', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C51', 'Tammy', 'Charles', 'Clark', '1964-07-28', 'F', 'Nurse', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C52', 'Heather', 'Todd', 'Ruiz', '1979-08-11', 'F', 'Nurse', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C53', 'Steve', 'Eric', 'Reid', '1965-03-05', 'M', 'Web Designer III', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C54', 'Deborah', 'Peter', 'Robinson', '1986-08-25', 'F', 'Environmental Tech', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C55', 'Billy', 'Todd', 'Nelson', '1971-02-26', 'M', 'Geologist IV', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C56', 'Betty', 'Mark', 'Gonzalez', '1985-04-23', 'F', 'Nurse Practicioner', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C57', 'Tammy', 'Dennis', 'Crawford', '1977-04-25', 'F', 'Pharmacist', 'N', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C58', 'Deborah', 'Joshua', 'James', '1986-10-04', 'F', 'Director of Sales', 'N', 'N');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C59', 'Lillian', 'Robert', 'White', '1961-07-16', 'F', 'Analyst Programmer', 'Y', 'Y');
insert into customer_mstr (customer_no, fname, mname, lname, dob_inc, gender, occup, pancopy, form60) values ('C60', 'Heather', 'Peter', 'Turner', '1963-10-19', 'F', 'Dental Hygienist', 'Y', 'N');


/*
Support Docs
*/
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('0S','Individuals/Saving Acc','Driving License/Ration Card/Passport/Birth Cert');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('1C','Propriety/Sole Trading','Letter From The Propreity');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('2C','Partership Concerns','Letter From The Partners/Reg Cert/Part Deed');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('3C','Hindu Unidivided Family','Letter From Karta/List Of Members');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('4C','Limited Companies','Cert Of Incorporation And Commencement Of Buisness/Reg Of Cert');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('5C','Trust Accounts','Trust Deed,Resolution Of Trustees,List Of Trustees');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('6C','Clubs/Societies','Resolution,Cert Of Reg,Constitution And Bye Laws');
INSERT INTO `support_docs` (`account_code`,`type`,`docs`) VALUES ('7C','Legislative Bodies','Letter From The Authority');


/*
Account Master
*/
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB1', 'B6', 'C22', 'SB22', 'SB', 'SI', '6C', 'Thoughtstorm', 'C1', '2014-12-02', '2014-12-05', 50672.08, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB2', 'B6', 'C27', 'CA27', 'SB', 'ES', '5C', 'Oyondu', 'C2', '2004-08-19', '2004-08-11', 42924.14, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA3', 'B1', 'C36', 'CA36', 'CA', 'AS', '6C', 'Rhynoodle', 'C3', '2012-11-09', '2012-11-11', 74591.0, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA4', 'B2', 'C58', 'SB58', 'CA', 'SI', '5C', 'Oyondu', 'C4', '2015-05-02', '2015-05-12', 49041.0, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA5', 'B6', 'C60', 'SB5', 'CA', 'AS', '5C', 'Voonder', 'C5', '2009-05-17', '2009-05-27', 73097.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB6', 'B6', 'C15', 'CA15', 'SB', 'JO', '5C', 'Yodoo', 'C6', '2014-12-22', '2014-12-31', 84230.0, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB7', 'B2', 'C55', 'SB55', 'SB', 'AS', '6C', 'Yacero', 'C7', '1994-11-24', '1994-11-25', 5701.08, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA8', 'B6', 'C16', 'CA16', 'CA', 'AS', '3C', 'Photofeed', 'C8', '1995-02-01', '1995-02-07', 6152.46, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB9', 'B6', 'C20', 'SB20', 'SB', 'AS', '5C', 'Jabberbean', 'C9', '2008-10-14', '2008-10-18', 184199.71, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA10', 'B3', 'C58', 'SB58', 'CA', 'AS', '6C', 'Shufflester', 'C10', '1997-07-11', '1997-07-18', 34232.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA11', 'B6', 'C54', 'SB54', 'CA', 'ES', '6C', 'Demivee', 'C11', '1996-07-17', '1996-07-19', 1227.92, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB12', 'B4', 'C35', 'SB35', 'SB', 'AS', '6C', 'Midel', 'C12', '1998-08-18', '1998-08-21', 78122.92, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA13', 'B2', 'C55', 'SB55', 'CA', 'ES', '6C', 'Bluejam', 'C13', '2006-05-19', '2006-05-22', 47850.09, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA14', 'B5', 'C47', 'SB47', 'CA', 'AS', '1C', 'Miboo', 'C14', '2005-03-21', '2005-03-23', 94656.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA15', 'B4', 'C44', 'SB44', 'CA', 'AS', '6C', 'Voonder', 'C15', '1999-04-27', '1999-04-29', 3241.94, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA16', 'B5', 'C26', 'SB26', 'CA', 'ES', '5C', 'Oyonder', 'C16', '2002-02-04', '2002-02-11', 51906.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA17', 'B6', 'C10', 'CA10', 'CA', 'SI', '0C', 'Meembee', 'C17', '2013-04-22', '2013-04-26', 61661.66, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA18', 'B1', 'C09', 'SB9', 'CA', 'SI', '5C', 'Layo', 'C18', '2007-05-24', '2007-05-27', 53328.28, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA19', 'B1', 'C01', 'SB1', 'CA', 'SI', '6C', 'Aimbo', 'C19', '2005-08-07', '2005-08-11', 26637.87, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB20', 'B6', 'C04', 'CA4', 'SB', 'ES', '6C', 'Fadeo', 'C20', '1996-02-01', '1996-02-03', 5634.48, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB21', 'B6', 'C13', 'CA13', 'SB', 'SI', '0C', 'Skyble', 'C21', '2012-05-19', '2012-05-21', 32773.31, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB22', 'B5', 'C60', 'CA60', 'SB', 'SI', '6C', 'Twinder', 'C22', '2007-02-03', '2007-02-06', 54545.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB23', 'B1', 'C58', 'SB58', 'SB', 'AS', '6C', 'Avavee', 'C23', '2011-11-08', '2011-11-10', 7207.86, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA24', 'B5', 'C27', 'CA27', 'CA', 'AS', '6C', 'Eamia', 'C24', '2002-12-25', '2002-12-27', 0345.68, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA25', 'B6', 'C01', 'SB1', 'CA', 'ES', '2C', 'Skidoo', 'C25', '1994-07-01', '1994-07-03', 86011.69, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB26', 'B3', 'C20', 'SB20', 'SB', 'AS', '6C', 'Skipstorm', 'C26', '2015-09-13', '2015-09-15', 65277.0, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA27', 'B2', 'C09', 'SB9', 'CA', 'AS', '5C', 'Eadel', 'C27', '2001-02-12', '2001-02-15', 6782.4, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA28', 'B6', 'C17', 'CA17', 'CA', 'JO', '1C', 'Gigashots', 'C28', '2013-04-27', '2013-04-30', 24932.52, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA29', 'B5', 'C24', 'CA24', 'CA', 'AS', '6C', 'Dynabox', 'C29', '2001-07-31', '2001-08-01', 18941.59, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA30', 'B4', 'C29', 'CA29', 'CA', 'ES', '5C', 'Realmix', 'C30', '2010-01-31', '2010-02-03', 33299.04, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA31', 'B2', 'C54', 'SB54', 'CA', 'ES', '0C', 'Topiczoom', 'C31', '2012-10-18', '2012-10-19', 80769.37, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA32', 'B4', 'C14', 'CA14', 'CA', 'AS', '3C', 'Dabfeed', 'C32', '2000-12-22', '2000-12-25', 38943.79, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA33', 'B1', 'C06', 'SB6', 'CA', 'ES', '5C', 'Oyoloo', 'C33', '2004-06-19', '2004-06-22', 42550.36, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA34', 'B5', 'C43', 'CA43', 'CA', 'AS', '2C', 'Innojam', 'C34', '2003-05-03', '2003-05-07', 47382.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB35', 'B1', 'C08', 'CA8', 'SB', 'JO', '6C', 'Skiba', 'C35', '2007-01-19', '2007-01-21', 11276.36, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA36', 'B2', 'C02', 'SB2', 'CA', 'SI', '6C', 'Kazu', 'C36', '2013-09-21', '2013-09-22', 97999.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA37', 'B6', 'C05', 'CA5', 'CA', 'AS', '1C', 'Flipopia', 'C37', '1996-08-10', '1996-08-15', 68147.93, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB38', 'B5', 'C17', 'CA17', 'SB', 'ES', '5C', 'Wikizz', 'C38', '2010-03-06', '2010-03-09', 77692.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA39', 'B5', 'C40', 'CA40', 'CA', 'AS', '5C', 'Rhynoodle', 'C39', '2001-04-29', '2001-04-30', 56694.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA40', 'B2', 'C42', 'CA42', 'CA', 'AS', '6C', 'Thoughtbridge', 'C40', '2006-12-25', '2006-12-28', 2288.09, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB41', 'B6', 'C60', 'CA60', 'SB', 'ES', '0C', 'Yabox', 'C41', '1994-10-22', '1994-10-26', 9771.48, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA42', 'B6', 'C27', 'CA27', 'CA', 'JO', '6C', 'Blogtag', 'C42', '2011-10-08', '2011-10-12', 83488.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA43', 'B5', 'C57', 'SB57', 'CA', 'JO', '1C', 'Mybuzz', 'C43', '2005-02-23', '2005-02-26', 50495.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB44', 'B1', 'C42', 'CA42', 'SB', 'JO', '1C', 'Buzzbean', 'C44', '2004-03-01', '2004-03-07', 96911.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA45', 'B5', 'C15', 'CA15', 'CA', 'SI', '6C', 'Meejo', 'C45', '1998-08-05', '1998-08-08', 70165.97, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB46', 'B6', 'C43', 'CA43', 'SB', 'ES', '6C', 'Wikido', 'C46', '2006-11-26', '2006-11-28', 78201.35, 'A');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB47', 'B3', 'C21', 'SB21', 'SB', 'AS', '5C', 'Oodoo', 'C47', '2006-12-24', '2006-12-28', 48991.98, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA48', 'B2', 'C15', 'CA15', 'CA', 'AS', '4C', 'Voolith', 'C48', '2002-11-27', '2002-11-29', 80666.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA49', 'B6', 'C17', 'CA17', 'CA', 'AS', '5C', 'Youspan', 'C49', '2002-06-24', '2002-06-29', 7590.63, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB50', 'B3', 'C48', 'CA48', 'SB', 'ES', '5C', 'Skyvu', 'C50', '2011-10-03', '2011-10-07', 40933.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB51', 'B6', 'C44', 'SB44', 'SB', 'AS', '6C', 'Jayo', 'C51', '2000-08-24', '2000-08-26', 40220.51, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB52', 'B6', 'C26', 'SB26', 'SB', 'ES', '5C', 'Centizu', 'C52', '1999-01-06', '1999-01-08', 86324.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA53', 'B1', 'C50', 'CA9', 'CA', 'ES', '6C', 'Yata', 'C53', '1996-02-01', '1996-02-08', 63939.0, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB54', 'B5', 'C08', 'SB50', 'SB', 'AS', '4C', 'Devshare', 'C54', '2006-09-12', '2006-09-13', 71580.0, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB55', 'B1', 'C17', 'CA17', 'SB', 'ES', '2C', 'Pixoboo', 'C55', '2004-03-18', '2004-03-19', 58087.01, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB56', 'B6', 'C12', 'SB12', 'SB', 'JO', '5C', 'Ntags', 'C56', '2007-11-05', '2007-11-05', 22818.96, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB57', 'B1', 'C29', 'CA29', 'SB', 'AS', '6C', 'Eazzy', 'C57', '2010-12-20', '2010-12-21', 59728.35, 'S');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('SB58', 'B6', 'C43', 'SB43', 'SB', 'AS', '6C', 'Viva', 'C58', '1997-03-17', '1997-03-18', 76207.25, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA59', 'B2', 'C24', 'CA24', 'CA', 'JO', '5C', 'Fanoodle', 'C59', '2002-06-27', '2002-06-27', 7095.02, 'T');
insert into account_mstr ( account_no, branch_no, intro_cust_no, intro_acc_no, type, opr_mode, cur_acc_type, title, corp_cust_no, app_dt, open_dt, cur_bal, status) values ('CA60', 'B1', 'C54', 'SB54', 'CA', 'AS', '5C', 'Abatz', 'C60', '1998-12-06', '1998-12-11', 79102.0, 'T');



/*
fd Master
*/
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('1','B6','C22','SB22','SB1','Thoughtstorm','C1','6C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('2','B2','C58','SB58','CA4','Oyondu','C4','5C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('3','B3','C58','SB58','CA10','Sufflester','C10','6C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('4','B4','C35','SB35','SB12','Midel','C12','6C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('5','B1','C01','SB1','CA19','Aimbo','C19','6C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('6','B5','C60','CA60','SB22','Twinder','C22','6C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('7','B1','C42','CA42','SB44','Buzzbean','C44','1C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('8','B2','C15','CA15','CA48','Voolith','C48','4C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('9','B3','C48','CA48','SB50','Skyvu','C50','5C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('10','B4','C29','CA29','CA30','Realmix','C30','5C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('11','B5','C15','CA15','CA45','Meejo','C45','6C');
INSERT INTO `fd_mstr` (`fd_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('12 ','B6','C12','SB12','SB56','NTags','C56','5C');


/*
fdslabmaster
*/
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (1,1,30,5.00);
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (2,31,92,5.50);
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (3,93,183,6.00);
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (4,184,365,6.50);
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (5,366,731,7.50);
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (6,732,1097,8.50);
INSERT INTO `fdslab_mstr` (`fdslab_no`,`min_period`,`max_period`,`interest_rate`) VALUES (7,1098,1829,10.00);


/*
fd details
*/
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('1','FD1','S','SB1',365,'2016-04-02','2017-04-01',15000.00,16050.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('10','FD10','S','CA30',365,'2016-04-15','2017-04-14',10000.00,10802.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('11','FD11','S','CA45',365,'2016-05-19','2017-05-18',10000.00,10802.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('12','FD12','S','SB56',365,'2016-04-02','2017-04-01',2000.00,2060.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('1','FD13','S','SB1',365,'2004-01-02','2005-01-01',5000.00,5900.00,5,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('2','FD14','S','CA4',365,'2004-01-02','2005-01-01',15000.00,16020.00,5,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('3','FD15','S','CA10',183,'2004-03-25','2004-08-24',1000.00,1040.00,4,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('4','FD16','S','SB12',732,'2004-03-25','2006-08-25',10000.00,10802.00,6,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('5','FD17','S','CA19',365,'2004-01-02','2005-01-01',2000.00,2060.00,5,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('6','FD18','S','SB22',365,'2004-01-02','2005-01-01',2000.00,2060.00,5,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('7','FD19','S','SB44',732,'2003-04-02','2004-04-01',10000.00,10802.00,6,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('2','FD2','S','CA4',365,'2016-01-02','2017-01-01',5000.00,5350.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('8','FD20','S','CA48',365,'2004-05-19','2005-05-18',15000.00,16050.00,5,'A','N');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('3','FD3','S','CA10',365,'2016-03-25','2017-03-24',10000.00,10802.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('4','FD4','S','SB12',365,'2016-04-15','2017-04-14',10000.00,10802.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('5','FD5','S','CA19',365,'2016-05-19','2017-05-18',2000.00,2060.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('6','FD6','S','SB22',183,'2016-04-24','2017-10-24',5000.00,5902.00,4,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('7','FD7','S','SB44',732,'2016-04-02','2017-04-20',15000.00,16050.00,6,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('8','FD8','S','CA48',365,'2016-01-02','2017-01-01',15000.00,16050.00,5,'A','Y');
INSERT INTO `fd_detail` (`fd_ser_no`,`fd_no`,`type`,`payto_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`fdslab_no`,`status`,`auto_renewal`) VALUES ('9','FD9','S','SB50',365,'2016-04-02','2017-04-01',5000.00,5900.00,5,'A','Y');


/*
nominee master
*/
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ('N1', 'FD15', 'Donna', '1990-09-29', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N2', 'FD3', 'Karen', '1983-07-31', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N3', 'FD11', 'Mary', '1989-10-25', 'Daughter');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N4', 'FD12', 'Jane', '1962-12-14', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N5', 'SB1', 'Norma', '1963-01-09', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N6', 'CA31', 'Paula', '1985-08-12', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N7', 'SB6', 'Mildred', '1981-09-10', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N8', 'CA13', 'Irene', '1970-11-10', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N9', 'SB9', 'David', '1989-09-21', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N10', 'FD1', 'Wanda', '1968-01-13', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N11', 'FD2', 'Louis', '1982-04-13', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N12', 'FD7', 'Eric', '1973-02-22', 'Daughter');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N13', 'FD9', 'Martin', '1977-01-26', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N14', 'CA33', 'Harry', '1966-07-17', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N15', 'FD19', 'Matthew', '1982-05-07', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N16', 'SB26', 'Brenda', '1966-01-08', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N17', 'FD20', 'Lisa', '1982-05-12', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N18', 'FD10', 'Shirley', '1967-05-05', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N19', 'CA31', 'Aaron', '1968-06-24', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N20', 'CA34', 'Mildred', '1992-06-19', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N21', 'SB38', 'Frank', '1975-08-29', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N22', 'CA37', 'Joan', '1970-10-30', 'Colleague');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N23', 'SB56', 'Willie', '1977-06-24', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N24', 'FD02', 'Stephanie', '1981-08-15', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N25', 'SB50', 'Laura', '1980-06-13', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N26', 'CA45', 'Mark', '1963-03-09', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N27', 'CA59', 'Teresa', '1987-10-10', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N28', 'SB57', 'Betty', '1994-12-12', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N29', 'CA60', 'Susan', '1966-04-26', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N30', 'FD16', 'Todd', '1962-12-25', 'Daughter');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N31', 'CA36', 'Wayne', '1982-01-28', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N32', 'FD8', 'Paul', '1977-01-23', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N33', 'FS1', 'Lillian', '1989-11-30', 'Daughter');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N34', 'FD11', 'Kathryn', '1960-06-05', 'Daughter');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N35', 'CA43', 'Heather', '1962-02-07', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N36', 'FD13', 'Gregory', '1975-09-27', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N37', 'CA14', 'Stephanie', '1989-08-07', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N38', 'CA15', 'Wanda', '1972-04-19', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N39', 'CA16', 'Gloria', '1963-12-22', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N40', 'CA17', 'Wanda', '1994-01-11', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N41', 'CA18', 'Victor', '1977-06-12', 'mother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N42', 'CA19', 'George', '1965-08-15', 'friend');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N43', 'CA28', 'Eric', '1971-11-13', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N44', 'SB22', 'William', '1989-02-02', 'Colleague');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N45', 'SB26', 'Scott', '1962-10-21', 'Wife');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N46', 'FD4', 'Carl', '1971-12-17', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N47', 'SB12', 'Jerry', '1964-02-07', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N48', 'CA8', 'Adam', '1986-08-05', 'Niece');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N49', 'CA5', 'Russell', '1971-07-07', 'brother');
insert into Nominee_Mstr ( nominee_no, acc_fd_no, name, dob, realationship) values ( 'N50', 'SB12', 'Benjamin', '1967-07-27', 'Daughter');


/*
address master
*/
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400001','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400002','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400003','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400004','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400005','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400006','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400007','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400008','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400009','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400010','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400011','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400012','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400013','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400014','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400015','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400016','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400017','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400018','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400019','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400020','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400021','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400022','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400024','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400025','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400026','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400027','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400028','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400029','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400030','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400031','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400032','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400033','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400034','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400035','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400037','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400042','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400043','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400049','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400050','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400051','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400052','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400053','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400054','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400055','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400056','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400057','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400058','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400059','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400060','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400061','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400063','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400064','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400065','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400066','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400067','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400068','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400069','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400070','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400071','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400072','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400074','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400075','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400076','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400077','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400078','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400079','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400080','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400081','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400082','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400083','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400084','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400085','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400086','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400087','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400088','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400089','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400091','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400092','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400093','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400094','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400095','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400096','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400097','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400098','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400099','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400101','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400102','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400103','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400104','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400601','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400602','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400603','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400604','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400605','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400606','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400607','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400608','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400610','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400612','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400614','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400615','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400701','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400702','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400703','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400704','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400706','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400707','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400708','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400709','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('400710','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401101','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401102','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401103','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401105','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401106','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401107','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401201','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401202','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401203','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401204','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401206','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401207','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401208','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401209','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401301','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401302','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401303','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401304','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401305','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401401','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401402','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401403','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401404','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401405','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401501','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401502','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401503','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401504','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401506','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401601','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401602','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401603','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401604','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401605','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401606','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401607','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401608','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401609','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401610','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401701','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401702','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('401703','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402101','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402102','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402103','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402104','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402105','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402106','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402107','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402108','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402109','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402110','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402111','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402112','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402113','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402114','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402115','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402116','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402117','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402120','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402122','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402125','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402126','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402201','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402202','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402203','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402204','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402207','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402208','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402209','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402301','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402302','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402303','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402304','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402305','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402306','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402307','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402308','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402309','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402401','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402402','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402403','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('402404','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410101','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410102','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410201','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410202','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410203','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410204','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410205','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410206','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410207','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410208','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410210','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410216','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410218','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410220','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410221','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('410222','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('415213','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421002','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421004','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421005','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421101','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421102','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421103','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421201','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421202','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421203','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421204','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421301','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421302','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421303','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421305','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421306','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421308','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421311','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421312','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421401','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421402','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421403','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421501','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421502','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421503','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421505','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421506','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421601','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421602','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421603','Mumbai','MAHARASHTRA');
INSERT INTO `address_mstr` (`pincode`,`city`,`state`) VALUES ('421605','Mumbai','MAHARASHTRA');


/*
address det
*/
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (1,'B1','B','Westerfield','779 Elgar Court','400037');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (2,'B2','B','Warrior','16645 7th Avenue','400003');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (3,'B3','B','Mcguire','627 Sachtjen Street','400012');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (4,'B4','B','Debra','07118 Express Crossing','400009');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (5,'B5','B','Corben','72 Everett Lane','400033');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (6,'B6','B','Garrison','881 Michigan Pass','400014');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (7,'E1','N','Sage','960 Larry Center','400010');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (8,'E2','C','Nobel','19140 Melody Alley','400031');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (9,'E3','C','Rieder','429 Mosinee Lane','400015');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (10,'E4','C','Fulton','4 Mosinee Circle','400027');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (11,'E5','N','Pond','4 Donald Pass','400029');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (12,'E6','N','Kenwood','0303 Hudson Place','400099');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (13,'E7','N','Hanover','516 Vidon Crossing','400069');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (14,'E8','C','Moose','1 Welch Circle','400053');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (15,'E9','N','Messerschmidt','7782 Novick Crossing','400058');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (16,'E10','C','Goodland','792 Stoughton Hill','400051');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (17,'E11','N','Barnett','17 Hudson Terrace','400050');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (18,'E12','C','Hanson','39251 Kenwood Street','400093');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (19,'E13','N','Granby','635 Armistice Place','400052');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (20,'E14','C','Ludington','07649 Westerfield Park','400057');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (21,'E15','N','Muir','1483 Redwing Road','400056');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (22,'E16','N','Fordem','0107 Fisk Hill','400059');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (23,'E17','N','Autumn Leaf','9 Graedel Circle','400049');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (24,'E18','C','Caliangt','66851 Loomis Center','400061');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (25,'E19','N','Fordem','0895 Mcbride Point','400054');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (26,'E20','C','Calypso','19640 Warner Circle','400055');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (27,'E21','N','Melvin','24993 Kinsman Park','400096');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (28,'E22','N','Lakewood Gardens','861 Oak Parkway','400098');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (29,'E23','C','Eastlawn','66 Carioca Trail','400094');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (30,'E24','N','Shoshone','2 Glacier Hill Way','400085');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (31,'C1','C','Lyons','45735 Melrose Park','400084');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (32,'C2','C','Express','1 Prentice Road','400075');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (33,'C3','C','Amoth','82214 Kenwood Way','400082');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (34,'C4','C','Norway Maple','77 Glacier Hill Plaza','400042');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (35,'C5','C','Hoepker','23253 Sunnyside Hill','400078');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (36,'C6','C','Badeau','04 Summit Park','400074');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (37,'C7','C','Reinke','9 Columbus Circle','400071');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (38,'C8','C','Myrtle','8456 Maywood Alley','400089');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (39,'C9','C','Rockefeller','1454 Novick Alley','400022');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (40,'C10','C','Ronald Regan','98753 Huxley Pass','400043');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (41,'C11','C','Hoffman','6 Graedel Lane','400086');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (42,'C12','C','Rieder','2 Glendale Plaza','400088');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (43,'C13','C','Killdeer','217 Green Ridge Terrace','400083');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (44,'C14','C','Little Fleur','18 Thierer Hill','400070');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (45,'C15','C','Jenna','2 Sunbrook Lane','400019');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (46,'C16','C','Mitchell','45 Tomscot Junction','400081');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (47,'C17','C','Dunning','78944 Hoffman Hill','400080');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (48,'C18','C','Carberry','21125 2nd Road','400024');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (49,'C19','C','Knutson','2 Melvin Point','400087');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (50,'C20','C','Crowley','0 Barby Court','400076');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (51,'C21','C','Mockingbird','6724 American Ash Junction','400079');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (52,'C22','C','Ohio','2 Division Road','400077');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (53,'C23','C','Haas','82233 Debs Plaza','400072');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (54,'C24','C','New Castle','9 Summer Ridge Drive','400065');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (55,'C25','C','Morningstar','7933 Jenifer Terrace','400104');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (56,'C26','C','Oakridge','23404 Nancy Plaza','400066');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (57,'C27','C','New Castle','9166 Anzinger Place','400091');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (58,'C28','C','Oak Valley','65601 Dapin Avenue','400092');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (59,'C29','C','Manitowish','99921 Burrows Plaza','400067');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (60,'C30','C','Golden Leaf','48938 Chinook Plaza','400068');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (61,'C31','C','Di Loreto','8865 Blaine Place','400063');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (62,'C32','C','Butterfield','9891 Ilene Terrace','400095');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (63,'C33','C','Manufacturers','10374 Tennessee Way','400060');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (64,'C34','C','Oxford','7820 Heath Avenue','400102');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (65,'C35','C','Burrows','73534 Loeprich Road','400101');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (66,'C36','C','Crownhardt','56910 High Crossing Hill','400064');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (67,'C37','C','Division','6236 Mcguire Alley','400097');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (68,'C38','C','Bultman','63 Summerview Avenue','400103');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (69,'C39','C','Fisk','959 8th Crossing','400004');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (70,'C40','C','Dawn','01494 Melrose Court','400005');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (71,'C41','C','Harper','33160 Pepper Wood Crossing','400001');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (72,'C42','C','Waxwing','00 Hoard Parkway','400020');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (73,'C43','C','Fairfield','80 Nelson Alley','400032');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (74,'C44','C','Coleman','57659 Canary Terrace','400002');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (75,'C45','C','Nobel','09 Gulseth Terrace','400021');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (76,'C46','C','Little Fleur','93 Derek Hill','400011');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (77,'C47','C','Westridge','8 Butternut Junction','400007');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (78,'C48','C','Jay','61741 Ilene Center','400028');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (79,'C49','C','Bunting','1802 Larry Pass','400030');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (80,'C50','C','Raven','61 Truax Center','400026');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (81,'C51','C','Veith','948 Linden Avenue','400013');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (82,'C52','C','Jana','66954 Muir Drive','400017');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (83,'C53','C','Melody','50 Johnson Road','400008');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (84,'C54','C','Hagan','28 Elmside Drive','400034');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (85,'C55','C','Evergreen','3 Heath Parkway','400016');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (86,'C56','C','Pankratz','6 Kropf Lane','400006');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (87,'C57','C','Cody','00491 Beilfuss Center','400025');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (88,'C58','C','Duke','9945 Gateway Court','400035');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (89,'C59','C','Springview','83 Schlimgen Pass','400018');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (90,'C60','C','Milwaukee','2 Northfield Drive','410206');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (91,'N1','N','West','63999 Kedzie Road','400708');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (92,'N2','N','7th','5440 Jenifer Trail','410221');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (93,'N3','N','Jackson','16132 Susan Road','410201');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (94,'N4','C','Hermina','89 Garrison Crossing','410207');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (95,'N5','N','Harper','36214 Golf View Trail','400614');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (96,'N6','C','Erie','845 Green Ridge Place','400702');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (97,'N7','N','Bunting','36584 Stang Crossing','410101');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (98,'N8','C','West','3402 Forster Circle','400706');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (99,'N9','N','8th','2499 Mallard Court','410208');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (100,'N10','C','Bowman','8033 Summer Ridge Drive','410203');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (101,'N11','C','Ridge Oak','27682 Helena Parkway','400701');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (102,'N12','C','Donald','4368 Rockefeller Alley','410216');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (103,'N13','C','Moulton','62 Utah Park','400707');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (104,'N14','N','Namekagon','8 Homewood Street','400703');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (105,'N15','N','Florence','3656 Superior Point','410218');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (106,'N16','N','Shoshone','44349 Gulseth Street','410202');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (107,'N17','C','Bluejay','9526 Vermont Junction','410210');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (108,'N18','C','Shelley','87811 Bashford Circle','410204');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (109,'N19','C','Vidon','21285 Del Mar Avenue','400709');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (110,'N20','C','Pearson','70734 Milwaukee Road','410102');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (111,'N21','C','Division','071 Elgar Place','410220');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (112,'N22','C','Pawling','88218 Mendota Court','400710');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (113,'N23','C','Shoshone','42389 Chive Pass','410222');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (114,'N24','N','Fairfield','9 Myrtle Parkway','400704');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (115,'N25','C','Buell','8 Valley Edge Circle','402305');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (116,'N26','C','Dapin','87349 Tomscot Way','402303');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (117,'N27','N','Donald','05123 Towne Circle','402403');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (118,'N28','N','Moose','710 Schiller Parkway','402103');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (119,'N29','C','Nova','9147 Acker Trail','402401');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (120,'N30','N','Fulton','3 Kim Trail','402203');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (121,'N31','C','Sauthoff','9119 Waxwing Crossing','402126');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (122,'N32','C','Blackbird','925 Bluejay Trail','402204');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (123,'N33','C','Dexter','96284 Main Circle','402201');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (124,'N34','N','Magdeline','62094 Montana Terrace','402307');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (125,'N35','N','Monument','50 Pankratz Avenue','402107');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (126,'N36','C','Morrow','4 Park Meadow Crossing','402101');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (127,'N37','N','Meadow Valley','1252 Pleasure Road','402301');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (128,'N38','C','Little Fleur','7 International Street','402106');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (129,'N39','C','La Follette','1820 Ruskin Pass','402113');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (130,'N40','C','Crownhardt','66 Mitchell Parkway','402109');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (131,'N41','N','Banding','5 Johnson Road','410205');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (132,'N42','C','Meadow Ridge','1880 American Avenue','402208');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (133,'N43','C','Kim','391 Clove Street','402114');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (134,'N44','N','Amoth','91 Annamark Place','402104');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (135,'N45','N','Randy','84 Lake View Park','402306');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (136,'N46','C','Dawn','4 Meadow Valley Junction','402120');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (137,'N47','N','Saint Paul','74772 Cottonwood Trail','402404');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (138,'N48','C','Northport','03 Bluejay Hill','402302');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (139,'N49','C','Ronald Regan','7 Mcguire Street','402308');
INSERT INTO `address_detail` (`address_no`,`code_no`,`add_type`,`add_1`,`add_2`,`pincode`) VALUES (140,'N50','N','Harbort','7646 Londonderry Parkway','402111');



/*
contact details
*/
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (1,'B1','O','78437574');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (2,'B2','O','78854835');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (3,'B3','O','61780714');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (4,'B4','O','39266960');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (5,'B5','O','21168654');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (6,'B6','O','32670659');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (1,'B1','F','84015875');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (2,'B2','F','16868770');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (3,'B3','F','99785625');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (4,'B4','F','74200570');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (5,'B5','F','39824531');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (6,'B6','F','81001775');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (1,'B1','E','cvasquez0@smh.com.au');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (2,'B2','E','athomas1@delicious.com');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (3,'B3','E','rarnold2@icq.com');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (4,'B4','E','jkelley3@alibaba.com');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (5,'B5','E','mbrooks4@arstechnica.com');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (6,'B6','E','rcook5@about.me');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (7,'E1','R','70243007');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (8,'E2','R','50523528');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (9,'E3','R','58565343');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (10,'E4','R','10688793');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (11,'E5','R','23642986');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (12,'E6','R','60789056');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (13,'E7','R','5123875');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (14,'E8','R','7985328');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (15,'E9','R','27870623');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (16,'E10','R','65673630');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (17,'E11','R','43395729');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (18,'E12','R','57061258');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (19,'E13','R','47650422');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (20,'E14','R','61169117');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (21,'E15','R','9513685');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (22,'E16','R','1121416');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (23,'E17','R','59995128');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (24,'E18','R','25455293');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (25,'E19','R','46148804');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (26,'E20','R','86032152');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (27,'E21','R','28005325');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (28,'E22','R','94827284');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (29,'E23','R','81669245');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (30,'E24','R','26561500');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (31,'C1','O','33390619');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (32,'C2','O','27942548');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (33,'C3','O','64144006');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (34,'C4','O','61913421');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (35,'C5','O','44343171');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (36,'C6','O','41029613');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (37,'C7','O','71033142');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (38,'C8','O','51884029');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (39,'C9','O','38629663');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (40,'C10','O','21115656');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (41,'C11','O','43050615');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (42,'C12','O','12282122');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (43,'C13','O','58951189');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (44,'C14','O','29643725');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (45,'C15','O','82063715');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (46,'C16','O','83236914');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (47,'C17','O','610767');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (48,'C18','O','9456386');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (49,'C19','O','51899063');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (50,'C20','O','92776536');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (51,'C21','O','3097098');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (52,'C22','O','25031743');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (53,'C23','O','33286138');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (54,'C24','O','36115811');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (55,'C25','O','71260765');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (56,'C26','O','14406460');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (57,'C27','O','8412806');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (58,'C28','O','63004735');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (59,'C29','O','33375038');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (60,'C30','O','56412475');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (61,'C31','O','80864273');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (62,'C32','O','90650002');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (63,'C33','O','69794453');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (64,'C34','O','898002');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (65,'C35','O','90626583');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (66,'C36','O','51238025');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (67,'C37','O','87216672');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (68,'C38','O','89596830');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (69,'C39','O','55730880');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (70,'C40','O','34253665');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (71,'C41','O','22126605');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (72,'C42','O','40584949');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (73,'C43','O','88030125');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (74,'C44','O','61900378');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (75,'C45','O','46771472');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (76,'C46','O','52686293');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (77,'C47','O','50199374');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (78,'C48','O','69664183');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (79,'C49','O','58736213');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (80,'C50','O','95644102');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (81,'C51','O','3903772');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (82,'C52','O','47893563');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (83,'C53','O','61474675');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (84,'C54','O','49043628');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (85,'C55','O','98946840');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (86,'C56','O','35055112');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (87,'C57','O','27218534');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (88,'C58','O','48895131');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (89,'C59','O','34816195');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (90,'C60','O','19298339');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (31,'C1','R','26974584');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (32,'C2','R','72520742');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (33,'C3','R','1694989');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (34,'C4','R','99012647');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (35,'C5','R','85202703');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (36,'C6','R','1693853');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (37,'C7','R','17492590');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (38,'C8','R','90982919');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (39,'C9','R','1576213');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (40,'C10','R','70430199');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (41,'C11','R','31110326');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (42,'C12','R','82003782');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (43,'C13','R','21042571');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (44,'C14','R','53517170');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (45,'C15','R','39723016');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (46,'C16','R','80076995');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (47,'C17','R','69172098');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (48,'C18','R','28404549');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (49,'C19','R','86790533');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (50,'C20','R','56612622');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (51,'C21','R','64481923');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (52,'C22','R','89755320');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (53,'C23','R','53096376');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (54,'C24','R','43131557');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (55,'C25','R','41662238');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (56,'C26','R','643986');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (57,'C27','R','27450145');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (58,'C28','R','94883061');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (59,'C29','R','57638830');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (60,'C30','R','24387813');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (61,'C31','R','57583433');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (62,'C32','R','67160333');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (63,'C33','R','99206670');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (64,'C34','R','69621805');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (65,'C35','R','70573632');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (66,'C36','R','55419256');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (67,'C37','R','29574985');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (68,'C38','R','48532250');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (69,'C39','R','87063335');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (70,'C40','R','20891258');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (71,'C41','R','51753601');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (72,'C42','R','92362090');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (73,'C43','R','62343152');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (74,'C44','R','6901200');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (75,'C45','R','93203175');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (76,'C46','R','47085132');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (77,'C47','R','24831763');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (78,'C48','R','34149296');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (79,'C49','R','59237595');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (80,'C50','R','45727458');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (81,'C51','R','71541336');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (82,'C52','R','19896765');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (83,'C53','R','67834961');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (84,'C54','R','54477371');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (85,'C55','R','46685819');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (86,'C56','R','92714919');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (87,'C57','R','45821179');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (88,'C58','R','70686986');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (89,'C59','R','54795929');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (90,'C60','R','51153117');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (91,'N1','R','66566271');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (92,'N2','R','82399015');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (93,'N3','R','87125357');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (94,'N4','R','2207440');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (95,'N5','R','20663269');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (96,'N6','R','8686343');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (97,'N7','R','48214821');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (98,'N8','R','32129657');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (99,'N9','R','30219345');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (100,'N10','R','78820008');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (101,'N11','R','35102703');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (102,'N12','R','91053674');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (103,'N13','R','2063484');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (104,'N14','R','52693273');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (105,'N15','R','91679398');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (106,'N16','R','65979597');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (107,'N17','R','55876756');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (108,'N18','R','92985071');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (109,'N19','R','92743159');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (110,'N20','R','48215212');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (111,'N21','R','72063033');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (112,'N22','R','19773675');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (113,'N23','R','15344840');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (114,'N24','R','77209805');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (115,'N25','R','83596064');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (116,'N26','R','24102766');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (117,'N27','R','483697');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (118,'N28','R','53905295');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (119,'N29','R','3535055');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (120,'N30','R','27713135');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (121,'N31','R','98018489');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (122,'N32','R','93432378');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (123,'N33','R','55885624');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (124,'N34','R','94945685');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (125,'N35','R','88618166');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (126,'N36','R','57952956');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (127,'N37','R','43436673');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (128,'N38','R','53385374');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (129,'N39','R','23519448');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (130,'N40','R','57839033');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (131,'N41','R','63670244');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (132,'N42','R','46292961');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (133,'N43','R','12289264');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (134,'N44','R','84198294');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (135,'N45','R','5282512');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (136,'N46','R','23818941');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (137,'N47','R','94798793');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (138,'N48','R','19445954');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (139,'N49','R','97864339');
INSERT INTO Contact_Detail(address_no,code_no,cnct_type,cnct_data) VALUES (140,'N50','R','72398948');


/*
-- Query: SELECT * FROM bank.transaction_mstr
*/
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('1','SB1','2009-08-25','B','W',1953.00,48719.08);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('10','CA10','2015-04-29','C','W',621.00,33611.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('11','CA11','2004-02-09','C','D',1124.00,103.92);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('12','SB12','2014-06-11','C','D',1271.00,76851.92);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('13','CA13','1996-08-31','B','D',1307.00,46543.09);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('14','CA14','1994-11-13','C','W',1321.00,93335.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('15','CA15','2003-12-02','B','W',707.00,2534.94);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('16','CA16','2004-08-07','C','D',1518.00,50388.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('17','CA17','2010-05-24','C','D',990.00,60671.66);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('18','CA18','2008-06-08','B','W',724.00,52604.28);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('19','CA19','2010-08-31','B','D',799.00,25838.87);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('2','SB2','2012-02-09','B','W',1037.00,41887.14);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('20','SB20','2009-03-28','C','D',1711.00,3923.48);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('21','SB21','2001-07-26','B','W',1005.00,31768.31);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('22','SB22','2000-10-28','C','D',1102.00,53443.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('23','SB23','2006-12-14','B','W',1100.00,6107.86);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('24','CA24','1995-11-20','C','D',1098.00,-752.32);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('25','CA25','2005-09-14','B','D',529.00,85482.69);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('26','SB26','2011-05-18','C','D',1289.00,63988.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('27','CA27','2004-04-30','C','W',1534.00,5248.40);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('28','CA28','1997-09-14','B','D',574.00,24358.52);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('29','CA29','2008-07-23','C','D',628.00,18313.59);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('3','CA3','1999-03-15','B','W',780.00,73811.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('30','CA30','1997-09-11','B','D',656.00,32643.04);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('31','CA31','1998-02-26','C','D',657.00,80112.37);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('32','CA32','2010-04-22','C','W',748.00,38195.79);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('33','CA33','2012-02-27','C','D',1911.00,40639.36);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('34','CA34','2000-10-13','C','W',508.00,46874.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('35','SB35','2005-08-28','C','W',1773.00,9503.36);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('36','CA36','2016-01-12','B','D',1387.00,96612.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('37','CA37','2015-02-09','B','W',909.00,67238.93);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('38','SB38','2004-06-21','B','D',874.00,76818.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('39','CA39','2009-11-24','B','D',1909.00,54785.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('4','CA4','2011-05-22','B','W',1369.00,47672.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('40','CA40','2010-01-24','B','W',1273.00,1015.09);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('41','SB41','2010-01-01','B','D',974.00,8797.48);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('42','CA42','1997-05-25','C','W',1802.00,81686.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('43','CA43','2015-04-30','B','W',1600.00,48895.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('44','SB44','2009-12-08','C','D',1373.00,95538.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('45','CA45','2004-01-17','C','W',1662.00,68503.97);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('46','SB46','2002-11-20','C','W',1458.00,76743.35);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('47','SB47','2014-04-24','C','W',1785.00,47206.98);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('48','CA48','1998-09-11','B','W',1983.00,78683.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('49','CA49','1997-07-15','C','D',673.00,6917.63);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('5','CA5','2003-02-18','B','W',838.00,72259.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('50','SB50','1997-08-26','C','W',1060.00,39873.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('51','SB51','2014-09-11','B','D',900.00,39320.51);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('52','SB52','2009-01-27','C','W',1123.00,85201.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('53','CA53','2003-02-26','B','W',963.00,62976.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('54','SB54','2001-08-10','C','W',1745.00,69835.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('55','SB55','2001-06-21','B','D',1748.00,56339.01);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('56','SB56','2001-08-11','B','W',1811.00,21007.96);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('57','SB57','2013-04-20','B','W',1124.00,58604.35);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('58','SB58','1997-04-16','C','D',975.00,75232.25);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('59','CA59','1999-08-09','C','D',652.00,6443.02);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('6','SB6','2001-01-31','C','D',808.00,83422.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('60','CA60','2002-07-06','C','D',1242.00,77860.00);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('7','SB7','2016-01-04','B','D',693.00,5008.08);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('8','CA8','1999-09-27','C','W',999.00,5153.46);
INSERT INTO `transaction_mstr` (`transaction_no`,`account_no`,`trans_dt`,`type`,`dr_cr`,`amt`,`balance`) VALUES ('9','SB9','2007-10-30','C','D',1443.00,182756.71);


/*
-- Query: SELECT * FROM bank.transaction_detail

*/
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('1',613722,'2009-08-25','Daniel Howell','2009-08-27','CBI','KHAD','ACNO1');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('2',462136,'2012-02-09','Brian Diaz','2012-02-11','BOI','JUHU','ACNO2');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('3',785556,'1999-03-15','Wanda Oliver','1999-03-17','CBI','MARINE DRIVE','ACNO3');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('4',315814,'2011-05-22','Wanda Alvarez','2011-05-24','CBI','KANDIVALI','ACNO4');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('5',483060,'2003-02-18','Jesse Nichols','2003-02-20','BOI','KHAD','ACNO5');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('7',546880,'2016-01-04','Larry Fuller','2016-01-06','CBI','KHAD','ACNO6');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('13',931369,'1996-08-31','Raymond Romero','1996-09-02','BOI','KHAD','ACNO7');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('15',603320,'2003-12-02','Arthur Burns','2003-12-04','BOI','MARINE DRIVE','ACNO8');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('18',338887,'2008-06-08','Rachel Nichols','2008-06-10','BOB','KHAD','ACNO9');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('19',491930,'2010-08-31','Rebecca Campbell','2010-09-02','CBI','MARINE DRIVE','ACNO10');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('21',3296,'2001-07-26','Diana Phillips','2001-07-28','BOI','MARINE DRIVE','ACNO11');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('23',37845,'2006-12-14','Alice Black','2006-12-16','CBI','KHAD','ACNO12');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('25',979427,'2005-09-14','Ryan Chavez','2005-09-16','BOI','MALAD','ACNO13');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('28',581983,'1997-09-14','Donald Parker','1997-09-16','CBI','MALAD','ACNO14');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('30',26724,'1997-09-11','Ashley Duncan','1997-09-13','CBI','MARINE DRIVE','ACNO15');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('36',298908,'2016-01-12','William West','2016-01-14','CBI','MARINE DRIVE','ACNO16');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('37',825848,'2015-02-09','Sara Gordon','2015-02-11','CBI','MALAD','ACNO17');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('38',179773,'2004-06-21','Debra Kelley','2004-06-23','CBI','MALAD','ACNO18');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('39',809767,'2009-11-24','Lois Carr','2009-11-26','KOTAK','KHAD','ACNO19');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('40',755630,'2010-01-24','Anthony Watson','2010-01-26','CBI','MALAD','ACNO20');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('41',146222,'2010-01-01','Billy Austin','2010-01-03','CBI','MARINE DRIVE','ACNO21');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('43',836954,'2015-04-30','Richard Wilson','2015-05-02','KOTAK','KHAD','ACNO22');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('48',873435,'1998-09-11','Todd Butler','1998-09-13','CBI','KHAD','ACNO23');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('51',564518,'2014-09-11','Catherine Woods','2014-09-13','CBI','MARINE DRIVE','ACNO24');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('53',326575,'2003-02-26','Irene Burton','2003-02-28','BOB','JUHU','ACNO25');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('55',781134,'2001-06-21','Stephen Morrison','2001-06-23','CBI','KHAD','ACNO26');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('56',126093,'2001-08-11','Willie Long','2001-08-13','BOI','JUHU','ACNO27');
INSERT INTO `transaction_detail` (`transaction_no`,`inst_no`,`inst_dt`,`payto`,`inst_clr_dt`,`bank_name`,`branch_name`,`paidfrom`) VALUES ('57',273105,'2013-04-20','Jeffrey Butler','2013-04-22','CBI','JUHU','ACNO28');

/*
-- Query: SELECT * FROM bank.atm_mstr
LIMIT 0, 1000

-- Date: 2016-05-08 16:10
*/
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',1,'KHAR',326180);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',2,'KHAR',228790);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',3,'VILLE PARLE',727938);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',4,'KHAR',766272);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',5,'KHAR',395860);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',6,'VILLE PARLE',303177);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',7,'CTC',343693);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',8,'KANDIVALI',181972);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',9,'KHAR',204413);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',10,'KHAR',554867);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',11,'THANE',121205);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',12,'VILLE PARLE',744961);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',13,'MARINE DRIVE',515529);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',14,'KHAR',208918);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',15,'KHAR',363953);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',16,'THANE',333904);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',17,'KHAR',218931);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',18,'CTC',482644);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',19,'VILLE PARLE',686193);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',20,'KHAR',362384);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',21,'KHAR',113858);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',22,'KHAR',487677);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',23,'KHAR',221736);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',24,'KHAR',391603);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B3',25,'KHAR',271045);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',26,'VILLE PARLE',310199);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',27,'VILLE PARLE',777919);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',28,'BORIVALI',169248);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',29,'KHAR',449124);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B3',30,'KHAR',717721);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',31,'CTC',828974);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',32,'VILLE PARLE',547355);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',33,'KHAR',297000);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',34,'CTC',169515);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',35,'KHAR',880985);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',36,'CTC',479360);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',37,'KHAR',786516);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',38,'KHAR',896199);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',39,'VILLE PARLE',512523);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B3',40,'VILLE PARLE',395066);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',41,'KHAR',849165);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',42,'KHAR',526822);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',43,'VILLE PARLE',128841);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B3',44,'KHAR',896128);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',45,'CTC',661762);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',46,'KHAR',448916);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',47,'JUHU',303650);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',48,'KHAR',296320);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',49,'KHAR',541660);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',50,'KHAR',774730);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',51,'KHAR',247495);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',52,'VILLE PARLE',145278);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',53,'VILLE PARLE',305721);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',54,'VILLE PARLE',304663);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',55,'KHAR',452177);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',56,'THANE',834231);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',57,'CTC',695848);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',58,'KHAR',804871);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',59,'VILLE PARLE',839352);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',60,'VILLE PARLE',377210);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B3',61,'VILLE PARLE',499530);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',62,'VILLE PARLE',490295);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',63,'KHAR',331728);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',64,'KHAR',739186);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',65,'KHAR',510380);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',66,'KHAR',838767);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',67,'MARINE DRIVE',838149);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',68,'VILLE PARLE',811404);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',69,'VILLE PARLE',368968);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',70,'CTC',341260);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',71,'KHAR',730691);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',72,'KHAR',304044);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',73,'VILLE PARLE',176399);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',74,'KHAR',321499);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',75,'VILLE PARLE',271088);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',76,'KHAR',538979);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',77,'THANE',158771);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',78,'KHAR',277432);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',79,'KHAR',381039);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',80,'KHAR',585476);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',81,'KHAR',837438);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',82,'THANE',353564);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',83,'CTC',612335);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',84,'THANE',331492);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',85,'VILLE PARLE',536968);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',86,'VILLE PARLE',493386);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B3',87,'KHAR',467401);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',88,'KHAR',212717);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B6',89,'THANE',792601);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',90,'KHAR',294453);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',91,'KHAR',646671);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',92,'KHAR',230644);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B4',93,'KHAR',372842);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',94,'VILLE PARLE',781782);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',95,'KHAR',195886);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',96,'MARINE DRIVE',379879);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',97,'KHAR',766396);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B5',98,'KHAR',612425);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B1',99,'KHAR',384759);
INSERT INTO `atm_mstr` (`branch_no`,`atm_id`,`atm_area`,`atm_balance`) VALUES ('B2',100,'VILLE PARLE',798541);


/*
-- Query: SELECT * FROM bank.inventory_list
LIMIT 0, 1000

-- Date: 2016-05-08 15:55
*/
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (1,'Table',2000);
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (2,'Chair',500);
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (3,'AC',30000);
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (4,'Computer',65000);
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (5,'Printer',5000);
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (6,'Fan',1200);
INSERT INTO `inventory_list` (`item_id`,`item_name`,`item_amt`) VALUES (7,'Lights',100);


/*
inventory mstr
*/
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',1,2);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',1,5);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',1,13);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',1,7);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',1,9);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',1,7);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',2,14);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',2,6);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',2,14);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',2,8);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',2,2);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',2,6);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',3,3);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',3,2);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',3,6);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',3,7);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',3,12);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',3,2);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',4,11);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',4,5);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',4,5);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',4,7);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',4,8);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',4,15);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',5,4);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',5,7);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',5,10);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',5,3);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',5,11);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',5,15);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',6,2);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',6,11);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',6,15);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',6,14);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',6,13);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',6,7);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B1',7,15);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B2',7,6);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B3',7,6);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B4',7,2);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B5',7,11);
INSERT INTO Inventory_Mstr(branch_no,item_id,no_of_items) VALUES ('B6',7,10);


/*
-- Query: SELECT * FROM bank.maintenance_list
LIMIT 0, 1000

-- Date: 2016-05-08 15:46
*/
INSERT INTO `maintenance_list` (`maintenance_type`,`maintenance_name`) VALUES ('MT01','Security');
INSERT INTO `maintenance_list` (`maintenance_type`,`maintenance_name`) VALUES ('MT02','Telephone');
INSERT INTO `maintenance_list` (`maintenance_type`,`maintenance_name`) VALUES ('MT03','Elect');
INSERT INTO `maintenance_list` (`maintenance_type`,`maintenance_name`) VALUES ('MT04','Interner');
INSERT INTO `maintenance_list` (`maintenance_type`,`maintenance_name`) VALUES ('MT05','Laundry');


/*
-- Query: SELECT * FROM bank.maintenance_master
LIMIT 0, 1000

-- Date: 2016-05-08 15:46
*/
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B1','MT01',852,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B1','MT02',1768,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B1','MT03',986,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B1','MT04',1575,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B1','MT05',582,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B2','MT01',783,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B2','MT02',1848,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B2','MT03',812,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B2','MT04',1928,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B2','MT05',1245,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B3','MT01',1777,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B3','MT02',1754,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B3','MT03',1933,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B3','MT04',1842,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B3','MT05',531,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B4','MT01',1837,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B4','MT02',1253,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B4','MT03',1070,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B4','MT04',1959,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B4','MT05',1182,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B5','MT01',1280,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B5','MT02',1784,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B5','MT03',845,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B5','MT04',1107,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B5','MT05',861,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B6','MT01',577,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B6','MT02',608,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B6','MT03',827,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B6','MT04',1224,'1 month');
INSERT INTO Maintenance_Mstr(branch_no,maintenance_type,maintenance_amount,period) VALUES ('B6','MT05',754,'1 month');



/*
-- Query: SELECT * FROM bank.loan_mstr
LIMIT 0, 1000

-- Date: 2016-05-08 17:23
*/
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('1','B1','C50','CA9','CA53','Yata','C53','6C');
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('2','B2','C02','SB2','CA36','Kazu','C36','6C');
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('3','B3','C21','SB21','SB47','oodoo','C47','5C');
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('4','B4','C14','CA14','CA32','dabfeed','C32','3C');
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('5','B5','C43','CA43','CA34','innojam','C34','2C');
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('6','B6','C13','CA13','SB21','skybel','C21','0C');
INSERT INTO `loan_mstr` (`loan_ser_no`,`branch_no`,`intro_cust_no`,`intro_acc_no`,`account_no`,`title`,`corp_cust_no`,`corp_type`) VALUES ('7','B1','C09','SB9','CA18','Layo','C18','5C');


/*
-- Query: SELECT * FROM bank.loanslab_mstr
LIMIT 0, 1000

-- Date: 2016-05-08 15:44
*/
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (1,'M','Home Loan',9.50);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (2,'F','Home Loan',9.45);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (3,'M','Auto Loan',9.75);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (4,'F','Auto Loan',9.70);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (5,'M','Educational Loan',11.15);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (6,'F','Educational Loan',10.85);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (7,'G','Pension Loan',13.05);
INSERT INTO `loanslab_mstr` (`Loanslab_no`,`type`,`name`,`interest_rate`) VALUES (8,'G','Festival Loan',15.90);


/*
-- Query: SELECT * FROM bank.loan_detail
LIMIT 0, 1000

-- Date: 2016-05-08 17:39
*/
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('1','LNO01','P','CA53',3,'2015-02-01','2018-02-01',10000.00,11531.00,1,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('2','LNO02','C','CA36',3,'2014-04-11','2017-04-11',30000.00,34570.00,2,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('3','LNO03','P','SB47',2,'2015-02-13','2017-02-13',40000.00,44188.00,3,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('4','LNO04','C','CA32',3,'2015-08-23','2018-08-23',55000.00,63610.00,4,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('5','LNO05','P','CA34',4,'2015-09-15','2019-09-15',30000.00,37322.00,5,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('6','LNO06','P','SB21',5,'2016-01-25','2021-01-25',40000.00,50698.00,6,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('7','LNO07','P','CA18',3,'2015-02-05','2018-02-05',10000.00,12138.00,7,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('1','LNO08','C','CA53',4,'2015-11-12','2019-11-12',20000.00,27157.00,8,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('2','LNO09','P','CA36',2,'2015-04-01','2017-04-01',30000.00,33058.00,1,'A');
INSERT INTO `loan_detail` (`loan_ser_no`,`loan_no`,`type`,`payfrom_acc_no`,`period`,`open_dt`,`due_dt`,`amt`,`due_amt`,`loanslab_no`,`status`) VALUES ('3','LNO10','C','SB47',5,'2014-12-22','2019-12-22',50000.00,62932.00,2,'A');


/*
-- Query: SELECT * FROM bank.service_charges
LIMIT 0, 1000

-- Date: 2016-05-08 14:58
*/
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('CC01','Credit Card',120.00);
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('DC01','Debit Card',100.00);
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('L01','Locker Type 1',25.00);
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('L02','Locker Type 2',35.00);
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('L03 ','Locker Type 3',50.00);
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('MB01','Mobile Banking',25.00);
INSERT INTO `service_charges` (`service_id`,`service_name`,`service_charges_per_month`) VALUES ('NB01','Net Banking ',5.00);


/*
-- Query: SELECT * FROM bank.locker
LIMIT 0, 1000

-- Date: 2016-05-08 15:15
*/
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C14','L03','LNO01','large','2009-02-10');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C16','L03','LNO02','large','2004-10-01');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C17','L03','LNO03','large','1996-06-13');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C18','L02','LNO04','medium','2005-06-22');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C25','L03','LNO05','large','1994-11-12');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C3','L03','LNO06','large','2016-04-13');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C31','L02','LNO07','medium','1998-03-30');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C36','L03','LNO08','large','2008-09-03');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C37','L03','LNO09','large','2004-08-12');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C39','L03','LNO10','large','2002-07-01');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C42','L03','LNO11','large','2008-09-13');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C43','L03','LNO12','large','2012-11-17');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C45','L01','LNO13','small','1995-03-29');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C48','L01','LNO14','small','2013-10-25');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C5','L01','LNO15','small','2002-11-25');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C53','L02','LNO16','medium','2010-09-18');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C60','L01','LNO17','small','2013-02-15');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C12','L03','LNO18','large','2015-04-03');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C22','L02','LNO19','medium','1998-05-13');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C26','L01','LNO20','small','1999-07-24');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C38','L01','LNO21','small','2013-06-24');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C44','L03','LNO22','large','2009-08-25');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C46','L03','LNO23','large','2001-06-29');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C52','L01','LNO24','small','2013-08-06');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C54','L03','LNO25','large','2002-10-04');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C55','L02','LNO26','medium','1996-04-02');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C57','L01','LNO27','small','2002-12-14');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C58','L02','LNO28','medium','2011-02-28');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C6','L02','LNO29','medium','2000-07-21');
INSERT INTO `locker` (`customer_no`,`service_id`,`locker_no`,`locker_type`,`opening_date`) VALUES ('C9','L01','LNO30','small','2009-12-06');


/*
service master
*/
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA10','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA11','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA11','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA13','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA13','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA14','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA14','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA14','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA15','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA15','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA16','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA16','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA17','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA17','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA17','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA18','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA18','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA19','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA19','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA24','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA24','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA25','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA25','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA27','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA27','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA28','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA29','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA29','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA3','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA3','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA3','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA30','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA31','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA31','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA31','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA32','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA32','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA33','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA33','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA34','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA34','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA36','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA36','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA37','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA37','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA39','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA39','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA39','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA4','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA4','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA40','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA40','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA42','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA42','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA42','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA43','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA43','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA43','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA45','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA45','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA45','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA48','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA48','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA49','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA49','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA5','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA5','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA53','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA53','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA53','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA59','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA59','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA60','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA60','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA60','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA8','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA8','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB1','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB1','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB12','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB12','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB2','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB20','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB21','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB21','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB22','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB22','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB23','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB23','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB26','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB26','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB35','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB38','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB38','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB38','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB41','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB41','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB44','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB44','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB44','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB46','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB46','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB47','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB47','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB50','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB51','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB52','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB52','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB52','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB54','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB54','L03');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB55','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB55','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB55','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB56','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB56','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB57','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB57','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB57','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB57','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB57','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB58','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB58','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB6','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB6','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB6','L02');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB7','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB7','CC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB9','NB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB9','MB01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('SB9','L01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA14','DC01');
INSERT INTO Service_Mstr(account_no,service_id) VALUES ('CA14','NB01');
/*
-- Query: SELECT * FROM bank.net_banking
LIMIT 0, 1000

-- Date: 2016-05-08 15:19
*/
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA11','NID01','xOntsUctdyz');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA15','NID02','ebn0pKjP0');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA16','NID03','L1hlFOB');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA18','NID04','xwzVVO');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA19','NID05','aUyjx4');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA24','NID06','CRqaiQ');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA25','NID07','2vPjWcI9');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA27','NID08','iQv9Q9K7w');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA28','NID09','yPxe0SnH');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA29','NID10','pvyy9011Bx9');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA3','NID11','eFPatmk');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA30','NID12','CVGPW5q6');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA31','NID13','AdJWsSSZ');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA33','NID14','lzIKj6');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA36','NID15','tcPSmKuzlI');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA37','NID16','rmymT0c');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA39','NID17','bDAhEw58E');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA4','NID18','OFN0un');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA40','NID19','rnE2WyK');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA42','NID20','ZGFNvRGTSb');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA43','NID21','PaJUZAUM');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA45','NID22','dIbXh0Nx');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA48','NID23','JLhlHm2ab');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA49','NID24','CYHT9rvs');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA53','NID25','Wpm0WV');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA59','NID26','Tk3QekFAG');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA60','NID27','5ckS8X72Jj');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('CA8','NID28','Zu7AMbuy');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB1','NID29','5NkpPrMiPhv');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB12','NID30','nT3plX3rBjM');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB2','NID31','kp679Z1');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB20','NID32','O3uLQXYT');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB21','NID33','BOEJPN7rj');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB22','NID34','IzqmSHmVVj');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB23','NID35','RDF6xHrv');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB26','NID36','B0ZtMGp');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB35','NID37','OAPBOFEbWbO');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB38','NID38','a1GeFS');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB41','NID39','fCrwCRK8YmM');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB44','NID40','wnylqzq1Bg');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB47','NID41','GtHc0pv');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB50','NID42','rC8hnw');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB51','NID43','wb61qCxY');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB52','NID44','zj01X1');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB54','NID45','Dtay2rG');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB55','NID46','Bct6SnD65qXU');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB56','NID47','6qDNs4e');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB58','NID48','DOppmduxf');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB6','NID49','nEPYan8L9NUi');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB7','NID50','Ps8iDlGiqD6');
INSERT INTO `net_banking` (`account_no`,`netbanking_id`,`netbanking_pass`) VALUES ('SB9','NID51','rgGVNcEAug');


/*
-- Query: SELECT * FROM bank.credit_card
LIMIT 0, 1000

-- Date: 2016-05-08 15:29
*/
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('SB7',775404457846245,'404','477','2017-10-03',14456.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('SB6',782277105170228,'1325','180','2017-12-07',42205.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('SB57',792706837106792,'7921','417','2018-01-09',8233.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('SB47',802281335419478,'2257','365','2018-05-07',39016.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('SB41',802676714704344,'7883','780','2018-09-12',47697.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('SB23',815697205432446,'5519','446','2018-11-09',38886.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('CA60',836552983997340,'2191','939','2018-12-05',34815.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('CA39',868772806249087,'7801','867','2019-02-09',48290.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('CA32',905772094924211,'1462','21','2019-04-07',32307.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('CA14',906487882273602,'8288','758','2019-06-11',31450.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('CA13',939794169044714,'1543','818','2019-12-03',13549.00);
INSERT INTO `credit_card` (`account_no`,`creditcard_number`,`creditcard_pin`,`cvv_no`,`valid_to`,`credit_limit`) VALUES ('CA11',940750972584007,'5229','664','2020-08-01',49189.00);

/*
-- Query: SELECT * FROM bank.debit_card
LIMIT 0, 1000

-- Date: 2016-05-08 15:35
*/
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('SB57',588751610201287,'994','933','2016-12-03');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('SB38',595716462260180,'7479','233','2017-01-10');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA59',615246556092198,'6253','967','2017-07-06');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA53',624647060812946,'6778','674','2017-08-10');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA4',656485080602854,'90','1','2017-09-04');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA34',672718306351261,'7696','867','2017-10-03');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA32',689271903408039,'5967','47','2017-12-07');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA31',703145935176088,'4221','395','2018-01-09');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA27',724077003110320,'6937','346','2018-05-07');
INSERT INTO `debit_card` (`account_no`,`debitcard_number`,`debitcard_pin`,`cvv_no`,`valid_to`) VALUES ('CA17',732246867598897,'6660','764','2018-09-12');


/*
-- Query: SELECT * FROM bank.mobile_banking
LIMIT 0, 1000

-- Date: 2016-05-08 15:39
*/
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA13','99785625');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA14','99206670');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA15','99012647');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA17','98946840');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA19','98018489');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA24','97864339');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA29','95644102');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA3','94945685');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA33','94883061');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA34','94827284');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA40','94798793');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA42','93432378');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA43','93203175');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA45','92985071');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA49','92776536');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA5','92743159');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('CA8','92714919');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB1','92362090');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB21','91679398');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB44','91053674');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB46','90982919');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB52','90650002');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB55','90626583');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB56','89755320');
INSERT INTO `mobile_banking` (`account_no`,`mobile_number`) VALUES ('SB9','89596830');
