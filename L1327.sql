SELECT product_name AS PRODUCT_NAME, SUM(unit) AS UNIT
FROM Products
JOIN Orders
ON Products.product_id = Orders.product_id
WHERE order_date BETWEEN "2020-02-01" AND "2020-02-29"
GROUP BY Orders.product_id
HAVING UNIT >= 100

