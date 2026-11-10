WITH monthly AS (
SELECT  strftime('%Y-%m', b.order_purchase_timestamp) AS month, SUM(a.price) AS revenue,   COUNT(DISTINCT a.order_id) AS orders
FROM olist_order_items_dataset a
INNER JOIN olist_orders_dataset b ON a.order_id = b.order_id
WHERE order_status = 'delivered' 
GROUP BY month
)
SELECT month,  orders, revenue,
LAG (revenue) OVER (ORDER BY month) AS prev_revenue,
revenue - LAG(revenue) OVER (ORDER BY month) AS change,
ROUND(100.0 * (revenue - LAG(revenue) OVER (ORDER BY month))
      / LAG(revenue) OVER (ORDER BY month), 1) AS growth_pct
FROM monthly
WHERE month >= '2017-01'
ORDER BY month;
