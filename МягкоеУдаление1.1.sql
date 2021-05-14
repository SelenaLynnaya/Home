ALTER TABLE Orders
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Product
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Material
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Color
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Address
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Client
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Users
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE UserData
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE Role
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE MaterialColor
ADD IsDeleted bit default 0 not null;
GO

ALTER TABLE ProductMaterial
ADD IsDeleted bit default 0 not null;
GO