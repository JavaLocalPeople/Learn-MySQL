-- customer_id is the default sorted item because customer_id is the primary key

SELECT *
FROM customers
ORDER BY first_name;

SELECT *
FROM customers
ORDER BY first_name DESC;

SELECT *
FROM customers
ORDER BY state, first_name;

SELECT *
FROM customers
ORDER BY state DESC, first_name DESC;

-- MySQL could do this, other might not
SELECT first_name, last_name
FROM customers
ORDER BY birth_date;

-- You should avoid sorting column by position, create dependency. 
SELECT first_name, last_name
FROM customers
ORDER BY 1, 2;

-- Exercise
/*
	1. Select order_id to 2 AND sort based on the total price 
    in order_items table
*/

SELECT *, unit_price * quantity AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;


