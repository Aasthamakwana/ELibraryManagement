USE [master]
GO
/****** Object:  Database [ELibraryManagement]    Script Date: 09-05-2024 11:03:51 ******/
CREATE DATABASE [ELibraryManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ELibraryManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ELibraryManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ELibraryManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\ELibraryManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ELibraryManagement] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ELibraryManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ELibraryManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ELibraryManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ELibraryManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ELibraryManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ELibraryManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ELibraryManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ELibraryManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ELibraryManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ELibraryManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ELibraryManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ELibraryManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ELibraryManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ELibraryManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ELibraryManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ELibraryManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ELibraryManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ELibraryManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ELibraryManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ELibraryManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ELibraryManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ELibraryManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ELibraryManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ELibraryManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ELibraryManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ELibraryManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ELibraryManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ELibraryManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ELibraryManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ELibraryManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ELibraryManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ELibraryManagement] SET QUERY_STORE = ON
GO
ALTER DATABASE [ELibraryManagement] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ELibraryManagement]
GO
/****** Object:  Table [dbo].[admin_login_table]    Script Date: 09-05-2024 11:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_login_table](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_admin_login_table] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[author_master_table]    Script Date: 09-05-2024 11:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[author_master_table](
	[author_id] [nchar](10) NOT NULL,
	[author_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_author_master_table] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_issue_table]    Script Date: 09-05-2024 11:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_issue_table](
	[member_id] [nvarchar](50) NULL,
	[member_name] [nvarchar](50) NULL,
	[book_id] [nvarchar](50) NULL,
	[book_name] [nvarchar](max) NULL,
	[issue_date] [nvarchar](50) NULL,
	[due_date] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[book_master_table]    Script Date: 09-05-2024 11:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_master_table](
	[book_id] [nchar](10) NOT NULL,
	[book_name] [nvarchar](max) NULL,
	[genre] [nvarchar](max) NULL,
	[author_name] [nvarchar](max) NULL,
	[publisher_name] [nvarchar](max) NULL,
	[publisher_date] [nvarchar](50) NULL,
	[language] [nvarchar](50) NULL,
	[edition] [nvarchar](max) NULL,
	[book_cost] [nchar](10) NULL,
	[no_of_pages] [nchar](10) NULL,
	[book_description] [nvarchar](max) NULL,
	[actual_stock] [nchar](10) NULL,
	[current_stock] [nchar](10) NULL,
	[book_img_link] [nvarchar](max) NULL,
 CONSTRAINT [PK_book_master_table] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member_master_table]    Script Date: 09-05-2024 11:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_master_table](
	[full_name] [nvarchar](50) NULL,
	[dob] [nvarchar](50) NULL,
	[contact_no] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[pincode] [nvarchar](50) NULL,
	[full_address] [nvarchar](max) NULL,
	[member_id] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
	[account_status] [nvarchar](50) NULL,
 CONSTRAINT [PK_member_master_table] PRIMARY KEY CLUSTERED 
(
	[member_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publisher_master_table]    Script Date: 09-05-2024 11:03:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publisher_master_table](
	[publisher_id] [nchar](10) NOT NULL,
	[publisher_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_publisher_] PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ELibraryManagement] SET  READ_WRITE 
GO
