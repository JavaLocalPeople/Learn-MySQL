-- limit to 3 columns
SELECT *
FROM customers
LIMIT 3;

-- grab all
SELECT *
FROM customers
LIMIT 300;

/*
	page 1: 1 - 3
    page 2: 4 - 6
    page 3: 7 - 9
*/
-- 6 is the offset, 3 is the selection
SELECT *
FROM customers
LIMIT 6, 3;

-- Exercise
/*
	1. Get the top 3 loyal customers (based on points)
*/
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3; -- LIMIT Clause should come to the end

