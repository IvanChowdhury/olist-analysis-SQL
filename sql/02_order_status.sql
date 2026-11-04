SELECT order_status, COUNT(order_status)how 
FROM olist_orders_dataset
GROUP BY order_status;