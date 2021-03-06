USE [master]
GO
/****** Object:  Database [Wardrobe]    Script Date: 3/19/2018 7:54:37 AM ******/
CREATE DATABASE [Wardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Wardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Wardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Wardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Wardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Wardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Wardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Wardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Wardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Wardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Wardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Wardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Wardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Wardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Wardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Wardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Wardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Wardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Wardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Wardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Wardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Wardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [Wardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Wardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Wardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Wardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Wardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Wardrobe]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 3/19/2018 7:54:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](100) NOT NULL,
	[AccessoryPhoto] [nvarchar](200) NOT NULL,
	[AcessoryColor] [nvarchar](100) NOT NULL,
	[AccessoryType] [nvarchar](100) NULL,
	[AccessoryOccasion] [nvarchar](100) NULL,
	[AccesorySeason] [nvarchar](100) NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 3/19/2018 7:54:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](100) NOT NULL,
	[BottomPhoto] [nvarchar](200) NOT NULL,
	[BottomColor] [nvarchar](100) NOT NULL,
	[BottomSeason] [nvarchar](100) NULL,
	[BottomOccasion] [nvarchar](100) NULL,
	[BottomType] [nvarchar](100) NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfit]    Script Date: 3/19/2018 7:54:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfit](
	[OutfitID] [int] IDENTITY(1,1) NOT NULL,
	[TopID] [int] NOT NULL,
	[BottomID] [int] NOT NULL,
	[ShoeID] [int] NOT NULL,
	[AccessoryID] [int] NOT NULL,
 CONSTRAINT [PK_Outfit] PRIMARY KEY CLUSTERED 
(
	[OutfitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoe]    Script Date: 3/19/2018 7:54:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoe](
	[ShoeID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](100) NOT NULL,
	[ShoePhoto] [nvarchar](200) NOT NULL,
	[ShoeColor] [nvarchar](100) NOT NULL,
	[ShoeType] [nvarchar](100) NULL,
	[ShoeSeason] [nvarchar](100) NULL,
	[ShoeOccasion] [nvarchar](100) NULL,
 CONSTRAINT [PK_Shoe] PRIMARY KEY CLUSTERED 
(
	[ShoeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 3/19/2018 7:54:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](100) NOT NULL,
	[TopPhoto] [nvarchar](200) NOT NULL,
	[TopColor] [nvarchar](50) NOT NULL,
	[TopSeason] [nvarchar](100) NULL,
	[TopOccasion] [nvarchar](100) NULL,
	[TopType] [nvarchar](100) NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessory] ON 

INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AcessoryColor], [AccessoryType], [AccessoryOccasion], [AccesorySeason]) VALUES (1, N'Black tie', N'\content\images\blacktie.jpg', N'Black', NULL, N'Formal', N'Any')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AcessoryColor], [AccessoryType], [AccessoryOccasion], [AccesorySeason]) VALUES (2, N'Samurai Sword', N'\content\images\sword.jpg', N'Silver', NULL, N'Any', N'Any')
INSERT [dbo].[Accessory] ([AccessoryID], [AccessoryName], [AccessoryPhoto], [AcessoryColor], [AccessoryType], [AccessoryOccasion], [AccesorySeason]) VALUES (3, N'Cigarette', N'\content\images\cigarette.jpg', N'White', NULL, N'Any', N'Any')
SET IDENTITY_INSERT [dbo].[Accessory] OFF
SET IDENTITY_INSERT [dbo].[Bottom] ON 

INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [BottomType]) VALUES (1, N'Yellow Pants', N'\content\images\kbpants.jpg', N'Yellow', N'Any', N'Functional', NULL)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [BottomType]) VALUES (2, N'Mens jeans', N'\content\images\mensjean.jpg', N'Denim', N'Any', N'Any', NULL)
INSERT [dbo].[Bottom] ([BottomID], [BottomName], [BottomPhoto], [BottomColor], [BottomSeason], [BottomOccasion], [BottomType]) VALUES (3, N'Blue running shorts', N'\content\images\blue shorts.jpg', N'Blue', N'Summer', N'Casual', NULL)
SET IDENTITY_INSERT [dbo].[Bottom] OFF
SET IDENTITY_INSERT [dbo].[Outfit] ON 

INSERT [dbo].[Outfit] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (3, 1, 1, 1, 1)
INSERT [dbo].[Outfit] ([OutfitID], [TopID], [BottomID], [ShoeID], [AccessoryID]) VALUES (4, 11, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Outfit] OFF
SET IDENTITY_INSERT [dbo].[Shoe] ON 

INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeType], [ShoeSeason], [ShoeOccasion]) VALUES (1, N'Yellow Aasics', N'\content\images\KBshoe.jpg', N'Yellow', N'Athletic', N'Any', NULL)
INSERT [dbo].[Shoe] ([ShoeID], [ShoeName], [ShoePhoto], [ShoeColor], [ShoeType], [ShoeSeason], [ShoeOccasion]) VALUES (3, N'Mens white sneaker', N'\content\images\menswhiteshoe.jpg', N'White', N'Athletic', N'Any', N'Any')
SET IDENTITY_INSERT [dbo].[Shoe] OFF
SET IDENTITY_INSERT [dbo].[Top] ON 

INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TopType]) VALUES (1, N'white dress shirt', N'\content\images\white_dress.jpg', N'White', NULL, N'Dress up', NULL)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TopType]) VALUES (3, N'Black suit coat', N'\content\images\blacksuit.jpg', N'Black', N'All', N'Formal', NULL)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TopType]) VALUES (11, N'Yellow Jacket', N'\content\images\kbjacket.jpg', N'Yellow', N'Any', N'Functional', NULL)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TopType]) VALUES (12, N'Suede jacket', N'\content\images\suedejacket.jpg', N'Brown', N'Any', N'Any', NULL)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TopType]) VALUES (13, N'UC Santa Cruz T-Shirt', N'\content\images\ucslugs.jpg', N'White', N'Summer', N'Casual', NULL)
INSERT [dbo].[Top] ([TopID], [TopName], [TopPhoto], [TopColor], [TopSeason], [TopOccasion], [TopType]) VALUES (14, N'White T-Shirt', N'\content\images\whiteT.jpg', N'White', N'Any', N'Any', NULL)
SET IDENTITY_INSERT [dbo].[Top] OFF
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Accessory] FOREIGN KEY([AccessoryID])
REFERENCES [dbo].[Accessory] ([AccessoryID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Accessory]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Bottom] FOREIGN KEY([BottomID])
REFERENCES [dbo].[Bottom] ([BottomID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Bottom]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Shoe] FOREIGN KEY([ShoeID])
REFERENCES [dbo].[Shoe] ([ShoeID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Shoe]
GO
ALTER TABLE [dbo].[Outfit]  WITH CHECK ADD  CONSTRAINT [FK_Outfit_Top] FOREIGN KEY([TopID])
REFERENCES [dbo].[Top] ([TopID])
GO
ALTER TABLE [dbo].[Outfit] CHECK CONSTRAINT [FK_Outfit_Top]
GO
USE [master]
GO
ALTER DATABASE [Wardrobe] SET  READ_WRITE 
GO
