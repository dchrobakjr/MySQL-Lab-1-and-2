-- Lab Number 1 

select 
	*
from 
	sakila.actor;

select 
	*
from
	sakila.film;

select
	*
from sakila.customer;


select
	title as Title
from sakila.film;

select distinct 
	language_id as language
from sakila.film;

select distinct 
	name as language
from sakila.language;


select
	*
from
	sakila.store;

select
	sum(store_id)
from sakila.store;

select
	count(*)
from sakila.store;

select
	count(*)
from 
	sakila.staff;
select 
	*
from sakila.staff;

select
	sum(staff_id)
from sakila.staff;

select 
	concat(first_name, last_name) as 'full_name'
from sakila.staff;

select 
	first_name
from sakila.staff;


-- lab number 2 --


select
	*
from 
	sakila.actor
where
	first_name = "Scarlett";
    
select
	*
from 
	sakila.actor
where
	last_name = "Johansson";
    
select distinct
	count(*)
from 
	sakila.film;
    
select
    *
from 
	sakila.rental;   

select
	count(*)
from
	sakila.rental;
    
select
	count(rental_date)
from sakila.rental;


select 
	max(rental_duration)
from sakila.film;

select
	min(rentel_duration)
from sakila.film;

select
	max(length) as max_duration
from
	sakila.film;
    
select
	min(length) as min_duration
from 
	sakila.film;
    
select
	avg(length)
from sakila.film;

select
	floor(avg(length)/60) as hours_, avg(length)%60 as minutes
from 
	sakila.film;

select 
	concat(floor(avg(length/60),':' , ceiling(avglength)%60)) as hour_minutes
from
	sakila.film;



select
	count(*)
from
	sakila.film
where 
	length  > 180;
    
    
    
    
select 
	* 
from sakila.customer;

select
	first_name, lower(email)
from	sakila.customer;

select 
	concat(first_name, ' ' , last_name, ' - ', lower(email))
from
	sakila.customer;
    
select 
	left(first_name,1)
from sakila.customer;

select 
	lower(right(first_name, length(first_name)-1)) 
from 
	sakila.customer;

select 
	concat(left(first_name,1), lower(right(first_name, length(first_name)-1)), ' ',last_name, ' - ', lower(email))
from
	sakila.customer;
    
select 
	concat(left(first_name,1), lower(right(first_name, length(first_name)-1)), ' ',last_name, ' - ', lower(email))
from 
	sakila.customer;
 
    
select
	max(length(title))
from 
	sakila.film