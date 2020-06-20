-- NULL means absent of the value

SELECT *
FROM customers
WHERE phone IS NULL;

SELECT *
FROM customers
WHERE phone IS NOT NULL;

-- Exercise
/*
	1. Get the orders that are not shipped
*/

SELECT *
FROM orders
WHERE shipped_date IS NULL;










