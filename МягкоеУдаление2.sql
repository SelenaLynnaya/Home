ALTER TABLE Type
ADD DEL bit default 0;
GO

ALTER TABLE Client
ADD DEL bit default 0;
GO

ALTER TABLE Contract
ADD DEL bit default 0;
GO