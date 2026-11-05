SELECT  SUM(price) AS Revenue , product_category_name_english
FROM olist_order_items_dataset
INNER JOIN olist_orders_dataset ON olist_order_items_dataset.order_id = olist_orders_dataset .order_id
INNER JOIN olist_products_dataset ON olist_order_items_dataset.product_id = olist_products_dataset.product_id
LEFT JOIN product_category_name_translation ON olist_products_dataset.product_category_name = product_category_name_translation.product_category_name
WHERE order_status = 'delivered' 
GROUP BY product_category_name_english
ORDER BY Revenue Desc;

