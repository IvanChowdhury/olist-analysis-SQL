SELECT order_status,
       COUNT(*) AS orders,
       ROUND(100.0 * COUNT(*) / (( SELECT COUNT(*) FROM olist_orders_dataset ) ), 2) AS pct_of_orders
FROM olist_orders_dataset
GROUP BY  order_status
ORDER BY pct_of_orders DESC

