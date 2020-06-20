/*
	INNER is an optional keyword here

*/
SELECT * 
FROM orders
INNER JOIN customers 
	ON orders.customer_id = customers.customer_id;



SELECT order_id, first_name, last_name
FROM orders
INNER JOIN customers 
	ON orders.customer_id = customers.customer_id;
    
-- qualify the column by prefix it
SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
INNER JOIN customers 
	ON orders.customer_id = customers.customer_id;
    
-- apply alias
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
INNER JOIN customers c
	ON o.customer_id = c.customer_id;
    
-- Exercise
/*
	1. Look at order_item table. Join this table with products table
    for each order, return order_id, product_id, quantity, unit_price
*/
	
SELECT oi.order_id, p.product_id, oi.quantity, oi.unit_price
FROM order_items oi
INNER JOIN products p ON oi.product_id = p.product_id;
   
   
   
   
    
    
    
    
    