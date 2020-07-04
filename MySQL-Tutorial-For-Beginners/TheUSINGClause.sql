SELECT 
	o.order_id,
    c.first_name
FROM orders o 
JOIN customers c
	ON o.customer_id = c.customer_id;

-- Same as above
SELECT 
	o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders o 
JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh 
	USING (shipper_id);
    
-- USING Can't join with 2 table that uses different column name
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id AND
	   oi.product_id = oin.product_id;
       
SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	USING (order_id, product_id);
    
-- Exercise
USE sql_invoicing;

/*
	date, client, amount, name
*/

SELECT 
	p.date,
	c.name,
    p.amount,
    pm.name
FROM payments p 
JOIN clients c 
	USING (client_id)
JOIN payment_methods pm 
	ON p.payment_method = pm.payment_method_id;






    
    