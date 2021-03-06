USE [master]
GO
/****** Object:  Database [pat]    Script Date: 1/28/2018 8:16:32 PM ******/
CREATE DATABASE [pat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\pat.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\pat_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pat] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pat] SET ARITHABORT OFF 
GO
ALTER DATABASE [pat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pat] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [pat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pat] SET RECOVERY FULL 
GO
ALTER DATABASE [pat] SET  MULTI_USER 
GO
ALTER DATABASE [pat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pat] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'pat', N'ON'
GO
USE [pat]
GO
/****** Object:  Table [dbo].[charge]    Script Date: 1/28/2018 8:16:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[charge](
	[secId] [int] NOT NULL,
	[patId] [int] NOT NULL,
	[docName] [varchar](50) NULL,
	[hosCharge] [int] NULL,
	[docCharge] [int] NULL,
	[govTax] [int] NULL,
	[tot] [int] NULL,
 CONSTRAINT [PK_charge] PRIMARY KEY CLUSTERED 
(
	[secId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chenaling]    Script Date: 1/28/2018 8:16:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chenaling](
	[secId] [int] NOT NULL,
	[patId] [int] NOT NULL,
	[mediType] [varchar](50) NULL,
	[mediName] [varbinary](50) NULL,
	[days] [int] NULL,
	[dosage] [varbinary](50) NULL,
	[treatment] [varbinary](50) NULL,
 CONSTRAINT [PK_chenaling] PRIMARY KEY CLUSTERED 
(
	[secId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chenaling2]    Script Date: 1/28/2018 8:16:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chenaling2](
	[secId] [int] NOT NULL,
	[patId] [int] NOT NULL,
	[docId] [int] NOT NULL,
	[mediType] [varchar](50) NULL,
	[mediName] [varchar](50) NULL,
	[days] [int] NULL,
	[dosage] [varchar](50) NULL,
	[treatment] [varchar](50) NULL,
 CONSTRAINT [PK_chenaling2] PRIMARY KEY CLUSTERED 
(
	[secId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[docInfo]    Script Date: 1/28/2018 8:16:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[docInfo](
	[secID] [int] NOT NULL,
	[docName] [varchar](50) NULL,
	[docPhone] [varchar](50) NULL,
	[docEmail] [varchar](50) NULL,
	[docCharge] [int] NULL,
 CONSTRAINT [PK_docInfo] PRIMARY KEY CLUSTERED 
(
	[secID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[doctor]    Script Date: 1/28/2018 8:16:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[doctor](
	[secId] [int] NOT NULL,
	[patId] [int] NOT NULL,
	[docName] [varchar](50) NULL,
 CONSTRAINT [PK_doctor] PRIMARY KEY CLUSTERED 
(
	[secId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[patient]    Script Date: 1/28/2018 8:16:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[patient](
	[Id] [int] NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[sex] [varchar](50) NULL,
	[age] [int] NULL,
	[weight] [int] NULL,
	[bgroup] [varchar](50) NULL,
	[date] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[charge]  WITH CHECK ADD  CONSTRAINT [FK_charge_patient] FOREIGN KEY([patId])
REFERENCES [dbo].[patient] ([Id])
GO
ALTER TABLE [dbo].[charge] CHECK CONSTRAINT [FK_charge_patient]
GO
ALTER TABLE [dbo].[chenaling]  WITH CHECK ADD  CONSTRAINT [FK_chenaling_patient] FOREIGN KEY([patId])
REFERENCES [dbo].[patient] ([Id])
GO
ALTER TABLE [dbo].[chenaling] CHECK CONSTRAINT [FK_chenaling_patient]
GO
ALTER TABLE [dbo].[chenaling2]  WITH CHECK ADD  CONSTRAINT [FK_chenaling2_docInfo] FOREIGN KEY([docId])
REFERENCES [dbo].[docInfo] ([secID])
GO
ALTER TABLE [dbo].[chenaling2] CHECK CONSTRAINT [FK_chenaling2_docInfo]
GO
ALTER TABLE [dbo].[chenaling2]  WITH CHECK ADD  CONSTRAINT [FK_chenaling2_patient] FOREIGN KEY([patId])
REFERENCES [dbo].[patient] ([Id])
GO
ALTER TABLE [dbo].[chenaling2] CHECK CONSTRAINT [FK_chenaling2_patient]
GO
ALTER TABLE [dbo].[doctor]  WITH CHECK ADD  CONSTRAINT [FK_doctor_patient] FOREIGN KEY([patId])
REFERENCES [dbo].[patient] ([Id])
GO
ALTER TABLE [dbo].[doctor] CHECK CONSTRAINT [FK_doctor_patient]
GO
USE [master]
GO
ALTER DATABASE [pat] SET  READ_WRITE 
GO
