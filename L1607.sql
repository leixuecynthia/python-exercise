SELECT seller_name 
FROM Seller s
LEFT JOIN Orders o ON s.seller_id = o.seller_id AND LEFT(sale_date, 4) = '2020'
WHERE 
    o.seller_id IS NULL
ORDER BY seller_name   