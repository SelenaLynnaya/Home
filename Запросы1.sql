SELECT * FROM Orders
WHERE DATEDIFF(day, DateExpiration, GETDATE()) >= 1 ;

SELECT Type ,DataOrder
From Type INNER JOIN Product
ON Type.Id=Product.IdType
INNER JOIN Orders 
ON Orders.IdProduct= Product.Id
WHERE Orders.IdProduct IN(SELECT query_in_1.IdProduct
FROM (SELECT IdProduct,SUM(IdProduct) AS sum_amount
FROM Orders
GROUP BY IdProduct)query_in_1
INNER JOIN (SELECT IdProduct,SUM(IdProduct) AS sum_amount
FROM Orders
GROUP BY IdProduct) query_in_2
ON query_in_1.sum_amount= query_in_2.sum_amount)
AND DATEDIFF(month, DataOrder, GETDATE()) >= 5;