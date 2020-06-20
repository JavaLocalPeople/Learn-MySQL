USE sql_store;

-- Join 3 tables
SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON os.order_status_id = o.status;

-- Exercise
/*

1. Join 3 tables, payments, payments_method and clients
	payments - payments_method: payment_method
    clients - payments: client_id

*/

USE sql_invoicing;

SELECT 
	p.date,
    p.invoice_id,
    p.
	c.name, 
    pm.name
FROM payments p
JOIN payment_methods pm
	ON pm.payment_method_id = p.payment_method
JOIN clients c
    ON c.client_id = p.client_id;






