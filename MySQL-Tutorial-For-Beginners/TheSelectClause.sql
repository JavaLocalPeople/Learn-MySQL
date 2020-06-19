SELECT 
	first_name, 
    last_name, 
    points, 
    (points + 10) * 100 AS 'discount factor' -- use alias
FROM customers;

SELECT DISTINCT state
FROM customers;

-- Exercise
SELECT 
	name, 
    unit_price,
    (unit_price * 1.1) AS new_price
FROM products
