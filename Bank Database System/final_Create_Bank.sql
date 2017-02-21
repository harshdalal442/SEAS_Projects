DROP SCHEMA BANK;
CREATE SCHEMA BANK;
set foreign_key_checks=0;
use BANK;


create table Branch_Mstr(
	branch_no varchar(10),
	branch_name varchar(25),
	branch_opening_date date,
    IFSC_code varchar(11) NOT NULL,
    MICR_number varchar(10) NOT NULL,
	PRIMARY KEY(branch_no)
);

create table Employee_Mstr(
	employee_no varchar(10),
	branch_no varchar(5),
	fname varchar(25),
	mname varchar(25),
	lname varchar(25),
	dept varchar(25),
	desig varchar(30),
	mngr_no varchar(10),
	PRIMARY KEY(employee_no),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no)
);

create table Customer_Mstr(
	customer_no varchar(10),
	fname varchar(25),
	mname varchar(25),
	lname varchar(25),
	dob_inc date,
	gender varchar(1),
	occup varchar(100),
	pancopy varchar(1),
	form60 varchar(1),
	PRIMARY KEY(customer_no)
);

create table Support_Docs(
	account_code varchar(4),
	type varchar(30),
	docs varchar(75),
	PRIMARY KEY(account_code)
);

create table Account_Mstr(
	account_no varchar(10),
	branch_no varchar(10),
	intro_cust_no varchar(10),
	intro_acc_no varchar(10),
	type varchar(2),
	opr_mode varchar(2),
	cur_acc_type varchar(4),
	title varchar(30),
	corp_cust_no varchar(10),
	app_dt date,
	open_dt date,
	cur_bal numeric(8,2),
	status varchar(1),
	PRIMARY KEY(account_no),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(intro_cust_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(corp_cust_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(intro_acc_no) REFERENCES Account_Mstr(account_no),
	FOREIGN KEY(cur_acc_type) REFERENCES Support_Docs(account_code)
);

create table FD_Mstr(
	fd_ser_no varchar(10),
	branch_no varchar(10),
	intro_cust_no varchar(10),
	intro_acc_no varchar(10),
	account_no varchar(10),
	title varchar(30),
	corp_cust_no varchar(10),
	corp_type varchar(4),
	PRIMARY KEY(fd_ser_no),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(intro_cust_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no),
	FOREIGN KEY(corp_cust_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(intro_acc_no) REFERENCES Account_Mstr(account_no)
);

create table FDSlab_Mstr(
	fdslab_no numeric(2,0),
	min_period numeric(5,0),
	max_period numeric(5,0),
	interest_rate numeric(5,2),
	PRIMARY KEY(FDslab_no)
);

create table FD_Detail(
	fd_ser_no varchar(10),
	fd_no varchar(10),
	type varchar(1),
	payto_acc_no varchar(10),
	period numeric(5,0),
	open_dt date,
	due_dt date,
	amt numeric(8,2),
	due_amt numeric(8,2),
	fdslab_no numeric(2,0),
	status varchar(1),
	auto_renewal varchar(1),
	PRIMARY KEY(fd_no),
	FOREIGN KEY(fdslab_no) REFERENCES FDSlab_Mstr(fdslab_no),
	FOREIGN KEY(fd_ser_no) REFERENCES FD_Mstr(fd_ser_no),
	FOREIGN KEY(payto_acc_no) REFERENCES Account_Mstr(account_no)
);

create table Nominee_Mstr(
	nominee_no varchar(10),
	acc_fd_no varchar(10),
	name varchar(75),
	dob date,
	realationship varchar(25),
	PRIMARY KEY(nominee_no),
	FOREIGN KEY(acc_fd_no) REFERENCES Account_Mstr(account_no),
	FOREIGN KEY(acc_fd_no) REFERENCES FD_Mstr(fd_ser_no)
);

create table Address_Mstr(
	pincode varchar(6),
	city varchar(25),
	state varchar(25),
	PRIMARY KEY(pincode)
);

create table Address_Detail(
	address_no numeric(6,0),
	code_no varchar(10),
	add_type varchar(1),
	add_1 varchar(50),
	add_2 varchar(50),
	pincode varchar(6),
	PRIMARY KEY(address_no),
	FOREIGN KEY(code_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(code_no) REFERENCES Employee_Mstr(employee_no),
	FOREIGN KEY(code_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(code_no) REFERENCES Nominee_Mstr(nominee_no),
	FOREIGN KEY(pincode) REFERENCES Address_Mstr(pincode)
);

create table Contact_Detail(
	address_no numeric(6,0),
	code_no varchar(10),
	cnct_type varchar(1),
	cnct_data varchar(75),
	FOREIGN KEY(code_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(code_no) REFERENCES Employee_Mstr(employee_no),
	FOREIGN KEY(code_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(code_no) REFERENCES Nominee_Mstr(nominee_no),
	FOREIGN KEY(address_no) REFERENCES Address_Detail(address_no)
);

create table Transaction_Mstr(
	transaction_no varchar(10),
	account_no varchar(10),
	trans_dt date,
	type varchar(1),
	dr_cr varchar(1),
	amt numeric(8,2),
	balance numeric(8,2),
	PRIMARY KEY(transaction_no),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no)
);

create table Transaction_Detail(
	transaction_no varchar(10) NOT NULL,
	inst_no numeric(6,0) NOT NULL,
	inst_dt date NOT NULL,
	payto varchar(30) NOT NULL,
	inst_clr_dt date NOT NULL,
	bank_name varchar(30) NOT NULL,
	branch_name varchar(30) NOT NULL,
	paidfrom varchar(10)NOT NULL,
	FOREIGN KEY(transaction_no) REFERENCES Transaction_Mstr(transaction_no)
);

create table ATM_Mstr(
    branch_no varchar(10),
	atm_id numeric(5,0),
	atm_area varchar (20),
	atm_balance numeric (9,0) NOT NULL,
	PRIMARY KEY (atm_id),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no)
);

create table Inventory_List(
	item_id numeric(4,0),
	item_name varchar(25),
	item_amt numeric (7,0),
	PRIMARY KEY(item_id)
);

create table Inventory_Mstr(
	branch_no varchar(10),
	item_id numeric(4,0),
	no_of_items numeric (7,0),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(item_id) REFERENCES Inventory_List(item_id)
);

create table Maintenance_List(
	maintenance_type varchar (5),
    maintenance_name varchar (10),
    PRIMARY KEY(maintenance_type)
);

create table Maintenance_Mstr(
	branch_no varchar(10),
	maintenance_type varchar (5),
    maintenance_amount numeric (10,2),
    period varchar(20),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(maintenance_type) REFERENCES Maintenance_List(maintenance_type)
);

create table Loan_Mstr(
	loan_ser_no varchar(10),
	branch_no varchar(10),
	intro_cust_no varchar(10),
	intro_acc_no varchar(10),
	account_no varchar(10),
	title varchar(30),
	corp_cust_no varchar(10),
	corp_type varchar(4),
	PRIMARY KEY(loan_ser_no),
	FOREIGN KEY(branch_no) REFERENCES Branch_Mstr(branch_no),
	FOREIGN KEY(intro_cust_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no),
	FOREIGN KEY(corp_cust_no) REFERENCES Customer_Mstr(customer_no),
	FOREIGN KEY(intro_acc_no) REFERENCES Account_Mstr(account_no)
);

create table LoanSlab_Mstr(
	Loanslab_no numeric(2,0),
	type varchar(1),
	name varchar(20),
	interest_rate numeric(5,2),
	PRIMARY KEY(Loanslab_no)
);

create table Loan_Detail(
	loan_ser_no varchar(10),
	loan_no varchar(10),
	type varchar(1),
	payfrom_acc_no varchar(10),
	period numeric(5,0),
	open_dt date,
	due_dt date,
	amt numeric(8,2),
	due_amt numeric(8,2),
	loanslab_no numeric(2,0),
	status varchar(1),
	PRIMARY KEY(loan_no),
	FOREIGN KEY(loanslab_no) REFERENCES LoanSlab_Mstr(loanslab_no),
	FOREIGN KEY(loan_ser_no) REFERENCES Loan_Mstr(loan_ser_no),
	FOREIGN KEY(payfrom_acc_no) REFERENCES Account_Mstr(account_no)
);

create table Service_Charges(
	service_id varchar(6),
    service_name varchar(20),
    service_charges_per_month numeric (10,2),
	PRIMARY KEY(service_id)	
);

create table Locker(
	customer_no varchar(10),
	service_id varchar(6),
	locker_no varchar(5),
	locker_type varchar (20),
    opening_date date,
	PRIMARY KEY(locker_no),
	FOREIGN KEY(service_id) REFERENCES Service_Charges(service_id),
	FOREIGN KEY(customer_no) REFERENCES Customer_Mstr(customer_no)
);

create table Service_Mstr(
	account_no varchar(10),
	service_id varchar(6),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no),
	FOREIGN KEY(service_id) REFERENCES Service_Charges(service_id)
);

create table Net_Banking(
    account_no varchar(10),
    netbanking_id varchar (5),
    netbanking_pass varchar(20) NOT NULL,
	PRIMARY kEY(netbanking_id),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no)
);

create table Credit_Card(
    account_no varchar(10),
    creditcard_number numeric (15,0),
    creditcard_pin varchar (4) NOT NULL,
    cvv_no varchar (3) NOT NULL,
    valid_to date,
    credit_limit numeric(10,2),
	PRIMARY KEY(creditcard_number),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no)
);

create table Debit_Card(
    account_no varchar(10),
    debitcard_number numeric (15,0),
    debitcard_pin varchar (4) NOT NULL,
    cvv_no varchar (3) NOT NULL,
	valid_to date,
	PRIMARY KEY(debitcard_number),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no)
);

create table Mobile_Banking(
    account_no varchar(10),
    mobile_number varchar(15) NOT NULL,
	PRIMARY KEY(mobile_number),
	FOREIGN KEY(account_no) REFERENCES Account_Mstr(account_no)
);

DELIMITER $$


CREATE TRIGGER balance_check_integrity
BEFORE INSERT
ON Account_Mstr
FOR EACH ROW BEGIN
IF new.cur_bal < 0
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='Balance is invalid!';
END IF;
END$$

CREATE TRIGGER due_date_integrity
BEFORE INSERT 
ON FD_Detail
FOR EACH ROW BEGIN
IF new.due_dt<new.open_dt
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='due date is invalid!';
END IF;
END$$

CREATE TRIGGER due_amt_integrity
BEFORE INSERT 
ON FD_Detail
FOR EACH ROW BEGIN
IF new.due_amt<new.amt
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='amt is invalid!';
END IF;
END$$

CREATE TRIGGER due_credit_limit_integrity
BEFORE INSERT 
ON Credit_Card
FOR EACH ROW BEGIN
IF new.credit_limit<0 & new.credit_limit>50000
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='amt is invalid!';
END IF;
END$$

CREATE TRIGGER transaction_deposit
BEFORE INSERT 
ON Transaction_Mstr
FOR EACH ROW BEGIN
IF new.dr_cr='d'
THEN
SET new.balance = new.balance+new.amt;
END IF;
END$$

CREATE TRIGGER transaction_withdraw
BEFORE INSERT 
ON Transaction_Mstr
FOR EACH ROW BEGIN
IF new.dr_cr='w'
THEN
SET new.balance = new.balance-new.amt;
END IF;
END$$
/*
CREATE TRIGGER atm_checker
BEFORE INSERT 
ON ATM_Mstr
FOR EACH ROW BEGIN
IF (select atm_balance from ATM_Mstr) <10000
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='ATM NEEDS URGENT CASH!!!';
END IF;
END$$
*/

CREATE TRIGGER due_date_loan_integrity
BEFORE INSERT 
ON Loan_Detail
FOR EACH ROW BEGIN
IF new.due_dt<new.open_dt
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='due date is invalid!';
END IF;
END$$

CREATE TRIGGER due_amt_loan_integrity
BEFORE INSERT 
ON Loan_Detail
FOR EACH ROW BEGIN
IF new.due_amt<new.amt
THEN
signal sqlstate '45000' SET MESSAGE_TEXT='amt is invalid!';
END IF;
END$$


DELIMITER ;