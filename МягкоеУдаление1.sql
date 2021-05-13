ALTER TABLE Orders
ADD DEL bit default 0;
GO

ALTER TABLE Product
ADD DEL bit default 0;
GO

ALTER TABLE Material
ADD DEL bit default 0;
GO

ALTER TABLE Color
ADD DEL bit default 0;
GO

ALTER TABLE Address
ADD DEL bit default 0;
GO

ALTER TABLE Client
ADD DEL bit default 0;
GO

ALTER TABLE Type
ADD DEL bit default 0;
GO

ALTER TABLE LiningMaterials
ADD DEL bit default 0;
GO

ALTER TABLE ProductMaterial
ADD DEL bit default 0;
GO