/*
	Join order_items table in sql_store
    And products table in sql_inventory
*/

SELECT *
FROM order_items oi
JOIN sql_inventory.products p
	ON oi.product_id = p.product_id;

-- ONLY prefix the table that is not in your database
USE sql_inventory;

SELECT *
FROM sql_store.order_items oi
JOIN products p
	ON oi.product_id = p.product_id;    
    