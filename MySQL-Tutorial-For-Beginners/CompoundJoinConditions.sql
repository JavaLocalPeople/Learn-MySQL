-- There is time you can't use single column to identify stuff
-- This is called compound join condition

SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id