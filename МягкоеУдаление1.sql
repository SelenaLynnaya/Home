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

ALTER TABLE ColorMaterials
ADD DEL bit default 0;
GO

ALTER TABLE Client
ADD DEL bit default 0;
GO

ALTER TABLE Type
ADD DEL bit default 0;
GO

ALTER TABLE LiningMaterial
ADD DEL bit default 0;
GO

ALTER TABLE MaterialProduct
ADD DEL bit default 0;
GO