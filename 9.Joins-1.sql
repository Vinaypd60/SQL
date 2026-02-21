-- Joins - when the data is in 2 or more tables and if we 
-- want to bring that data from multiple tables into 
-- single view, we use joins

-- Joins are used to combine rows between 2 or more tables
-- based on common column between them

-- Joins are mainly divided into 2 types
-- Inner Join and Outer join
-- Outer join - 3 types
-- Left outer join or Left join
-- Right outer join or Right join
-- Full outer join or Full join

use durgasoft

-- cid,cname

create table customer(cid int,cname varchar(10))

insert into customer
values (1,'A'),(2,'B'),(3,'C'),(4,'D')

select * from customer

create table c_age(cid int,age int)
insert into c_age
values (1,21),(2,22),(3,24),(5,25)

select * from customer;
select * from c_age


-- Inner join - It returns only the records which have
-- matching values between the 2 tables 
-- based on the common column

select * from customer
inner join c_age
on customer.cid = c_age.cid

select * from table1
inner join table2
on table1.commcol = table2.commcol

use durgasoft

-- Left join - It returns all the data from the left table and matching values 
-- from the right table, and for non matching values it returns null.

-- syn
select * from table1
left join table2
on table1.commcol = table2.commcol


select * from customer
left join c_age
on customer.cid = c_age.cid

-- Right join - It returns all the data from the right table and matching values 
-- from the left table, and for non matching values it returns null.

select * from customer
right join c_age
on customer.cid = c_age.cid


-- Full - It displays complete data from 2 tables
-- Full join - Left join + Right join
-- Full join - In mysql we cannot perform full join
-- but if we want to perform we need to use union 

select * from customer
left join c_age
on customer.cid = c_age.cid
union
select * from customer
right join c_age
on customer.cid = c_age.cid;

-----------------------------------------------------------------

select * from customer
inner join c_age
on customer.cid = c_age.cid

select customer.cid,cname,age from customer
inner join c_age
on customer.cid = c_age.cid

-- ambiguous Error -  Whenever we are performing joins, there will be common
-- columns, so to display the common column sql will get confused from which
-- table common column should be used.
-- so it throws ambiguous Error, to aviod that error we need to specify
-- table name or alias name before common col name in select command.

select c.cid,cname,age from customer as c
inner join c_age as a
on c.cid = a.cid

select c.cid,cname,age from customer as c
inner join c_age as a
on c.cid = a.cid

select * from customer;
select * from c_age

-- Fetch only the data of the customers whose age is not available

select c.cid,cname,age from customer as c
left join c_age as a
on c.cid = a.cid
where age is null

use mavenmovies

select * from actor;
select * from film_actor

-- inner join
select * from actor as a
inner join film_actor as fa
on a.actor_id = fa.actor_id

-- join 3 tables
-- actor, film_actor and film table

select * from actor;
select * from film_actor;
select * from film

select * from actor as a
inner join film_actor as fa
on a.actor_id = fa.actor_id
inner join film as f
on fa.film_id = f.film_id