USE [master]
GO
/****** Object:  Database [cars1]    Script Date: 6/16/2020 7:40:53 PM ******/
CREATE DATABASE [cars1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cars1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\cars1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cars1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\cars1_log.ldf' , SIZE = 768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [cars1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cars1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cars1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cars1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cars1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cars1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cars1] SET ARITHABORT OFF 
GO
ALTER DATABASE [cars1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [cars1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [cars1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cars1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cars1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cars1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cars1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cars1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cars1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cars1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cars1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [cars1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cars1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cars1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cars1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cars1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cars1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cars1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cars1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cars1] SET  MULTI_USER 
GO
ALTER DATABASE [cars1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cars1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cars1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cars1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [cars1]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[customer_id] [numeric](10, 0) NOT NULL,
	[first_Name] [varchar](30) NULL,
	[last_Name] [varchar](30) NULL,
	[CNIC] [varchar](16) NOT NULL,
	[Address] [varchar](50) NULL,
	[Contact_no] [nvarchar](15) NULL,
	[gender] [varchar](10) NULL,
	[email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[delivery]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[delivery](
	[delivery_id] [numeric](10, 0) NOT NULL,
	[delivery_time] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[delivery_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[employee_id] [numeric](10, 0) NOT NULL,
	[first_Name] [varchar](30) NULL,
	[last_Name] [varchar](30) NULL,
	[CNIC] [varchar](16) NOT NULL,
	[Address] [varchar](50) NULL,
	[Contact_no] [nvarchar](15) NULL,
	[job_title] [varchar](30) NULL,
	[salary] [money] NULL,
	[hire_date] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[passcode] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderr]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderr](
	[orderr_id] [numeric](10, 0) NOT NULL,
	[order_date] [varchar](30) NULL,
	[required_date] [varchar](30) NULL,
	[shipped_date] [varchar](30) NULL,
	[quantity] [varchar](30) NULL,
	[price] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[payment]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [numeric](10, 0) NOT NULL,
	[payment_date] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[show_room]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[show_room](
	[Name] [varchar](30) NOT NULL,
	[Addres] [varchar](60) NOT NULL,
	[Contact_no] [nvarchar](15) NOT NULL,
	[showroom_id] [numeric](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[showroom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supplier](
	[supplier_id] [numeric](10, 0) NOT NULL,
	[Name] [varchar](30) NULL,
	[CNIC] [varchar](16) NOT NULL,
	[Address] [varchar](50) NULL,
	[Contact_no] [nvarchar](15) NULL,
	[Vehicle_type] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[supplier_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vehicle]    Script Date: 6/16/2020 7:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[vehicle](
	[vehicle_id] [numeric](10, 0) NOT NULL,
	[vehicle_type] [varchar](30) NULL,
	[VT_model] [varchar](30) NULL,
	[engine_type] [varchar](30) NULL,
	[vehicle_color] [varchar](30) NULL,
	[engine_displacement] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[vehicle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[customer] ([customer_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [gender], [email]) VALUES (CAST(245 AS Numeric(10, 0)), N'Asif', N'Ayan', N'23456-4241345-2', N'Islamabad', N'0344-3245674', N'Male', N'asifayan@gmail.com')
INSERT [dbo].[customer] ([customer_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [gender], [email]) VALUES (CAST(349 AS Numeric(10, 0)), N'Hajra', N'Awan', N'24567-4224522-4', N'lahore', N'0322-2333214', N'Female', N'hajra@hmail.com')
INSERT [dbo].[customer] ([customer_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [gender], [email]) VALUES (CAST(598 AS Numeric(10, 0)), N'Abdullah', N'Shahid', N'23445-3455321-5', N'Islamabad', N'0345-2345321', N'Male', N'abdullah@gmail.com')
INSERT [dbo].[customer] ([customer_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [gender], [email]) VALUES (CAST(678 AS Numeric(10, 0)), N'Ayesha', N'Ali', N'67843-3456774-2', N'Karachi', N'0322-3456744', N'Female', N'ayesha@gmail.com')
INSERT [dbo].[customer] ([customer_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [gender], [email]) VALUES (CAST(2345 AS Numeric(10, 0)), N'Irum', N'Fatima', N'12345-4322456-3', N'Islamabad', N'0345-3245634', N'Female', N'irum@gmail.com')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(203 AS Numeric(10, 0)), N'5:34:23')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(234 AS Numeric(10, 0)), N'2:14:30')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(324 AS Numeric(10, 0)), N'2:34:43')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(344 AS Numeric(10, 0)), N'8:23:45')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(345 AS Numeric(10, 0)), N'6:23:32')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(578 AS Numeric(10, 0)), N'3:40:15')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(754 AS Numeric(10, 0)), N'2:32:34')
INSERT [dbo].[delivery] ([delivery_id], [delivery_time]) VALUES (CAST(989 AS Numeric(10, 0)), N'7:34:56')
INSERT [dbo].[employee] ([employee_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [job_title], [salary], [hire_date]) VALUES (CAST(1 AS Numeric(10, 0)), N'Ahmed', N'Ayub', N'37405-4199512-9', N'Islamabad', N'0339-5119212', N'seller', 20000.0000, N'2010-04-08')
INSERT [dbo].[employee] ([employee_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [job_title], [salary], [hire_date]) VALUES (CAST(2 AS Numeric(10, 0)), N'Ali', N'chaudary', N'23554-0976345-0', N'Rawalpindi', N'0335-5119211', N'manager', 50000.0000, N'2013-02-04')
INSERT [dbo].[employee] ([employee_id], [first_Name], [last_Name], [CNIC], [Address], [Contact_no], [job_title], [salary], [hire_date]) VALUES (CAST(5 AS Numeric(10, 0)), N'Abdullah', N'Abbasi', N'31780-6889234-9', N'Karachi', N'0312-2334547', N'CEO', 100000.0000, N'1999-03-12')
INSERT [dbo].[login] ([id], [username], [passcode]) VALUES (1, N'sahar', N'123')
INSERT [dbo].[login] ([id], [username], [passcode]) VALUES (2, N'asfa', N'456')
INSERT [dbo].[login] ([id], [username], [passcode]) VALUES (3, N'fahad', N'789')
INSERT [dbo].[orderr] ([orderr_id], [order_date], [required_date], [shipped_date], [quantity], [price]) VALUES (CAST(2 AS Numeric(10, 0)), N'1999-6-4', N'1999-7-8', N'1999-7-1', N'1', N'2000000')
INSERT [dbo].[orderr] ([orderr_id], [order_date], [required_date], [shipped_date], [quantity], [price]) VALUES (CAST(4 AS Numeric(10, 0)), N'1996-2-3', N'1996-2-30', N'1996-2-22', N'2', N'4000000')
INSERT [dbo].[orderr] ([orderr_id], [order_date], [required_date], [shipped_date], [quantity], [price]) VALUES (CAST(5 AS Numeric(10, 0)), N'2020-2-3', N'2020-3-5', N'2020-2-23', N'1', N'1234500')
INSERT [dbo].[orderr] ([orderr_id], [order_date], [required_date], [shipped_date], [quantity], [price]) VALUES (CAST(12 AS Numeric(10, 0)), N'1999-7-23', N'1999-8-20', N'1999-8-10', N'1', N'3400000')
INSERT [dbo].[payment] ([payment_id], [payment_date]) VALUES (CAST(123 AS Numeric(10, 0)), N'2020-2-3')
INSERT [dbo].[payment] ([payment_id], [payment_date]) VALUES (CAST(234 AS Numeric(10, 0)), N'2010-2-4')
INSERT [dbo].[payment] ([payment_id], [payment_date]) VALUES (CAST(246 AS Numeric(10, 0)), N'2012-4-5')
INSERT [dbo].[payment] ([payment_id], [payment_date]) VALUES (CAST(467 AS Numeric(10, 0)), N'2011-7-3')
INSERT [dbo].[payment] ([payment_id], [payment_date]) VALUES (CAST(678 AS Numeric(10, 0)), N'2017-5-6')
INSERT [dbo].[show_room] ([Name], [Addres], [Contact_no], [showroom_id]) VALUES (N'Standard Motors', N'Rawalpindi', N'051-1123442', CAST(147 AS Numeric(10, 0)))
INSERT [dbo].[show_room] ([Name], [Addres], [Contact_no], [showroom_id]) VALUES (N'Malik Motors', N'Rawalpindi', N'051-2357421', CAST(235 AS Numeric(10, 0)))
INSERT [dbo].[show_room] ([Name], [Addres], [Contact_no], [showroom_id]) VALUES (N'Daniyal Motors', N'Karachi', N'051-2345664', CAST(236 AS Numeric(10, 0)))
INSERT [dbo].[show_room] ([Name], [Addres], [Contact_no], [showroom_id]) VALUES (N'Eastern Cars', N'Islamabad', N'051-2357852', CAST(290 AS Numeric(10, 0)))
INSERT [dbo].[show_room] ([Name], [Addres], [Contact_no], [showroom_id]) VALUES (N'Car Chase', N'Karachi', N'051-8867632', CAST(298 AS Numeric(10, 0)))
INSERT [dbo].[supplier] ([supplier_id], [Name], [CNIC], [Address], [Contact_no], [Vehicle_type]) VALUES (CAST(234 AS Numeric(10, 0)), N'Hashim', N'23456-3324567-6', N'Rawalpindi', N'0333-3456782', N'TRUCK')
INSERT [dbo].[supplier] ([supplier_id], [Name], [CNIC], [Address], [Contact_no], [Vehicle_type]) VALUES (CAST(345 AS Numeric(10, 0)), N'Adeel', N'23456-9876543-9', N'Lahore', N'0312-2345654', N'JEEP')
INSERT [dbo].[supplier] ([supplier_id], [Name], [CNIC], [Address], [Contact_no], [Vehicle_type]) VALUES (CAST(674 AS Numeric(10, 0)), N'Sarim', N'45678-0975782-7', N'Lahore', N'0321-4567853', N'CAR')
INSERT [dbo].[supplier] ([supplier_id], [Name], [CNIC], [Address], [Contact_no], [Vehicle_type]) VALUES (CAST(678 AS Numeric(10, 0)), N'Saqib', N'34565-3224567-4', N'Karachi', N'0324-0976436', N'CAR')
INSERT [dbo].[vehicle] ([vehicle_id], [vehicle_type], [VT_model], [engine_type], [vehicle_color], [engine_displacement]) VALUES (CAST(1 AS Numeric(10, 0)), N'JEEP', N'2017 Wrangler', N'3.5L', N'black', N'234lb- ft')
INSERT [dbo].[vehicle] ([vehicle_id], [vehicle_type], [VT_model], [engine_type], [vehicle_color], [engine_displacement]) VALUES (CAST(3 AS Numeric(10, 0)), N'CAR', N'2017 Honda Clarity', N'1.5L', N'red', N'221lb- ft')
INSERT [dbo].[vehicle] ([vehicle_id], [vehicle_type], [VT_model], [engine_type], [vehicle_color], [engine_displacement]) VALUES (CAST(4 AS Numeric(10, 0)), N'CAR', N'2016 Honda Civic', N'1.5L', N'silver', N'107-221lb- ft')
INSERT [dbo].[vehicle] ([vehicle_id], [vehicle_type], [VT_model], [engine_type], [vehicle_color], [engine_displacement]) VALUES (CAST(5 AS Numeric(10, 0)), N'CAR', N'2016 Audi', N'1.8L', N'black', N'221lb- ft')
INSERT [dbo].[vehicle] ([vehicle_id], [vehicle_type], [VT_model], [engine_type], [vehicle_color], [engine_displacement]) VALUES (CAST(6 AS Numeric(10, 0)), N'CAR', N'2019 Audi A3', N'2.0L', N'red', N'221lb-ft')
USE [master]
GO
ALTER DATABASE [cars1] SET  READ_WRITE 
GO
