SELECT LOWER(TRIM(product_name)) PRODUCT_NAME, DATE_FORMAT(sale_date, "%Y-%m") SALE_DATE, COUNT(sale_id) TOTAL
FROM Sales
GROUP BY 1, 2
ORDER BY 1, 2;
