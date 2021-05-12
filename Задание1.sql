USE [Ateliers]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.05.2021 11:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 12.05.2021 11:15:22 ******/
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
/****** Object:  Table [dbo].[ColorMaterials]    Script Date: 12.05.2021 11:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorMaterials](
	[Id] [int] NOT NULL,
	[IdMaterials] [int] NOT NULL,
	[IdColor] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_ColorMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LiningMaterial]    Script Date: 12.05.2021 11:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LiningMaterial](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_LiningMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 12.05.2021 11:15:22 ******/
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
/****** Object:  Table [dbo].[MaterialProduct]    Script Date: 12.05.2021 11:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialProduct](
	[Id] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[IdLiningMaterial] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_MaterialProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12.05.2021 11:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdClient] [int] NOT NULL,
	[IdColorMaterials] [int] NOT NULL,
	[DataOrder] [date] NOT NULL,
	[DateExpiration] [date] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.05.2021 11:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IdType] [int] NOT NULL,
	[IdColorMaterials] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 12.05.2021 11:15:22 ******/
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
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (1, N'Смирнов', N'Александр', N'Иванович', N'Москва', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (2, N'Иванов', N'Максим', N'Петрович', N'Майкоп', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (3, N' Кузнецова', N'Дарья', N'Николаевна', N'Анапа', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (4, N'Соколов', N'Артём', N'Алексеевич', N'Краснодар', 0)
GO
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (1, N'Белый', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (2, N'Красный', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (3, N'Чёрный', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (4, N'Серый', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (5, N'Хаки', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (6, N'Бежевый', 0)
GO
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (1, 1, 3, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (2, 1, 5, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (3, 2, 1, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (4, 2, 6, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (5, 3, 4, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (6, 3, 5, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (7, 4, 1, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (8, 4, 3, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (9, 5, 3, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (10, 5, 4, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (11, 6, 1, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (12, 6, 2, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (13, 7, 5, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (14, 7, 3, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (15, 8, 5, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (16, 8, 6, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (17, 9, 3, 0)
INSERT [dbo].[ColorMaterials] ([Id], [IdMaterials], [IdColor], [DEL]) VALUES (18, 9, 2, 0)
GO
INSERT [dbo].[LiningMaterial] ([Id], [Name], [DEL]) VALUES (1, N'Шерсть', 0)
INSERT [dbo].[LiningMaterial] ([Id], [Name], [DEL]) VALUES (2, N'Полиэстер', 0)
INSERT [dbo].[LiningMaterial] ([Id], [Name], [DEL]) VALUES (3, N'Тафетта', 0)
INSERT [dbo].[LiningMaterial] ([Id], [Name], [DEL]) VALUES (4, N'Атлас', 0)
GO
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (1, N'Сукно', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (2, N'Кашемир', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (3, N'Полиамид', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (4, N'Хлопок', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (5, N'Кожа', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (6, N'Софтшелл', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (7, N'Нейлон', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (8, N'Шерсть', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (9, N'Трикотаж', 0)
GO
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (1, 1, 3, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (2, 2, 3, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (3, 3, 4, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (4, 4, 4, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (5, 5, 4, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (6, 6, 3, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (7, 7, 1, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (8, 8, 2, 0)
INSERT [dbo].[MaterialProduct] ([Id], [IdMaterial], [IdLiningMaterial], [DEL]) VALUES (9, 9, 1, 0)
GO
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (1, 4, 1, 4, CAST(N'2020-12-23' AS Date), CAST(N'2021-03-23' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (2, 4, 2, 3, CAST(N'2020-12-24' AS Date), CAST(N'2021-04-24' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (3, 3, 1, 17, CAST(N'2020-12-25' AS Date), CAST(N'2021-04-25' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (4, 2, 3, 15, CAST(N'2020-12-26' AS Date), CAST(N'2021-03-26' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (5, 1, 4, 7, CAST(N'2020-12-27' AS Date), CAST(N'2021-04-27' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (6, 6, 3, 1, CAST(N'2021-04-28' AS Date), CAST(N'2021-09-28' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterials], [DataOrder], [DateExpiration], [DEL]) VALUES (7, 9, 2, 10, CAST(N'2021-05-29' AS Date), CAST(N'2021-11-29' AS Date), 0)
GO
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (1, N'Блейзер', 1, 4, 12170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (2, N'Кардиган', 1, 8, 6170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (3, N'Жакет', 1, 9, 9800.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (4, N'Кокон', 2, 2, 8170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (5, N'Редингтон', 2, 6, 10000.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (6, N'Шинель', 2, 1, 6170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (7, N'Бушлат', 3, 7, 9800.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (8, N'Анорак', 3, 3, 5000.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdColorMaterials], [Price], [DEL]) VALUES (9, N'Косуха', 3, 5, 7990.0000, 0)
GO
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (1, N'Пиджак', 0)
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (2, N'Пальто', 0)
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (3, N'Курта', 0)
GO
ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ColorMaterials] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[LiningMaterial] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Material] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[MaterialProduct] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Type] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ColorMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ColorMaterials_Color] FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ColorMaterials] CHECK CONSTRAINT [FK_ColorMaterials_Color]
GO
ALTER TABLE [dbo].[ColorMaterials]  WITH CHECK ADD  CONSTRAINT [FK_ColorMaterials_MaterialProduct] FOREIGN KEY([IdMaterials])
REFERENCES [dbo].[MaterialProduct] ([Id])
GO
ALTER TABLE [dbo].[ColorMaterials] CHECK CONSTRAINT [FK_ColorMaterials_MaterialProduct]
GO
ALTER TABLE [dbo].[MaterialProduct]  WITH CHECK ADD  CONSTRAINT [FK_MaterialProduct_LiningMaterial] FOREIGN KEY([IdLiningMaterial])
REFERENCES [dbo].[LiningMaterial] ([Id])
GO
ALTER TABLE [dbo].[MaterialProduct] CHECK CONSTRAINT [FK_MaterialProduct_LiningMaterial]
GO
ALTER TABLE [dbo].[MaterialProduct]  WITH CHECK ADD  CONSTRAINT [FK_MaterialProduct_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[MaterialProduct] CHECK CONSTRAINT [FK_MaterialProduct_Material]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ColorMaterials] FOREIGN KEY([IdColorMaterials])
REFERENCES [dbo].[ColorMaterials] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ColorMaterials]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ColorMaterials] FOREIGN KEY([IdColorMaterials])
REFERENCES [dbo].[ColorMaterials] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ColorMaterials]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
