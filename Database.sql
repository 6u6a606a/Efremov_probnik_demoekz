USE [master]
GO
/****** Object:  Database [Efremov_Demo_ekz]    Script Date: 27.04.2024 20:03:45 ******/
CREATE DATABASE [Efremov_Demo_ekz]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Efremov_Demo_ekz', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Efremov_Demo_ekz.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Efremov_Demo_ekz_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Efremov_Demo_ekz_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Efremov_Demo_ekz] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Efremov_Demo_ekz].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Efremov_Demo_ekz] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET ARITHABORT OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET RECOVERY FULL 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET  MULTI_USER 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Efremov_Demo_ekz] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Efremov_Demo_ekz] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Efremov_Demo_ekz', N'ON'
GO
ALTER DATABASE [Efremov_Demo_ekz] SET QUERY_STORE = OFF
GO
USE [Efremov_Demo_ekz]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Efremov_Demo_ekz]
GO
/****** Object:  Table [dbo].[Delivery_point]    Script Date: 27.04.2024 20:03:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery_point](
	[Delivery_point_id] [int] NOT NULL,
	[Delivery_point_address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Delivery_point] PRIMARY KEY CLUSTERED 
(
	[Delivery_point_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 27.04.2024 20:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Order_id] [int] NOT NULL,
	[Order_status] [nvarchar](50) NULL,
	[Order_content] [nvarchar](50) NOT NULL,
	[Order_date] [datetime] NOT NULL,
	[Order_product_id] [int] NOT NULL,
	[Code_receive] [nvarchar](max) NOT NULL,
	[User_id] [int] NOT NULL,
	[Delivery_point_id] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_product]    Script Date: 27.04.2024 20:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_product](
	[Order_product_id] [int] NOT NULL,
	[Article_number] [nvarchar](6) NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[Price] [money] NULL,
	[Product_id] [int] NOT NULL,
 CONSTRAINT [PK_Order_product] PRIMARY KEY CLUSTERED 
(
	[Order_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27.04.2024 20:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_category] [nvarchar](255) NOT NULL,
	[Product_discount] [decimal](3, 0) NULL,
	[Product_stock] [int] NULL,
	[Product_description] [nvarchar](500) NULL,
	[Product_photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27.04.2024 20:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Role_id] [int] NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 27.04.2024 20:03:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [nvarchar](30) NULL,
	[User_Surname] [nvarchar](30) NULL,
	[User_Patronymic] [nvarchar](30) NULL,
	[Login] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](40) NOT NULL,
	[Role_id] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Delivery_point] FOREIGN KEY([Delivery_point_id])
REFERENCES [dbo].[Delivery_point] ([Delivery_point_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Delivery_point]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Order_product] FOREIGN KEY([Order_product_id])
REFERENCES [dbo].[Order_product] ([Order_product_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Order_product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([User_id])
REFERENCES [dbo].[User] ([User_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Role] ([Role_id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Efremov_Demo_ekz] SET  READ_WRITE 
GO
