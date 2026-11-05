SELECT ROUND(SUM(price), 2) AS total_delivered_revenue
FROM olist_order_items_dataset
INNER JOIN olist_orders_dataset ON olist_order_items_dataset.order_id = olist_orders_dataset.order_id
WHERE order_status = 'delivered';