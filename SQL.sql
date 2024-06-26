USE [master]
GO
/****** Object:  Database [test11]    Script Date: 5/26/2024 11:12:35 PM ******/
CREATE DATABASE [test11]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test11', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\test11.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'test11_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\test11_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [test11] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test11].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test11] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test11] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test11] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test11] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test11] SET ARITHABORT OFF 
GO
ALTER DATABASE [test11] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test11] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test11] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test11] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test11] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test11] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test11] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test11] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test11] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test11] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test11] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test11] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test11] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test11] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test11] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test11] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test11] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test11] SET RECOVERY FULL 
GO
ALTER DATABASE [test11] SET  MULTI_USER 
GO
ALTER DATABASE [test11] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test11] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test11] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test11] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [test11] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [test11] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'test11', N'ON'
GO
ALTER DATABASE [test11] SET QUERY_STORE = ON
GO
ALTER DATABASE [test11] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [test11]
GO
/****** Object:  Table [dbo].[AdvanceSalary]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvanceSalary](
	[advance_salary_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[amount] [bigint] NULL,
	[user_id] [int] NULL,
	[is_advance_success] [bit] NULL,
	[is_approve] [bit] NULL,
	[code] [nchar](10) NULL,
 CONSTRAINT [PK_AdvanceSalary] PRIMARY KEY CLUSTERED 
(
	[advance_salary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeMaterials]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeMaterials](
	[emp_material_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NULL,
	[material_id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[emp_material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Information_User]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Information_User](
	[infor_id] [int] NOT NULL,
	[phone_number] [nvarchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Information_User] PRIMARY KEY CLUSTERED 
(
	[infor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[description] [nvarchar](255) NULL,
	[time_finish] [datetime] NULL,
	[quantity_product] [int] NULL,
	[cost] [decimal](19, 4) NULL,
	[time_start] [date] NULL,
	[code] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[material_id] [int] IDENTITY(1,1) NOT NULL,
	[material_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[order_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[quantity] [int] NULL,
	[unit_price] [decimal](19, 4) NULL,
	[request_product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[order_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime] NULL,
	[status_id] [int] NULL,
	[total_amount] [decimal](19, 4) NULL,
	[special_order] [bit] NULL,
	[payment_method] [bit] NULL,
	[deposite] [decimal](5, 2) NULL,
	[infor_id] [int] NULL,
	[code] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Potitions]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Potitions](
	[position_id] [int] NOT NULL,
	[potition_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Potitions] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessProductError]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessProductError](
	[process_product_error] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[job_id] [int] NULL,
	[description] [nvarchar](max) NULL,
	[solution] [nvarchar](max) NULL,
	[is_fixed] [bit] NULL,
	[code] [nchar](10) NULL,
 CONSTRAINT [PK_ProcessProductError] PRIMARY KEY CLUSTERED 
(
	[process_product_error] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Sub_Materials]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Sub_Materials](
	[sub_material_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sub_material_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[product_image_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[product_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[price] [decimal](19, 4) NULL,
	[status_id] [int] NULL,
	[completion_time] [nvarchar](50) NULL,
	[image] [nvarchar](255) NULL,
	[category_id] [int] NULL,
	[enddate_warranty] [date] NULL,
	[code] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request_Products]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request_Products](
	[request_product_id] [int] NOT NULL,
	[request_product_name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](500) NULL,
	[price] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[completion_time] [date] NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Request_Products] PRIMARY KEY CLUSTERED 
(
	[request_product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request_Products_SubMaterials]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request_Products_SubMaterials](
	[request_product_id] [int] NOT NULL,
	[sub_material_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[request_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[request_date] [datetime] NULL,
	[status_id] [int] NULL,
	[response] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[code] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[request_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salaries]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salaries](
	[user_id] [int] NULL,
	[amount] [decimal](19, 4) NULL,
	[date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[status_id] [int] NOT NULL,
	[status_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sub_Materials]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sub_Materials](
	[sub_material_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_material_name] [nvarchar](255) NOT NULL,
	[material_id] [int] NULL,
	[description] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[unit_price] [decimal](19, 4) NULL,
	[code] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[sub_material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupplierMaterial]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierMaterial](
	[supplier_material] [int] IDENTITY(1,1) NOT NULL,
	[supplier_name] [nvarchar](50) NULL,
	[phone_number] [nchar](10) NULL,
	[sub_material_id] [int] NULL,
 CONSTRAINT [PK_SupplierMaterial] PRIMARY KEY CLUSTERED 
(
	[supplier_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/26/2024 11:12:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[role_id] [int] NULL,
	[status_id] [int] NULL,
	[hire_date] [date] NULL,
	[infor_id] [int] NULL,
	[position_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdvanceSalary]  WITH CHECK ADD  CONSTRAINT [FK_AdvanceSalary_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[AdvanceSalary] CHECK CONSTRAINT [FK_AdvanceSalary_Users]
GO
ALTER TABLE [dbo].[EmployeeMaterials]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[EmployeeMaterials]  WITH CHECK ADD FOREIGN KEY([material_id])
REFERENCES [dbo].[Materials] ([material_id])
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Request_Products] FOREIGN KEY([request_product_id])
REFERENCES [dbo].[Request_Products] ([request_product_id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Request_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Information_User] FOREIGN KEY([infor_id])
REFERENCES [dbo].[Information_User] ([infor_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Information_User]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[ProcessProductError]  WITH CHECK ADD  CONSTRAINT [FK_ProcessProductError_Jobs] FOREIGN KEY([job_id])
REFERENCES [dbo].[Jobs] ([job_id])
GO
ALTER TABLE [dbo].[ProcessProductError] CHECK CONSTRAINT [FK_ProcessProductError_Jobs]
GO
ALTER TABLE [dbo].[ProcessProductError]  WITH CHECK ADD  CONSTRAINT [FK_ProcessProductError_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[ProcessProductError] CHECK CONSTRAINT [FK_ProcessProductError_Products]
GO
ALTER TABLE [dbo].[Product_Sub_Materials]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[Product_Sub_Materials]  WITH CHECK ADD FOREIGN KEY([sub_material_id])
REFERENCES [dbo].[Sub_Materials] ([sub_material_id])
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([product_id])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Status]
GO
ALTER TABLE [dbo].[Request_Products_SubMaterials]  WITH CHECK ADD  CONSTRAINT [FK_Request_Products_SubMaterials_Request_Products] FOREIGN KEY([request_product_id])
REFERENCES [dbo].[Request_Products] ([request_product_id])
GO
ALTER TABLE [dbo].[Request_Products_SubMaterials] CHECK CONSTRAINT [FK_Request_Products_SubMaterials_Request_Products]
GO
ALTER TABLE [dbo].[Request_Products_SubMaterials]  WITH CHECK ADD  CONSTRAINT [FK_Request_Products_SubMaterials_Sub_Materials] FOREIGN KEY([sub_material_id])
REFERENCES [dbo].[Sub_Materials] ([sub_material_id])
GO
ALTER TABLE [dbo].[Request_Products_SubMaterials] CHECK CONSTRAINT [FK_Request_Products_SubMaterials_Sub_Materials]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_Requests_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_Requests_Status]
GO
ALTER TABLE [dbo].[Salaries]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Sub_Materials]  WITH CHECK ADD FOREIGN KEY([material_id])
REFERENCES [dbo].[Materials] ([material_id])
GO
ALTER TABLE [dbo].[SupplierMaterial]  WITH CHECK ADD  CONSTRAINT [FK_SupplierMaterial_Sub_Materials] FOREIGN KEY([sub_material_id])
REFERENCES [dbo].[Sub_Materials] ([sub_material_id])
GO
ALTER TABLE [dbo].[SupplierMaterial] CHECK CONSTRAINT [FK_SupplierMaterial_Sub_Materials]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Information_User] FOREIGN KEY([infor_id])
REFERENCES [dbo].[Information_User] ([infor_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Information_User]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Potitions] FOREIGN KEY([position_id])
REFERENCES [dbo].[Potitions] ([position_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Potitions]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Status] FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([status_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Status]
GO
USE [master]
GO
ALTER DATABASE [test11] SET  READ_WRITE 
GO
