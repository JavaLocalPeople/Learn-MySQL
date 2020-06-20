SELECT *
FROM customers
WHERE last_name LIKE '%field%';

-- identical as above
SELECT *
FROM customers
WHERE last_name REGEXP 'field';

-- last name starts at field
SELECT *
FROM customers
WHERE last_name REGEXP '^field';

-- last name ends with field
SELECT *
FROM customers
WHERE last_name REGEXP 'field$';

-- last name ends with field OR mac
SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac';


-- last name has g, i or m that is before e
SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';


-- last name has a to h that is before e
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';

-- ^ beginning
-- $ end
-- | logical or
-- [abcd] individual char
-- [-] : range

-- Exercise
/*
	Get the customers whose
    1. first names are ELKA or AMBUR
    2. last names end with EY or ON
    3. last names start with MY or contains SE
    4. last names contain B followed by R or U
*/

-- 1
SELECT *
FROM customers
WHERE first_name REGEXP 'ELKA|AMBUR';

-- 2
SELECT *
FROM customers
WHERE last_name REGEXP 'EY$|ON$';

-- 3
SELECT *
FROM customers
WHERE last_name REGEXP '^MY|SE';

-- 4
SELECT *
FROM customers
WHERE last_name REGEXP 'B[RU]';




















