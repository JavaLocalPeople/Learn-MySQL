-- Combine rows from multiple table, queries. 
SELECT *
FROM orders;

SELECT 
	order_id,
    order_date,
    'Active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id,
    order_date,
    'Archived' AS status
FROM orders
WHERE order_date < '2019-01-01';

SELECT first_name -- name based on this column
FROM customers
UNION 
SELECT name
FROM shippers;

-- UNION must combine the same amount of column


-- Exercise
/*
	customer_id, first_name, points, type
    - type is calculated based on points
		- < 2000 - Bronze
        - >= 2000 AND <= 3000 Sliver
        - > 3000 - Gold
	- sorted based on first_name
*/

SELECT 
	customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE customers.points < '2000'
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE customers.points >= '2000' AND customers.points <= '3000' -- OR "BETWEEN 2000 AND 3000"
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE customers.points > '3000'
ORDER BY first_name;


