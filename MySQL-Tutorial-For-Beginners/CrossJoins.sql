-- CROSS JOIN: Combine every record in both table
-- Sm

SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p -- explicit syntax
ORDER BY c.first_name;


SELECT 
	c.first_name AS customer,
    p.name AS product
FROM customers c, products p -- implicit syntax
ORDER BY c.first_name;


-- Exercise
/*
	1. Do a cross join between shippers and products
		- Use implicit syntax
        - Use explicit syntax
*/

SELECT 
	sh.name AS shipper,
    p.name AS product
FROM products p, shippers sh
ORDER BY sh.name;

SELECT
	sh.name AS shipper,
    p.name AS product
FROM products p
CROSS JOIN shippers sh
ORDER BY sh.name;


