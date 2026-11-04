SELECT MIN(order_purchase_timestamp) AS first_order,
				 MAX(order_purchase_timestamp) AS last_order
FROM olist_orders_dataset;