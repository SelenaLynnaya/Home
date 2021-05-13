USE [AtelierNastya's]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[House] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[IdAddress] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiningMaterials]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiningMaterials](
	[Id] [int] NOT NULL,
	[LiningMaterials] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_LiningMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[IdClient] [int] NOT NULL,
	[IdColor] [int] NOT NULL,
	[IdProductMaterial] [int] NOT NULL,
	[DataOrder] [date] NOT NULL,
	[DateExpiration] [date] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IdType] [int] NOT NULL,
	[IdLiningMaterials] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[Id] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 13.05.2021 15:01:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Address] ([Id], [City], [Street], [House], [DEL]) VALUES (1, N'Москва', N'Школьная', 3, 0)
INSERT [dbo].[Address] ([Id], [City], [Street], [House], [DEL]) VALUES (2, N'Майкоп', N'Адыгейская', 7, 0)
INSERT [dbo].[Address] ([Id], [City], [Street], [House], [DEL]) VALUES (3, N'Анапа', N'Абрикосовая', 301, 0)
INSERT [dbo].[Address] ([Id], [City], [Street], [House], [DEL]) VALUES (4, N'Краснодар', N'Дорожная', 57, 0)
GO
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [IdAddress], [DEL]) VALUES (1, N'Смирнов', N'Александр', N'Иванович', 1, 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [IdAddress], [DEL]) VALUES (2, N'Иванов', N'Максим', N'Петрович', 2, 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [IdAddress], [DEL]) VALUES (3, N' Кузнецова', N'Дарья', N'Николаевна', 3, 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [IdAddress], [DEL]) VALUES (4, N'Соколов', N'Артём', N'Алексеевич', 4, 0)
GO
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (1, N'Белый', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (2, N'Красный', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (3, N'Чёрный', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (4, N'Серый', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (5, N'Хаки', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (6, N'Бежевый', 0)
GO
INSERT [dbo].[LiningMaterials] ([Id], [LiningMaterials], [DEL]) VALUES (1, N'Шерсть', 0)
INSERT [dbo].[LiningMaterials] ([Id], [LiningMaterials], [DEL]) VALUES (2, N'Полиэстер', 0)
INSERT [dbo].[LiningMaterials] ([Id], [LiningMaterials], [DEL]) VALUES (3, N'Тафетта', 0)
INSERT [dbo].[LiningMaterials] ([Id], [LiningMaterials], [DEL]) VALUES (4, N'Атлас', 0)
GO
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (1, N'Сукно', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (2, N'Кашемир', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (3, N'Альпака ', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (4, N'Полиамид', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (5, N'Хлопок', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (6, N'Кожа', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (7, N'Софтшелл', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (8, N'Нейлон', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (9, N'Шерсть', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (10, N'Трикотаж', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (11, N'Дюспо', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (12, N'Велюр', 0)
GO
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (1, 1, 6, 6, CAST(N'2020-12-23' AS Date), CAST(N'2021-03-23' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (2, 2, 1, 7, CAST(N'2020-12-24' AS Date), CAST(N'2021-04-24' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (3, 1, 3, 5, CAST(N'2020-12-25' AS Date), CAST(N'2021-04-25' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (4, 3, 5, 3, CAST(N'2020-12-26' AS Date), CAST(N'2021-03-26' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (5, 4, 1, 1, CAST(N'2020-12-27' AS Date), CAST(N'2021-04-27' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (6, 3, 2, 10, CAST(N'2021-04-28' AS Date), CAST(N'2021-09-28' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdClient], [IdColor], [IdProductMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (7, 2, 4, 17, CAST(N'2021-05-29' AS Date), CAST(N'2021-11-29' AS Date), 0)
GO
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (1, N'Блейзер', 1, 4, 12170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (2, N'Кардиган', 1, 2, 6170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (3, N'Жакет', 1, 1, 9800.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (4, N'Кокон', 2, 3, 8170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (5, N'Редингтон', 2, 3, 10000.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (6, N'Шинель', 2, 3, 6170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (7, N'Бушлат', 3, 1, 9800.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (8, N'Анорак', 3, 4, 5000.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdLiningMaterials], [Price], [DEL]) VALUES (9, N'Косуха', 3, 4, 7990.0000, 0)
GO
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (1, 1, 5, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (2, 1, 10, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (3, 2, 9, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (4, 3, 12, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (5, 3, 10, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (6, 4, 2, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (7, 4, 3, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (8, 5, 7, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (9, 5, 1, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (10, 6, 1, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (11, 6, 3, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (12, 7, 8, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (13, 7, 11, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (14, 8, 6, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (15, 8, 4, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (16, 9, 11, 0)
INSERT [dbo].[ProductMaterial] ([Id], [IdProduct], [IdMaterial], [DEL]) VALUES (17, 9, 6, 0)
GO
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (1, N'Пиджак', 0)
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (2, N'Пальто', 0)
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (3, N'Курта', 0)
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[LiningMaterials] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Material] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ProductMaterial] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Type] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Address] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Address]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Color] FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Color]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ProductMaterial] FOREIGN KEY([IdProductMaterial])
REFERENCES [dbo].[ProductMaterial] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ProductMaterial]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_LiningMaterials] FOREIGN KEY([IdLiningMaterials])
REFERENCES [dbo].[LiningMaterials] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_LiningMaterials]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
