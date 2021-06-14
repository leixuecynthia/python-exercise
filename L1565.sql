SELECT  LEFT(order_date,7) month, COUNT(DISTINCT order_id) order_count, COUNT(distinct customer_id) customer_count
FROM Orders
WHERE invoice > 20
GROUP BY 1

