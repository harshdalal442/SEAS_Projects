use bank;

/* 
Query 1: Total Number Of Customers who Use All The Services :D
*/
select count(d.account_id) as Count from 
debit_card as d
join
(
select c.account_id 
from credit_card as c
join
(select a.account_id from mobile_banking
 as a join net_banking as b on a.account_id=b.account_id) 
as p on p.account_id = c.account_id)
as e on e.account_id = d.account_id;
/* 
Query 2: Total Maintenance Cost Of Branch With Branch Name And State!.
*/

select bank_id,branch_name,state,Total_maintenance_cost from branches 
inner join 
(select branch_code,SUM(maintenance_amount) as Total_maintenance_cost 
from maintenance_charges
group by branch_code) as p on p.branch_code = branches.branch_code;

/* 
Query 3: Customers who are in branch code 01 and are male 
and residing in Guj and have occupation as a engineer and have lockers of type A
*/

select customer_name,locker_no from locker inner join
(select customer_id,customer_name,customer_phone_no from customer
where branch_code = 01 and customer_gender = 'M' and customer_state = 'Guj' 
and customer_occupation = 'Engineer') as p on p.customer_id = locker.customer_id
where service_id='5' and locker_type = 'A';

/* 
Query 4: Total Amout Of Customers Balance In The Branch!.
*/
select branch_code,sum(account_balance) from account inner join
(select branch_code,account_id
from customer inner join account on customer.customer_id = account.customer_id) 
as p on p.account_id = account.account_id 
where account_currentdetail = 'Active'
group by branch_code;

/* 
Query 5: Total Inventory Cost Per Branch
*/
select branch_name,state,total_inventory_cost from branches
inner join
(select branch_code,sum(item_amt* no_of_items) as total_inventory_cost 
from inventory 
group by branch_code) as p on p.branch_code = branches.branch_code;


/* 
Query 6: Customer Who have invested in fds and have loans and also gives the total amt they will receive when their fd will end!. 
*/
select pp.customer_id,total_loan_money,total_amt from
(select  b.customer_id,total_loan_money from customer as b inner join 
(select customer_id,EMI*total_amount* loan_period as total_loan_money from loans) as d on d.customer_id = b.customer_id) as pp
inner Join
(select a.customer_id,total_amt from customer as a inner join 
(select customer_id,fd_period*12*amount as total_amt from fixed_deposit) as p on p.customer_id = a.customer_id) as ppp on pp.customer_id = ppp.customer_id;

/* 
Query 7: Detail Of A Customer Who Has A Account(Details Inlcude Bank Name, Branch Name , Customer Name , Account id , acccount_balance.
*/
select bank_name,branch_name,account_id,customer_name,account_balance from bank inner join
(select b.branch_code,customer_name,account_id,account_balance,branch_name,bank_id from branches as b inner join
(select branch_code,customer_name,account_id,account_balance from customer inner join account on account.customer_id = customer.customer_id) as p on p.branch_code = b.branch_code
where account_balance>0) as ll on ll.bank_id = bank.bank_id;

/* 
Query 8: Total Money In ATMS Of Each Branch and Name Of That Branch !.
*/
select branch_name,state,Total_ATM_Balance from branches 
inner join
(select branch_code,SUM(atm_balance) as Total_ATM_Balance 
from atm 
group by branch_code) as p on p.branch_code = branches.branch_code;

/* 
Query 9: Information Customers Who Have More Than 2 Documents Submitted:
*/
select * from customer inner join
(select customer_id from kyc where no_of_documents_submitted > 2) 
as p on p.customer_id = customer.customer_id;

/* 
Query 10: All Those Customers Who Have Accounts In NetBanking And Mobile Banking:
*/
select customer_name,customer_state,customer_city from customer inner join
(select customer_id from account inner join
(select nb.account_id from net_banking as nb inner join
(select account_id from mobile_banking) as p 
on p.account_id = nb.account_id) as pp 
on pp.account_id = account.account_id) as ppp on ppp.customer_id = customer.customer_id;

/* 
Query 11: Customers who are in branch code 02 and are female 
and residing in Guj and have lockers of type A
*/
select customer_name,locker_no from locker inner join
(select customer_id,customer_name,customer_phone_no from customer
where branch_code = 02 and customer_gender = 'F' and customer_state = 'Guj' 
) as p on p.customer_id = locker.customer_id
where service_id='5' and locker_type = 'A' ;

/*
Query 12: All those customers who have opened lockers for more than 3 years
*/
select p.branch_code,p.customer_name,p.customer_id from customer as p inner join
(select customer_id from locker where datediff(current_date(),opening_date) > 3)
as pp on pp.customer_id = p.customer_id;