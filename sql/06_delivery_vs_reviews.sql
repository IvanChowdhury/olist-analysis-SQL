SELECT
  CASE
    WHEN julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp) <= 7  THEN '0-7 days'
    WHEN julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp) <= 14 THEN '8-14 days'
    ELSE '15+ days'
  END AS delivery_bucket,
  COUNT(*) AS orders,
  ROUND(AVG(julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp)), 1) AS avg_delivery_days,
  ROUND(AVG(r.review_score), 2) AS avg_review_score
FROM olist_orders_dataset o
INNER JOIN (
  SELECT order_id, AVG(review_score) AS review_score
  FROM olist_order_reviews_dataset
  GROUP BY order_id
) r ON o.order_id = r.order_id
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer_date IS NOT NULL
GROUP BY delivery_bucket
ORDER BY MIN(julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp));