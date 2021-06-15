SELECT Warehouse.name warehouse_name, SUM(Products.Width*Products.Length*Products.Height*Warehouse.units) volume
FROM Warehouse 
LEFT JOIN Products
ON Warehouse.product_id = Products.product_id
GROUP BY 1

