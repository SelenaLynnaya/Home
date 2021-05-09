ALTER TABLE ТоварХЦвет
ADD DEL bit default 0;
GO

ALTER TABLE Товар
ADD DEL bit default 0;
GO

ALTER TABLE Заказ
ADD DEL bit default 0;
GO

ALTER TABLE Цвет
ADD DEL bit default 0;
GO

ALTER TABLE Материалы
ADD DEL bit default 0;
GO

ALTER TABLE Клиент
ADD DEL bit default 0;
GO
