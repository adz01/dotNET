USE [master]
GO
/****** Object:  Database [MigrationsDemo1.HotelContext]    Script Date: 17-Jul-16 9:45:55 AM ******/
CREATE DATABASE [MigrationsDemo1.HotelContext]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MigrationsDemo1.HotelContext', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MigrationsDemo1.HotelContext.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MigrationsDemo1.HotelContext_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MigrationsDemo1.HotelContext_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MigrationsDemo1.HotelContext].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET ARITHABORT OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET  MULTI_USER 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MigrationsDemo1.HotelContext]
GO
/****** Object:  Schema [Hotel]    Script Date: 17-Jul-16 9:45:55 AM ******/
CREATE SCHEMA [Hotel]
GO
/****** Object:  Schema [Nom]    Script Date: 17-Jul-16 9:45:55 AM ******/
CREATE SCHEMA [Nom]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 17-Jul-16 9:45:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [Hotel].[Employees]    Script Date: 17-Jul-16 9:45:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hotel].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
 CONSTRAINT [PK_Hotel.Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Hotel].[Guest]    Script Date: 17-Jul-16 9:45:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hotel].[Guest](
	[AccountNumber] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Telephone] [int] NOT NULL,
 CONSTRAINT [PK_Hotel.Guest] PRIMARY KEY CLUSTERED 
(
	[AccountNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Hotel].[Reservation]    Script Date: 17-Jul-16 9:45:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hotel].[Reservation](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeNumber] [int] NOT NULL,
	[AccountNumber] [int] NOT NULL,
	[RoomId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Hotel.Reservation] PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [Hotel].[Room]    Script Date: 17-Jul-16 9:45:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Hotel].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [nvarchar](max) NULL,
	[IsVacant] [bit] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Hotel.Room] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [Nom].[Gender]    Script Date: 17-Jul-16 9:45:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Nom].[Gender](
	[EmployeeNumber] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeGender] [nvarchar](max) NULL,
 CONSTRAINT [PK_Nom.Gender] PRIMARY KEY CLUSTERED 
(
	[EmployeeNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [MigrationsDemo1.HotelContext] SET  READ_WRITE 
GO
