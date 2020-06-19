SELECT * 
FROM Customers
WHERE points > 3000; -- greater than operator

/*

 >
 >=
 <
 <=
 =
 !=

*/

-- located in VA
SELECT * 
FROM Customers
WHERE state = 'VA';

-- not located in VA
SELECT * 
FROM Customers
WHERE state != 'VA';

SELECT *
FROM Customers
WHERE birth_date > '1990-01-01';

-- Exercise
SELECT *
FROM ORDERS
WHERE order_date > '2019-01-10';




