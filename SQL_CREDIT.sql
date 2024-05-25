create database creditcard
use creditcard

CREATE TABLE credit_card (
	`Client_Num` DECIMAL(38, 0) NOT NULL, 
	`Card_Category` VARCHAR(8) NOT NULL, 
	`Annual_Fees` DECIMAL(38, 0) NOT NULL, 
	`Activation_30_Days` INT NOT NULL, 
	`Customer_Acq_Cost` INT NOT NULL, 
	`Week_Start_Date` DATE NOT NULL, 
	`Week_Num` VARCHAR(20) NOT NULL, 
	`Qtr` VARCHAR(10) NOT NULL, 
	current_year DECIMAL(38, 0) NOT NULL, 
	`Credit_Limit` DECIMAL(38, 1) NOT NULL, 
	`Total_Revolving_Bal` int NOT NULL, 
	`Total_Trans_Amt` int NOT NULL, 
	`Total_Trans_Vol` INT NOT NULL, 
	`Avg_Utilization_Ratio` DECIMAL(38, 3) NOT NULL, 
	`Use Chip` VARCHAR(7) NOT NULL, 
	`Exp Type` VARCHAR(13) NOT NULL, 
	`Interest_Earned` DECIMAL(38, 2) NOT NULL, 
	`Delinquent_Acc` varchar(10) NOT NULL
);

drop table credit_card

load data infile 'd:/NEW DATA/credit_card.csv'
into table credit_card
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select * from credit_card 

-- uses for PostgreSQL
-- COPY  credit_card
-- from 'D:\NEW DATA\credit_card.csv'
-- Delimiter ','
-- csv header;

CREATE TABLE customer (
	`Client_Num` INT NOT NULL, 
	`Customer_Age` INT NOT NULL, 
	`Gender` VARCHAR(1) NOT NULL, 
	`Dependent_Count` INT NOT NULL, 
	`Education_Level` VARCHAR(13) NOT NULL, 
	`Marital_Status` VARCHAR(7) NOT NULL, 
	`state_cd` VARCHAR(2) NOT NULL, 
	`Zipcode` INT NOT NULL, 
	`Car_Owner` Varchar(5) NOT NULL, 
	`House_Owner` Varchar(5) NOT NULL, 
	`Personal_loan` Varchar(5) NOT NULL, 
	`contact` VARCHAR(9) NOT NULL, 
	`Customer_Job` VARCHAR(13) NOT NULL, 
	`Income` INT NOT NULL, 
	`Cust_Satisfaction_Score` INT NOT NULL
);
drop table customer
load data infile 'd:/NEW DATA/customer.csv'
into table customer
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select*from customer
load data infile 'd:/NEW DATA/cust_add.csv'
into table customer
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

load data infile 'd:/NEW DATA/cc_add.csv'
into table credit_card
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

select * from credit_card
