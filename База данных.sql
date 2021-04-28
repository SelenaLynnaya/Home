USE [master]
GO
/****** Object:  Database [Magazin]    Script Date: 28.04.2021 19:47:32 ******/
CREATE DATABASE [Magazin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Magazin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Magazin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Magazin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Magazin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Magazin] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Magazin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Magazin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Magazin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Magazin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Magazin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Magazin] SET ARITHABORT OFF 
GO
ALTER DATABASE [Magazin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Magazin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Magazin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Magazin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Magazin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Magazin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Magazin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Magazin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Magazin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Magazin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Magazin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Magazin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Magazin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Magazin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Magazin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Magazin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Magazin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Magazin] SET RECOVERY FULL 
GO
ALTER DATABASE [Magazin] SET  MULTI_USER 
GO
ALTER DATABASE [Magazin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Magazin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Magazin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Magazin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Magazin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Magazin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Magazin', N'ON'
GO
ALTER DATABASE [Magazin] SET QUERY_STORE = OFF
GO
USE [Magazin]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 28.04.2021 19:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [int] NOT NULL,
	[UserDataId] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListOfOrder]    Script Date: 28.04.2021 19:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListOfOrder](
	[OrderId] [int] NOT NULL,
	[ProductsId] [int] NOT NULL,
	[Del] [bit] NULL,
 CONSTRAINT [PK_ListOfOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 28.04.2021 19:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ClientId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 28.04.2021 19:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserData]    Script Date: 28.04.2021 19:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserData](
	[Id] [int] NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.04.2021 19:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UserDataId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ListOfOrder] ADD  DEFAULT ((0)) FOR [Del]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_UserData] FOREIGN KEY([UserDataId])
REFERENCES [dbo].[UserData] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_UserData]
GO
ALTER TABLE [dbo].[ListOfOrder]  WITH CHECK ADD  CONSTRAINT [FK_ListOfOrder_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[ListOfOrder] CHECK CONSTRAINT [FK_ListOfOrder_Order]
GO
ALTER TABLE [dbo].[ListOfOrder]  WITH CHECK ADD  CONSTRAINT [FK_ListOfOrder_Products] FOREIGN KEY([ProductsId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ListOfOrder] CHECK CONSTRAINT [FK_ListOfOrder_Products]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Client] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserData] FOREIGN KEY([UserDataId])
REFERENCES [dbo].[UserData] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserData]
GO
USE [master]
GO
ALTER DATABASE [Magazin] SET  READ_WRITE 
GO
