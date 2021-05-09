 SELECT * FROM Заказ
 WHERE DATEDIFF(month, DateExpiration, GETDATE()) >= 1 ;

SELECT * FROM Заказ
WHERE DataOrder BETWEEN '2020-12-23' AND '2020-12-27' AND IdProduct=2;