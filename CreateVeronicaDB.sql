use master

#drop database veronicas

CREATE DATABASE veronicas
go

USE [veronicas]
GO

/****** Object:  Table [dbo].[Flowers]    Script Date: 10/13/2008 11:04:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO



CREATE TABLE [dbo].[Flowers](
    [FlowerID] [varchar](10) ,
	[CommonName] [varchar](50) NULL,
	[DominateColor] [varchar](50) NULL,
	[SubordinateColor] [varchar](50) NULL,
	[Height] [varchar](50) NULL,
	[TempRange] [varchar](50) NULL,
	[Cost] [smallmoney] NULL,
	[SalesPrice] [smallmoney] NULL,
	[StockLevel] [varchar](50) NULL,
	[NextShipmentDate] [varchar](50) NULL
 CONSTRAINT [PK_Flowers] PRIMARY KEY CLUSTERED 
(
	[FlowerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) 
) ON [PRIMARY]

GO




/*********************************/



CREATE TABLE [dbo].[Customers](
	[CustomerNumber] [varchar] (10) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
	[Birthdate] [varchar](50) NULL,
	[Anniversary] [varchar](50) NULL
	CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
	(
	[CustomerNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/********************************/



CREATE TABLE [dbo].[OrderDetails](
	[FlowerID] [varchar](10) NOT NULL,
	[OrderNumber] [varchar](10) NOT NULL,
	[Shipdate] [varchar](10) NULL,
	[Quantity] [varchar](10) NULL
) ON [PRIMARY]

GO



/********************************/


CREATE TABLE [dbo].[Orders](
	[OrderNumber] [varchar](10) NOT NULL,
	[CustomerNumber] [varchar](10) NOT NULL,
	[OrderDate] [varchar](10) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderNumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [dbo].[ClientFlowerMatch](
	[zip] [varchar](10) NOT NULL,
	[FlowerID] [varchar](10) NOT NULL,
	[Performance] [varchar](10) NULL
) ON [PRIMARY]

GO


SET ANSI_PADDING OFF
GO
GET PANTYWAIST DESCRIPTION
CREATE JOCKSTRAP
GO


BULK 
INSERT Flowers
        FROM 'c:\CourseFiles\Video05\FlowersData.csv'
            WITH
    (
                FIELDTERMINATOR = ',',
                ROWTERMINATOR = '\n'
    )
GO


BULK 
INSERT Customers
        FROM 'c:\CourseFiles\Video05\customersData.csv'
            WITH
    (
                FIELDTERMINATOR = ',',
                ROWTERMINATOR = '\n'
    )
GO


BULK 
INSERT Orders
        FROM 'c:\CourseFiles\Video05\ordersData.csv'
            WITH
    (
                FIELDTERMINATOR = ',',
                ROWTERMINATOR = '\n'
    )
GO


BULK 
INSERT OrderDetails
        FROM 'c:\CourseFiles\Video05\orderDetailsData.csv'
            WITH
    (
                FIELDTERMINATOR = ',',
                ROWTERMINATOR = '\n'
    )
GO


BULK 
INSERT ClientFlowerMatch
        FROM 'c:\CourseFiles\Video05\ClientFlowerMatchData.csv'
            WITH
    (
                FIELDTERMINATOR = ',',
                ROWTERMINATOR = '\n'
    )
GO