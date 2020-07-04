SELECT
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
ORDER BY c.customer_id;





SELECT
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name AS shipper_name
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- Avoid use RIGHT JOIN because it is hard to read the code

-- Exercise
/*

	1. order_date, order_id, first_name, shipper, status

*/

SELECT 
	o.order_date,
    o.order_id,
    c.first_name,
    sh.name,
    os.name
FROM orders o
LEFT JOIN customers c
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
LEFT JOIN order_statuses os
	ON o.status = os.order_status_id
ORDER BY os.name







