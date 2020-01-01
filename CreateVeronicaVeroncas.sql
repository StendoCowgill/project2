USE [master]
GO
Drop database VeronicasVeronicas
GO

/****** Object:  Database [VeronicasVeronicas]    Script Date: 02/17/2009 17:51:56 ******/
CREATE DATABASE [VeronicasVeronicas] ON  PRIMARY 
( NAME = N'VeronicasVeronicas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\VeronicasVeronicas.mdf' , SIZE = 25600KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [CustomersFileGrp] 
( NAME = N'CustomerFile02', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\CustomerFile02.ndf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
( NAME = N'CustomersFile01', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\CustomersFile01.ndf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'VeronicasVeronicas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\VeronicasVeronicas_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [VeronicasVeronicas] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VeronicasVeronicas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [VeronicasVeronicas] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET ARITHABORT OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [VeronicasVeronicas] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [VeronicasVeronicas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [VeronicasVeronicas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET  DISABLE_BROKER 
GO

ALTER DATABASE [VeronicasVeronicas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [VeronicasVeronicas] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [VeronicasVeronicas] SET  READ_WRITE 
GO

ALTER DATABASE [VeronicasVeronicas] SET RECOVERY FULL 
GO

ALTER DATABASE [VeronicasVeronicas] SET  MULTI_USER 
GO

ALTER DATABASE [VeronicasVeronicas] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [VeronicasVeronicas] SET DB_CHAINING OFF 
GO


