-- NaturalJoins, not recommend to use.

USE sql_store;

-- join based on the common column name
SELECT 
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c;


