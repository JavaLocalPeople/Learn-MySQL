-- CREATE TABLE orders_archived AS
-- SELECT * FROM orders;

-- INSERT INTO orders_archived
-- SELECT * 
-- FROM orders
-- WHERE order_date < '2019-01-01';

/*

Exercise
	
    - looks at invoices table, copy it to invoices_archived
	- you want to have client_name column
    - Only copy the invoice that do have payment (based on payment_date)


*/

USE sql_invoicing;

CREATE TABLE invoices_archived AS
SELECT 
	i.invoice_id,
    i.number,
    c.name AS client,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
FROM invoices i
JOIN clients c
	USING (client_id)    
WHERE payment_date IS NOT NULL;
















