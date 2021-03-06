USE [master]
GO
/****** Object:  Database [WardrobeDB]    Script Date: 10/21/2016 9:45:11 AM ******/
CREATE DATABASE [WardrobeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WardrobeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WardrobeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WardrobeDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeDB] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeDB]
GO
/****** Object:  Table [dbo].[Closet]    Script Date: 10/21/2016 9:45:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Closet](
	[ClothingID] [int] IDENTITY(1,1) NOT NULL,
	[ClothingTypeID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Season] [varchar](50) NOT NULL,
	[Occasion] [varchar](50) NULL,
 CONSTRAINT [PK_Closet] PRIMARY KEY CLUSTERED 
(
	[ClothingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClothingType]    Script Date: 10/21/2016 9:45:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClothingType](
	[ClothingTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ClothingTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClothingType] PRIMARY KEY CLUSTERED 
(
	[ClothingTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 10/21/2016 9:45:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[ClosetID] [int] NOT NULL,
	[OutfitName] [nvarchar](50) NULL,
	[OutfitSeason] [nvarchar](50) NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Closet] ON 

INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (10, 1, N'Flannel', N'Flannel1.jpg', N'Red', N'Fall', N'Casual')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (12, 3, N'Dress Shoes', N'BrownShoes1.jpeg', N'Brown', N'Spring', N'Leisure')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (17, 1, N'Denim', N'DenimShirt1.jpg', N'Blue', N'Fall', N'Sporting')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (18, 4, N'Bow Tie', N'BowTie.jpeg', N'Black', N'Fall', N'Formal')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (19, 3, N'Dress Shoes', N'BlackShoes.jpeg', N'Black', N'All', N'Formal')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (20, 4, N'Suspenders', N'Suspenders.jpg', N'Maroon', N'All', N'Formal')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (21, 1, N'Two-Button Suit', N'BlueSuit.jpg', N'Navy', N'All', N'Formal')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (22, 1, N'Crew-Neck Sweater', N'GreySweater.jpeg', N'Grey', N'Winter', N'Casual')
INSERT [dbo].[Closet] ([ClothingID], [ClothingTypeID], [Name], [Photo], [Color], [Season], [Occasion]) VALUES (23, 2, N'Slacks', N'OliveSlacks.jpeg', N'Olive', N'Fall', N'Casual')
SET IDENTITY_INSERT [dbo].[Closet] OFF
SET IDENTITY_INSERT [dbo].[ClothingType] ON 

INSERT [dbo].[ClothingType] ([ClothingTypeID], [ClothingTypeName]) VALUES (1, N'Tops')
INSERT [dbo].[ClothingType] ([ClothingTypeID], [ClothingTypeName]) VALUES (2, N'Bottoms')
INSERT [dbo].[ClothingType] ([ClothingTypeID], [ClothingTypeName]) VALUES (3, N'Shoes')
INSERT [dbo].[ClothingType] ([ClothingTypeID], [ClothingTypeName]) VALUES (4, N'Accessories')
SET IDENTITY_INSERT [dbo].[ClothingType] OFF
ALTER TABLE [dbo].[Closet]  WITH CHECK ADD  CONSTRAINT [FK_Closet_ClothingType] FOREIGN KEY([ClothingTypeID])
REFERENCES [dbo].[ClothingType] ([ClothingTypeID])
GO
ALTER TABLE [dbo].[Closet] CHECK CONSTRAINT [FK_Closet_ClothingType]
GO
USE [master]
GO
ALTER DATABASE [WardrobeDB] SET  READ_WRITE 
GO
