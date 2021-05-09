ALTER TABLE Клиент
ADD DEL bit default 0;
GO

ALTER TABLE Карта
ADD DEL bit default 0;
GO

ALTER TABLE Идентификатор
ADD DEL bit default 0;
GO

ALTER TABLE ИдентификаторКарта
ADD DEL bit default 0;
GO