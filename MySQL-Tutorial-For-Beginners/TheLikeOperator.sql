-- % any number of characters
-- _ single character

SELECT * 
FROM customers
WHERE last_name LIKE 'b%'; -- any # of character after b

SELECT * 
FROM customers
WHERE last_name LIKE 'brush%'; -- any # of character after brush

SELECT * 
FROM customers
WHERE last_name LIKE '%b%'; -- has b somewhere in the last name

SELECT * 
FROM customers
WHERE last_name LIKE '%y'; -- ends last name with y


SELECT * 
FROM customers
WHERE last_name LIKE '_____y'; -- last name has 6 chars, ends at y


SELECT * 
FROM customers
WHERE last_name LIKE 'b____y'; -- last name has 6 chars, starts at b AND ends at y

-- Exercise
/*
	Get the customers whose 
	1. addresses contain TRAIL or AVENUE
    2. phone numbers end with 9

*/
SELECT *
FROM customers
WHERE address LIKE '%TRAIL%' OR 
	  address LIKE '%AVENUE%';

SELECT *
FROM customers
WHERE phone LIKE '%9';



