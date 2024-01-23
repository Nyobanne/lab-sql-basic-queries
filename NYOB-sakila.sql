use sakila;
#Retrieve all the data from the tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#titles of all films
SELECT title FROM film f;
#List of languages used in films
SELECT name FROM language l;
#first names of all employees from the staff table
SELECT last_name FROM staff s ;
#Unique release years
SELECT DISTINCT release_year FROM film;
#5.1 Determine the number of stores that the company has.
SELECT COUNT(*) FROM inventory;
#5.2 Determine the number of employees that the company has.
SELECT COUNT (*) FROM staff s ;
#5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT( inventory_id ) as numOfDVDsOnRent FROM rental WHERE return_date IS NULL;
SELECT SUM(DISTINCT (film_id)) FROM inventory;
#Retrieve all actors with the first name "SCARLETT".

#Retrieve the 10 longest films.
SELECT film_id FROM film ORDER BY length  DESC LIMIT 10;
#Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film WHERE title LIKE '_ARMAGEDDON' OR 'ARMAGEDDON_' AND WHERE length>100
#Determine the number of films that include Behind the Scenes content