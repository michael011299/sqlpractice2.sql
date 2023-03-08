-- Average runtime of films by category 

CREATE VIEW `average_runtime_per_category` AS (
SELECT 
 `c`.`name`, AVG(`f`.`length`) AS `average_runtime`
 FROM 
 `sakila`.`film` AS `f`
 JOIN 
 `sakila`.`film_category` AS `fc` ON `f`.`film_id` = `fc`.`film_id`
 JOIN `sakila`.`category` AS `c` ON `fc`.`category_id` = `c`.`category_id`
 GROUP BY `c`.`category_id`
 ORDER BY `average_runtime` DESC
 );
 
 SELECT * FROM `average_runtime_per_category`;

-- which last names appear more than once

SELECT count(last_name), last_name from actor
group by last_name
order by count(last_name) DESC;

-- retrive all movies that fred costner has appeared in 

create view fred_films AS (
select * 
from sakila.film as f
join sakila.film_actor as fa ON f.film_id = fa.film_id
);

-- find out which location has the most copies of bucket brotherhood

select count(film_id), store_id from inventory 
where film_id = 103
GROUP BY store_id;

-- create a list of categories and the number of films for each category 

-- create a list of actors and the number of movies by each actor 

--is academy dinosaur available to rent from store 1?

-- when is academy dinsosaur due?
