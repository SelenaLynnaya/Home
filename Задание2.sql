USE [BankAccount]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12.05.2021 11:16:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 12.05.2021 11:16:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[IdClient] [int] NOT NULL,
	[DateOpen] [date] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
	[Balance] [money] NOT NULL,
	[TypeID] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 12.05.2021 11:16:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Prosent] [int] NOT NULL,
	[DEL] [bit] NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (1, N'Александр', N'Смирнов', N'Иванович', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (2, N'Максим', N'Иванов', N'Петрович', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (3, N'Дарья', N'Кузнецова', N'Николаевна', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (4, N'Артём', N'Соколов', N'Алексеевич', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (5, N'Никита', N'Попов', N'Кириллович', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (6, N'Дмитрий', N'Лебедев', N'Анатольевич', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (7, N'Егор', N'Козлов', N'Александрович', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (8, N'Даниил', N'Новиков', N'Сергеевич', 0)
INSERT [dbo].[Client] ([Id], [Surname], [Firstname], [Patronymic], [DEL]) VALUES (9, N'Михаил', N'Морозов', N'Павлович', 0)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (1, N'7465987048', 1, CAST(N'2017-07-27' AS Date), CAST(N'2018-12-23' AS Date), 274425.1300, 1, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (2, N'7465987098', 2, CAST(N'2017-08-17' AS Date), CAST(N'2022-07-28' AS Date), 8171.6900, 1, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (3, N'7465987298', 3, CAST(N'2017-06-09' AS Date), CAST(N'2018-11-29' AS Date), 63795.9800, 1, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (4, N'7465987398', 4, CAST(N'2017-08-16' AS Date), CAST(N'2020-10-17' AS Date), 512933.8900, 2, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (5, N'7465987848', 5, CAST(N'2017-08-10' AS Date), CAST(N'2021-06-14' AS Date), 73263.8900, 2, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (6, N'7465987948', 6, CAST(N'2018-01-01' AS Date), CAST(N'2022-10-24' AS Date), 763774.3400, 1, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (7, N'7465987998', 7, CAST(N'2017-09-05' AS Date), CAST(N'2021-07-21' AS Date), 54427.2900, 3, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (8, N'7465988048', 8, CAST(N'2018-03-05' AS Date), CAST(N'2023-01-14' AS Date), 29173.3600, 3, 0)
INSERT [dbo].[Contract] ([Id], [Account], [IdClient], [DateOpen], [ExpirationDate], [Balance], [TypeID], [DEL]) VALUES (9, N'7465988098', 9, CAST(N'2017-09-04' AS Date), CAST(N'2021-03-19' AS Date), 25469.0900, 2, 0)
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Type], [Prosent], [DEL]) VALUES (1, N'Дебетовый', 3, 0)
INSERT [dbo].[Type] ([Id], [Type], [Prosent], [DEL]) VALUES (2, N'Депозитный', 4, 0)
INSERT [dbo].[Type] ([Id], [Type], [Prosent], [DEL]) VALUES (3, N'Пенсионный', 7, 0)
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF__Client__DEL__35BCFE0A]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Contract] ADD  CONSTRAINT [DF__Contract__DEL__36B12243]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Type] ADD  CONSTRAINT [DF__Type__DEL__34C8D9D1]  DEFAULT ((0)) FOR [DEL]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Client]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Type]
GO
