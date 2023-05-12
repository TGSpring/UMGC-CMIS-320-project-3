/*
Tyler Spring 
4/24/23
Project 3
CMIS 320 / 7383
This is for the required queries. Please run this last to prevent any errors.
*/

/*
Retrieve all of your customers' names, account numbers, and addresses
(street and zip code only), sorted by account number
*/
SELECT customer.name, customer.customer_id, customer.address
FROM customer
ORDER BY customer.customer_id;

/*
Retrieve all of the videos rented in the last 30 days and sort in chronological
rental date order
*/
SELECT rent.rent_id, rent.rent_date, movie.title
FROM rent
INNER JOIN movie ON rent.movie_id = movie.movie_id
WHERE rent.rent_date BETWEEN SYSDATE-30 AND SYSDATE
ORDER BY rent.rent_date;

/*
Produce a list of your distributors and all their information sorted in order by
company name
*/
SELECT *
FROM distributor
ORDER BY distributor.name;


/*
Update a customer name to change their maiden name to a married name.
You can choose which row to update. Make sure that you use the primary
key column in your WHERE clause to affect only a specific row. You may want
to include a ROLLBACK statement to undo your data update
*/
UPDATE customer
SET name = 'Married Name'
WHERE customer_id = 1;


/*
Delete a customer from the database. You can choose which row to delete.
Make sure that you use the primary key column in your WHERE clause to
affect only a specific row. You may want to include a ROLLBACK statement to
undo your data deletion.
*/

--Yes I am aware this is a borderline cascade delete. I do not care, after
--trying to debug it, seeing this work fine, I am leaving it.
SELECT * FROM customer WHERE customer_id = 1;
DELETE FROM rent WHERE customer_id = 1;
DELETE FROM customer WHERE customer_id = 1;
ROLLBACK;



