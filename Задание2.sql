USE [Банковский_счет]
GO
/****** Object:  Table [dbo].[Идентификатор]    Script Date: 09.05.2021 20:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Идентификатор](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Present] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Идентификатор] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ИдентификаторКарта]    Script Date: 09.05.2021 20:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ИдентификаторКарта](
	[IdMap] [int] NOT NULL,
	[IdType] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_ИдентификаторКарта] PRIMARY KEY CLUSTERED 
(
	[IdMap] ASC,
	[IdType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Карта]    Script Date: 09.05.2021 20:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Карта](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[DateOpen] [date] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[Balance] [money] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Карта] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиент]    Script Date: 09.05.2021 20:48:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиент](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[IdMap] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Клиент] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Идентификатор] ON 

INSERT [dbo].[Идентификатор] ([Id], [Type], [Present], [DEL]) VALUES (1, N'Дебетовый', 3, 0)
INSERT [dbo].[Идентификатор] ([Id], [Type], [Present], [DEL]) VALUES (2, N'Депозитный', 4, 0)
INSERT [dbo].[Идентификатор] ([Id], [Type], [Present], [DEL]) VALUES (3, N'Пенсионный', 7, 0)
SET IDENTITY_INSERT [dbo].[Идентификатор] OFF
GO
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (1, 1, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (1, 2, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (1, 3, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (1, 6, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (2, 4, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (2, 5, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (2, 9, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (3, 7, 0)
INSERT [dbo].[ИдентификаторКарта] ([IdMap], [IdType], [DEL]) VALUES (3, 8, 0)
GO
SET IDENTITY_INSERT [dbo].[Карта] ON 

INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (1, N'7465987048', CAST(N'2018-12-23' AS Date), CAST(N'2017-07-27' AS Date), 274425.1300, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (2, N'7465987098', CAST(N'2022-07-28' AS Date), CAST(N'2017-08-17' AS Date), 8171.6900, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (3, N'7465987298', CAST(N'2018-11-29' AS Date), CAST(N'2017-06-09' AS Date), 63795.9800, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (4, N'7465987398', CAST(N'2020-10-17' AS Date), CAST(N'2017-08-16' AS Date), 512933.8900, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (5, N'7465987848', CAST(N'2021-06-14' AS Date), CAST(N'2017-08-10' AS Date), 73263.8900, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (6, N'7465987948', CAST(N'2022-10-24' AS Date), CAST(N'2018-01-01' AS Date), 763774.3400, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (7, N'7465987998', CAST(N'2021-07-21' AS Date), CAST(N'2017-09-05' AS Date), 54427.2900, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (8, N'7465988048', CAST(N'2023-01-14' AS Date), CAST(N'2018-03-05' AS Date), 29173.3600, 0)
INSERT [dbo].[Карта] ([Id], [Account], [DateOpen], [ExpirationDate], [Balance], [DEL]) VALUES (9, N'7465988098', CAST(N'2021-03-19' AS Date), CAST(N'2017-09-04' AS Date), 25469.0900, 0)
SET IDENTITY_INSERT [dbo].[Карта] OFF
GO
SET IDENTITY_INSERT [dbo].[Клиент] ON 

INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (1, N'Александр', N'Иванович', N'Смирнов', 1, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (2, N'Максим', N'Петрович', N'Иванов', 2, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (3, N'Дарья', N'Николаевна', N'Кузнецова', 3, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (4, N'Артём', N'Алексеевич', N'Соколов', 4, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (5, N'Никита', N'Кириллович', N'Попов', 5, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (6, N'Дмитрий', N'Анатольевич', N'Лебедев', 6, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (7, N'Егор', N'Александрович', N'Козлов', 7, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (8, N'Даниил', N'Сергеевич', N'Новиков', 8, 0)
INSERT [dbo].[Клиент] ([Id], [Firstname], [Lastname], [Surname], [IdMap], [DEL]) VALUES (9, N'Михаил', N'Павлович', N'Морозов', 9, 0)
SET IDENTITY_INSERT [dbo].[Клиент] OFF
GO
ALTER TABLE [dbo].[Идентификатор] ADD  CONSTRAINT [DF__Идентификат__DEL__4316F928]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ИдентификаторКарта] ADD  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Карта] ADD  CONSTRAINT [DF__Карта__DEL__4222D4EF]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Клиент] ADD  CONSTRAINT [DF__Клиент__DEL__412EB0B6]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[ИдентификаторКарта]  WITH CHECK ADD  CONSTRAINT [FK_ИдентификаторКарта_Идентификатор] FOREIGN KEY([IdMap])
REFERENCES [dbo].[Идентификатор] ([Id])
GO
ALTER TABLE [dbo].[ИдентификаторКарта] CHECK CONSTRAINT [FK_ИдентификаторКарта_Идентификатор]
GO
ALTER TABLE [dbo].[ИдентификаторКарта]  WITH CHECK ADD  CONSTRAINT [FK_ИдентификаторКарта_Карта] FOREIGN KEY([IdType])
REFERENCES [dbo].[Карта] ([Id])
GO
ALTER TABLE [dbo].[ИдентификаторКарта] CHECK CONSTRAINT [FK_ИдентификаторКарта_Карта]
GO
ALTER TABLE [dbo].[Клиент]  WITH CHECK ADD  CONSTRAINT [FK_Клиент_Карта] FOREIGN KEY([IdMap])
REFERENCES [dbo].[Карта] ([Id])
GO
ALTER TABLE [dbo].[Клиент] CHECK CONSTRAINT [FK_Клиент_Карта]
GO
