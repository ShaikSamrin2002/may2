create table manager(
id int,name varchar(30),age int,gender varchar(30)
);
ALTER TABLE MANAGER ADD COLUMN  SALARY INT;
insert into manager values (12,'SUBHAN',30,'MALE',10000);
insert into manager values (13,'SHAMEEM',28,'FEMALE',15000),
(103,'SONIYA',36,'FEMALE',18000),
(104,'SABIYA',38,'FEMALE',20000),
(105,'SAMRIN',25,'FEMALE',18000),
(106,'MUSSU',39,'FEMALE',25000),
(109,'SABIYA',29,'FEMALE',34000);

select name,sum(salary) as total_sal from manager group by name having sum(salary)>10000 order by name;
select age from manager group by age having count(age)=1; -- equal to 1 means one time occurs
select age from manager group by age having count(age)>1; -- return the group which has same ages greater than 1

select gender,max(salary) as max_sal from manager group by gender having max(salary)<20000;


SELECT * FROM MANAGER;
