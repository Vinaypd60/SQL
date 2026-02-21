-- Fetch the firstname and lastname of actors worked in movies starting with A

select first_name, last_name, title from actor as a
inner join film_actor as fa
on a.actor_id = fa.actor_id
inner join film as f
on fa.film_id = f.film_id
where title like 'A%'

-- display full name of actors for above query

select concat(first_name,' ',last_name) as Full_Name,title from actor as a
inner join film_actor as fa
on a.actor_id = fa.actor_id
inner join film as f
on fa.film_id = f.film_id
where title like 'A%'

select concat(first_name,' ',last_name) Full_Name,title from actor as a
inner join film_actor fa
on a.actor_id = fa.actor_id
inner join film as f
on fa.film_id = f.film_id
where title like 'A%'

-- join customer table and payment table

select * from customer as c
inner join payment as p
on c.customer_id = p.customer_id

-- fetch the total amount paid by Mary Smith

select sum(amount) from payment as p
inner join customer as c
on p.customer_id = c.customer_id
where first_name = 'Mary' and last_name = 'smith'

use examples
select * from country;
select * from city

-- display all the cities in india

select city from city as ct
inner join country as c
on c.country_id = ct.country_id
where country = "India"

-- Display the cities from India whose names start with ‘B’

use example1

select * from country;
select * from city;
select * from customer;
select * from address

-- Display all the customers whose name starts with A and lives in India

select first_name ,last_name from customer as cu
inner join address as ad
on cu.address_id = ad.address_id
inner join city as ct
on ad.city_id = ct.city_id 
inner join country as c
on ct.country_id = c.country_id
where country = "India" and first_name like 'A%'






