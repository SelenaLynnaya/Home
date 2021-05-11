USE [Atelier]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[Color]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColorMaterial]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColorMaterial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[IdColor] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_ColorMaterial_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdClient] [int] NOT NULL,
	[IdColorMaterial] [int] NOT NULL,
	[DataOrder] [date] NOT NULL,
	[DateExpiration] [date] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IdType] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 11.05.2021 22:59:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (1, N'Смирнов', N'Александр', N'Иванович', N'Москва', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (2, N'Иванов', N'Максим', N'Петрович', N'Майкоп', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (3, N'Кузнецова', N'Дарья', N'Николаевна', N'Анапа', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [Address], [DEL]) VALUES (4, N'Соколов', N'Артём', N'Алексеевич', N'Краснодар', 0)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (1, N'Белый', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (2, N'Красный', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (3, N'Чёрный', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (4, N'Серый', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (5, N'Хаки', 0)
INSERT [dbo].[Color] ([Id], [Name], [DEL]) VALUES (6, N'Бежевый', 0)
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[ColorMaterial] ON 

INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (1, 1, 3, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (2, 1, 5, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (3, 2, 1, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (4, 2, 6, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (5, 3, 4, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (6, 3, 5, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (7, 4, 1, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (8, 4, 3, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (9, 5, 3, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (10, 5, 4, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (11, 6, 1, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (12, 6, 2, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (13, 7, 5, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (14, 7, 3, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (15, 8, 5, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (16, 8, 6, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (17, 9, 3, 0)
INSERT [dbo].[ColorMaterial] ([Id], [IdMaterial], [IdColor], [DEL]) VALUES (18, 9, 2, 0)
SET IDENTITY_INSERT [dbo].[ColorMaterial] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (1, N'Сукно', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (2, N'Кашемир', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (3, N'Полиамид', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (4, N'Хлопок', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (5, N'Кожа', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (6, N'Софтшелл', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (7, N'Нейлон', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (8, N'Шерсть', 0)
INSERT [dbo].[Material] ([Id], [Name], [DEL]) VALUES (9, N'Трикотаж', 0)
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (1, 4, 1, 4, CAST(N'2020-12-23' AS Date), CAST(N'2021-03-23' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (2, 4, 2, 3, CAST(N'2020-12-24' AS Date), CAST(N'2021-04-24' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (3, 3, 1, 17, CAST(N'2020-12-25' AS Date), CAST(N'2021-04-25' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (4, 2, 3, 15, CAST(N'2020-12-26' AS Date), CAST(N'2021-03-26' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (5, 1, 4, 7, CAST(N'2020-12-27' AS Date), CAST(N'2021-04-27' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (6, 6, 3, 1, CAST(N'2021-04-28' AS Date), CAST(N'2021-09-28' AS Date), 0)
INSERT [dbo].[Orders] ([Id], [IdProduct], [IdClient], [IdColorMaterial], [DataOrder], [DateExpiration], [DEL]) VALUES (7, 9, 2, 10, CAST(N'2021-05-29' AS Date), CAST(N'2021-11-29' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (1, N'Блейзер', 1, 4, 12170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (2, N'Кардиган', 1, 8, 6170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (3, N'Жакет', 1, 9, 9800.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (4, N'Кокон', 2, 2, 8170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (5, N'Редингтон', 2, 6, 10000.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (6, N'Шинель', 2, 1, 6170.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (7, N'Бушлат', 3, 7, 9800.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (8, N'Анорак', 3, 3, 5000.0000, 0)
INSERT [dbo].[Product] ([Id], [Name], [IdType], [IdMaterial], [Price], [DEL]) VALUES (9, N'Косуха', 3, 5, 7990.0000, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (1, N'Пиджак', 0)
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (2, N'Пальто', 0)
INSERT [dbo].[Type] ([Id], [Type], [DEL]) VALUES (3, N'Курта', 0)
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF__Client__DEL__44FF419A]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Color] ADD  CONSTRAINT [DF__Color__DEL__4316F928]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ColorMaterial] ADD  CONSTRAINT [DF__ColorMateri__DEL__440B1D61]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Material] ADD  CONSTRAINT [DF__Material__DEL__4222D4EF]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__DEL__403A8C7D]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__DEL__412EB0B6]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Type] ADD  CONSTRAINT [DF__Type__DEL__45F365D3]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ColorMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ColorMaterial_Color] FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[ColorMaterial] CHECK CONSTRAINT [FK_ColorMaterial_Color]
GO
ALTER TABLE [dbo].[ColorMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ColorMaterial_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ColorMaterial] CHECK CONSTRAINT [FK_ColorMaterial_Material]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ColorMaterial] FOREIGN KEY([IdColorMaterial])
REFERENCES [dbo].[ColorMaterial] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ColorMaterial]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Material]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([IdType])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
GO
