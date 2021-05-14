USE [Atelier]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 14.05.2021 20:39:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] NOT NULL,
	[Index] [int] NULL,
	[City] [nvarchar](50) NULL,
	[Street] [nvarchar](50) NULL,
	[Entrance] [int] NULL,
	[House] [int] NULL,
	[Flat] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] NOT NULL,
	[IdUserData] [int] NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[IdAddress] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialColor]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialColor](
	[Id] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[IdColor] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MaterialColor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] NOT NULL,
	[IdClient] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[DataOrder] [date] NULL,
	[DateExpiration] [date] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Price] [money] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[IdProduct] [int] NOT NULL,
	[IdMaterial] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC,
	[IdMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[IdRole] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14.05.2021 20:39:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IdUserData] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_LoginAndPassword] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Address] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Client] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Color] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Material] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MaterialColor] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ProductMaterial] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Role] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserData] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Address] FOREIGN KEY([IdAddress])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Address]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_UserData] FOREIGN KEY([IdUserData])
REFERENCES [dbo].[UserData] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_UserData]
GO
ALTER TABLE [dbo].[MaterialColor]  WITH CHECK ADD  CONSTRAINT [FK_MaterialColor_Color] FOREIGN KEY([IdColor])
REFERENCES [dbo].[Color] ([Id])
GO
ALTER TABLE [dbo].[MaterialColor] CHECK CONSTRAINT [FK_MaterialColor_Color]
GO
ALTER TABLE [dbo].[MaterialColor]  WITH CHECK ADD  CONSTRAINT [FK_MaterialColor_Material] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[MaterialColor] CHECK CONSTRAINT [FK_MaterialColor_Material]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_MaterialColor] FOREIGN KEY([IdMaterial])
REFERENCES [dbo].[MaterialColor] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_MaterialColor]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
ALTER TABLE [dbo].[UserData]  WITH CHECK ADD  CONSTRAINT [FK_UserData_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserData] CHECK CONSTRAINT [FK_UserData_Role]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserData] FOREIGN KEY([IdUserData])
REFERENCES [dbo].[UserData] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserData]
GO
