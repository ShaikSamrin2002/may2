create table car(
car_no int,car_name varchar(40), car_price int ,car_quantity int);
insert into car values(112,'TESLA',12000,2),
(113,'BMW',23000,3),
(114,'AUDI',25000,4),
(115,'TATA',12000,5),
(119,'KIA',23000,6);
select * from car;

select count(car_name),car_price from car group by car_price;

select count(car_name) as count_number,car_price from car group by car_price;

select count(car_name) from car group by car_price having car_price>12000;
select count(*) from car group by car_price having car_price>12000;

create table visit(
entry_date date,price int,duration int);
insert into visit values('2023-04-23',1000,20),
('2023-03-30',2000,30),
('2023-04-23',3000,40),
('2023-05-12',4000,50),
('2023-03-30',5000,60);
select * from visit;

select entry_date,count(*) from visit group by entry_date;
-- extract keyword examples --
select extract(year from entry_date) as year,
extract(month from entry_date) as month,
extract(day from entry_date) as day,
round(avg(price),2) from visit-- round the 2 decimal points
group by extract(year from entry_date),extract(month from entry_date),extract(day from entry_date)
order by extract(year from entry_date),extract(month from entry_date); 
select * from visit;

select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*) >1 order by entry_date;
select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*) >=1 order by entry_date;
select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*) >=2 order by entry_date;
select entry_date,round(avg(price),2) as avg_price from visit group by entry_date having count(*)!=1 order by entry_date;
select entry_date,round(avg(price),2) as avg_price from visit where duration >30 
group by entry_date having count(*) > 0 order by entry_date;

select * from customer;
select city,count(*) as customer_city from customer group by city;


create table employee (
emp_id int,name varchar(30),age int,country varchar(25)
);

insert into employee values(100,'swapna',35,'INDIA'),
(101,'SAMRIN',23,'US'),
(102,'YAMUNA',39,'US'),
(103,'SWATHI',40,'PAKISTAN'),(105,'SUNANDHA',50,'INDIA');
insert into employee values(106,'zaibu',27,'INDIA');

select * from employee;
select count(country),country from employee group by country having count(country)>=2;
select count(country) as country_no ,country from employee group by country having count(country)>=2;
select country,count(country) from employee group by  country having max(age)>30;


