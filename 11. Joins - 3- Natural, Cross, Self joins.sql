-- Natural Join, cross join and self join

use durgasoft
select * from customer;
select * from c_age

-- Natural join - if there is common col b/w 2 tables, 
-- it will create a join b/w them - it displays common b/w them just like inner join
-- but common col will be identified by sql itself, because of this we don't give common column name in syntax i.e we don't use ON 
-- in output it displays common col name only once

select * from customer 
natural join c_age
 
 -- The above syntax performs natural join,  we don't use ON condition also

select * from customer as c
inner join c_age as a
on c.cid = a.cid

use mavenmovies

select * from customer;
select * from payment

 select * from customer
 natural join payment
 
 -- This query returns blank because we have 2 common columns in both tables i.e customer_id and last_update in both the tables, 
 -- so sql will start joining the tables by using 2 common columns but as we have different data in the columns
 -- it cannot perform join and we will get output as blank table
 
 
 
-- cross join - cartesian product
-- it will combine each row with all the rows in other table

use durgasoft
 select * from customer;
select * from c_age;

select * from customer
cross join c_age

-- self join - if Any table is creating the join 
-- with itself

create table emp (ID int, ename varchar(10),manager_id int)

insert into emp
values (1,'A',2),(2,'B',1),(3,'C',3),(4,'D',1),(5,'E',1)

select * from emp

select * from emp as e
 join emp as m
on e.manager_id = m.id
