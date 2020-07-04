-- INNER JOIN: Only see customer who ordered 
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- LEFT JOIN: get all the customers table, whether the condition is true or not
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- RIGHT JOIN: get all the orders table, whether the condition is true or not
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
RIGHT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- OUTER keyword is optional
-- LEFT JOIN == LEFT OUTER JOIN
-- RIGHT JOIN == RIGHT OUTER JOIN

-- Exercise
/*
	join product table with order_item table
	1. product_id, name and quantity

*/
SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
	ON oi.product_id = p.product_id;







