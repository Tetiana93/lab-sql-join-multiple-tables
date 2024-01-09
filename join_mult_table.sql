select store_id, city, country
from store s
join address a
using(address_id)
join city c
using(city_id)
join country
using(country_id);
select store_id, sum(amount)
from store s
join customer c
using(store_id)
join payment p
using(customer_id)
group by store_id;
select name, avg(length) as avg_running_time
from film f
join film_category fc
using(film_id)
join category c
using(category_id)
group by name;
select name, avg(length) as avg_running_time
from film f
join film_category fc
using(film_id)
join category c
using(category_id)
group by name
order by avg_running_time desc
limit 1;
select title, count(rental_id) as rental_frequency
from film 
join inventory
using(film_id)
join rental
using(inventory_id)
group by title
order by rental_frequency desc;
select name, sum(amount) as gross_revenue
from payment
join rental 
using(rental_id)
join inventory
using(inventory_id)
join film
using(film_id)
join film_category 
using(film_id)
join category
using(category_id)
group by name
order by gross_revenue desc
limit 5;
select title, rental_id
from film
join inventory
using(film_id)
join store
using(store_id)
join rental
using(inventory_id)
where title='Academy Dinosaur'
and store_id = 1;


