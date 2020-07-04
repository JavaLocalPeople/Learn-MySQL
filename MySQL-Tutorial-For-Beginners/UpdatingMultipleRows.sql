-- UPDATE invoices
-- SET 
-- 	payment_total = invoice_total * 0.5,
--     payment_date = due_date
-- WHERE client_id IN (3, 4);

/*
	UPDATE any customers born before 1990 to give 50 extra points

*/

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-01-01';