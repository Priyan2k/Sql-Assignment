create database firebird;
use firebird;

-- Question 1 :
create table students( 
Name varchar(20) not null,
Age int not null,
Batch int not null,
Section varchar(1) not null);
insert into students values 
('Sachin', 22, 6, 'A'),
('Aravind', 25, 5, 'A'),
('Paveena', 20, 6, 'B'),
('Sakshi' , 21, 5, 'A'),
('Pradesh', 23, 5, 'B');
select * from students;

-- Question 2:
create table sales( 
ID int,
Product_Name varchar(20),
Price_per_unit int,
Quantity int);
insert into sales values 
(1,'Shoes', 3500, 6),
(2,'Shirt', 1500, 20),
(3,'T-Shirt', 500, 32),
(4,'Jacket', 2000, 45),
(5,'Track', 800, 25),
(6,'Socks', 200, 23),
(7,'Shorts', 400, 30),
(8,'Pant', 2200, 17);

select Price_per_unit, Product_Name from sales;

-- Question 3:
create table info( 
ID int not null,
Name varchar(20) not null,
Age int not null);

insert into info values 
(1,'Bob', 21),
(2,'Sam', 19),
(3,'Jill', 18),
(4,'Jim' , 21),
(5,'Sally', 19),
(6,'Sally', 20),
(7,'Sally', 21);

select sum(Age) from info;

-- Question 4:
select count(age),age from info group by age;

-- Question 5:
create table turn_over( 
ID int not null,
Year int not null,
Revenue int);

insert into turn_over values 
(1,2018, 60),
(1,2021, 40),
(1,2020, 70),
(2,2021 , -10),
(3,2018, 20),
(3,2016, 40),
(4,2021, 50);

select Revenue, Year from turn_over where year=2021 and Revenue>0; 

