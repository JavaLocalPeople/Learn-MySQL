SELECT *
FROM Customers
WHERE state = 'VA' OR state = 'GA' OR state = 'FL';

SELECT *
FROM Customers
WHERE state IN ('VA', 'FL', 'GA');

SELECT *
FROM Customers
WHERE state NOT IN ('VA', 'FL', 'GA');

-- Exercise
SELECT *
FROM products
WHERE quantity_in_stock IN(49, 38, 72);








