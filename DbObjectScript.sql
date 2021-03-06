USE [master]
GO
/****** Object:  Database [ASW]    Script Date: 02/27/2017 17:27:46 ******/
CREATE DATABASE [ASW] ON  PRIMARY 
( NAME = N'ASW', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ASW.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ASW_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ASW_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ASW] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASW].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASW] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ASW] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ASW] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ASW] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ASW] SET ARITHABORT OFF
GO
ALTER DATABASE [ASW] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [ASW] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ASW] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ASW] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ASW] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ASW] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ASW] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ASW] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ASW] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ASW] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ASW] SET  DISABLE_BROKER
GO
ALTER DATABASE [ASW] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ASW] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ASW] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ASW] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ASW] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ASW] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ASW] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ASW] SET  READ_WRITE
GO
ALTER DATABASE [ASW] SET RECOVERY FULL
GO
ALTER DATABASE [ASW] SET  MULTI_USER
GO
ALTER DATABASE [ASW] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ASW] SET DB_CHAINING OFF
GO
USE [ASW]
GO
/****** Object:  Table [dbo].[Guaranty]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guaranty](
	[ID] [int] NOT NULL,
	[Standard] [nvarchar](50) NULL,
	[years2] [nvarchar](50) NULL,
	[years3] [nvarchar](50) NULL,
 CONSTRAINT [PK_Guaranty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomTestStatus]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomTestStatus](
	[TestStatusId] [int] NOT NULL,
	[TestStatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomTestStatus] PRIMARY KEY CLUSTERED 
(
	[TestStatusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomSerialMatch]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomSerialMatch](
	[SerialMatchId] [int] NOT NULL,
	[SerialMatchName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomSerialMatch] PRIMARY KEY CLUSTERED 
(
	[SerialMatchId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomRoleLevel]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomRoleLevel](
	[RoleLevelId] [int] NOT NULL,
	[RoleLevelName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomRoleLevel] PRIMARY KEY CLUSTERED 
(
	[RoleLevelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomReplacedDongle]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomReplacedDongle](
	[ReplacedDongleId] [int] NOT NULL,
	[ReplacedDongleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomReplacedDongle] PRIMARY KEY CLUSTERED 
(
	[ReplacedDongleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomPartnerType]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomPartnerType](
	[PartnerTypeId] [int] NOT NULL,
	[PartnerTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomPartnerType] PRIMARY KEY CLUSTERED 
(
	[PartnerTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomDocTypeName]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomDocTypeName](
	[DocTypeId] [int] NOT NULL,
	[DocTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomDocTypeName] PRIMARY KEY CLUSTERED 
(
	[DocTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomDemoReturnedSold]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomDemoReturnedSold](
	[DemoReturnedSoldId] [int] NOT NULL,
	[DemoReturnedSoldName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomDemoReturnedSold] PRIMARY KEY CLUSTERED 
(
	[DemoReturnedSoldId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NomDeliveryType]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NomDeliveryType](
	[DeliveryTypeId] [int] NOT NULL,
	[DeliveryTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NomDeliveryType] PRIMARY KEY CLUSTERED 
(
	[DeliveryTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceType]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceType](
	[ID] [int] NOT NULL,
	[DeviceTypeName] [nvarchar](50) NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_DeviceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceStatus]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceStatus](
	[ID] [int] NOT NULL,
	[DeviceStatusName] [nvarchar](50) NULL,
	[DemoReturnSoldId] [int] NOT NULL,
	[DemoNotes] [nvarchar](500) NULL,
	[ReplacedDongleId] [int] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[StatusDateChanged] [datetime] NULL,
	[Replacement] [bit] NULL,
	[ReplacedWith] [nvarchar](50) NULL,
	[FujitsuNotes] [nvarchar](500) NULL,
 CONSTRAINT [PK_DeviceStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentType](
	[ID] [int] NOT NULL,
	[DocTypeId] [int] NOT NULL,
	[DocTypeDescription] [nvarchar](2000) NULL,
 CONSTRAINT [PK_DocumentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleLevelId] [int] NULL,
	[Description] [nvarchar](2000) NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingType]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingType](
	[ID] [int] NOT NULL,
	[ShippingTypeId] [int] NOT NULL,
	[OffStockInHouse] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShippingType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[DataString] [nvarchar](2000) NULL,
	[DataLong] [bigint] NULL,
	[DataDateTime] [datetime] NULL,
	[DataImage] [image] NULL,
	[DataBool] [bit] NULL,
	[DataDecimal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[PartnerTypeId] [int] NULL,
	[Description] [nvarchar](2000) NULL,
	[ID] [int] NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[ID] [int] NOT NULL,
	[PartnerTypeID] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[CRMID1] [nvarchar](50) NULL,
	[CRMID2] [nvarchar](50) NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[ID] [int] NOT NULL,
	[DeviceTypeID] [int] NULL,
	[SerialName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[DeviceName] [nvarchar](50) NULL,
	[SerialsMatchId] [int] NOT NULL,
	[Generation] [int] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[ReceiveEmails] [nvarchar](50) NULL,
	[LastLogin] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CanEdit] [bit] NULL,
	[CanDelete] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faulty]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faulty](
	[ID] [int] NOT NULL,
	[RMANo] [nvarchar](50) NULL,
	[FaultySerialNo] [int] NULL,
	[Distributor] [int] NULL,
	[Customer] [int] NULL,
	[FaultyUnitCondition] [nvarchar](50) NULL,
	[ASAction] [int] NULL,
	[ReplacementSerialNo] [int] NULL,
	[HardwareRecFromCust] [bit] NULL,
	[FaultyRecDate] [datetime] NULL,
	[DocumentID] [int] NULL,
 CONSTRAINT [PK_Faulty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[ID] [int] NOT NULL,
	[LogActionName] [nvarchar](50) NULL,
	[LogDescription] [nvarchar](50) NULL,
	[LogDateTime] [datetime] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acceptance]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acceptance](
	[ID] [int] NOT NULL,
	[AcceptanceNo] [nvarchar](50) NULL,
	[AcceptanceDate] [datetime] NULL,
	[DeviceID] [int] NULL,
	[AcceptanceSerialNo] [nvarchar](50) NULL,
	[UserID] [int] NULL,
	[ArrivedYesNo] [bit] NULL,
 CONSTRAINT [PK_Acceptance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestStatus]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestStatus](
	[ID] [int] NOT NULL,
	[TestStatusId] [int] NOT NULL,
	[Description] [nvarchar](500) NULL,
	[TestingDate] [datetime] NULL,
	[Remarks] [nvarchar](500) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_TestStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[ID] [int] NOT NULL,
	[DocumentTypeID] [int] NULL,
	[UserID] [int] NULL,
	[CustomerID] [int] NULL,
	[DocDate] [datetime] NULL,
	[ConsigneeID] [int] NULL,
	[CourierID] [int] NULL,
	[InvoiceNo] [nvarchar](50) NULL,
	[DeliveryNoteNo] [nvarchar](50) NULL,
	[ShippingTerminal] [nvarchar](50) NULL,
	[PaymentTerms] [nvarchar](50) NULL,
	[CurrencyCurrency] [nvarchar](50) NULL,
	[AddContact] [nvarchar](50) NULL,
	[AddAttention] [nvarchar](50) NULL,
	[TrackingNo] [nvarchar](50) NULL,
	[VendorShippInvoiceNo] [nvarchar](50) NULL,
	[DeliveryReference] [nvarchar](50) NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentDeliveryDetails]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentDeliveryDetails](
	[ID] [int] NOT NULL,
	[DocumentID] [int] NULL,
	[NrNumber] [nvarchar](50) NULL,
	[Quantity] [int] NULL,
	[Project] [nvarchar](50) NULL,
	[NumberOfPackages] [int] NULL,
	[Weight] [float] NULL,
	[DeviceID] [int] NULL,
	[Description] [nvarchar](2000) NULL,
	[Unit] [nvarchar](50) NULL,
	[UnitPrice] [float] NULL,
	[Discount] [float] NULL,
	[GuarantyID] [int] NULL,
	[CRMID1] [nvarchar](50) NULL,
	[CRMID2] [nvarchar](50) NULL,
	[EndUser] [int] NULL,
	[Dimensions] [nvarchar](50) NULL,
	[WarrantyExpirationDate] [date] NULL,
 CONSTRAINT [PK_DocumentDeliveryDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceLifeCycle]    Script Date: 02/27/2017 17:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceLifeCycle](
	[ID] [int] NOT NULL,
	[DeviceID] [int] NULL,
	[DocumentID] [int] NULL,
	[DeviceStatusID] [int] NULL,
	[TestStatusID] [int] NULL,
	[ShippingTypeID] [int] NULL,
 CONSTRAINT [PK_DeviceLifeCycle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Partners_PartnerType]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerType] FOREIGN KEY([PartnerTypeID])
REFERENCES [dbo].[PartnerType] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerType]
GO
/****** Object:  ForeignKey [FK_Device_DeviceType]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Device]  WITH CHECK ADD  CONSTRAINT [FK_Device_DeviceType] FOREIGN KEY([DeviceTypeID])
REFERENCES [dbo].[DeviceType] ([ID])
GO
ALTER TABLE [dbo].[Device] CHECK CONSTRAINT [FK_Device_DeviceType]
GO
/****** Object:  ForeignKey [FK_Users_UserRoles1]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserRoles1] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRoles] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserRoles1]
GO
/****** Object:  ForeignKey [FK_Faulty_Device]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Faulty]  WITH CHECK ADD  CONSTRAINT [FK_Faulty_Device] FOREIGN KEY([FaultySerialNo])
REFERENCES [dbo].[Device] ([ID])
GO
ALTER TABLE [dbo].[Faulty] CHECK CONSTRAINT [FK_Faulty_Device]
GO
/****** Object:  ForeignKey [FK_Faulty_Device1]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Faulty]  WITH CHECK ADD  CONSTRAINT [FK_Faulty_Device1] FOREIGN KEY([ReplacementSerialNo])
REFERENCES [dbo].[Device] ([ID])
GO
ALTER TABLE [dbo].[Faulty] CHECK CONSTRAINT [FK_Faulty_Device1]
GO
/****** Object:  ForeignKey [FK_Faulty_Partners]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Faulty]  WITH CHECK ADD  CONSTRAINT [FK_Faulty_Partners] FOREIGN KEY([Distributor])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Faulty] CHECK CONSTRAINT [FK_Faulty_Partners]
GO
/****** Object:  ForeignKey [FK_Faulty_Partners1]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Faulty]  WITH CHECK ADD  CONSTRAINT [FK_Faulty_Partners1] FOREIGN KEY([Customer])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Faulty] CHECK CONSTRAINT [FK_Faulty_Partners1]
GO
/****** Object:  ForeignKey [FK_Faulty_ShippingType]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Faulty]  WITH CHECK ADD  CONSTRAINT [FK_Faulty_ShippingType] FOREIGN KEY([ASAction])
REFERENCES [dbo].[ShippingType] ([ID])
GO
ALTER TABLE [dbo].[Faulty] CHECK CONSTRAINT [FK_Faulty_ShippingType]
GO
/****** Object:  ForeignKey [FK_Logs_Users]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Users]
GO
/****** Object:  ForeignKey [FK_Acceptance_Device]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Acceptance]  WITH CHECK ADD  CONSTRAINT [FK_Acceptance_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
ALTER TABLE [dbo].[Acceptance] CHECK CONSTRAINT [FK_Acceptance_Device]
GO
/****** Object:  ForeignKey [FK_Acceptance_Users]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Acceptance]  WITH CHECK ADD  CONSTRAINT [FK_Acceptance_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Acceptance] CHECK CONSTRAINT [FK_Acceptance_Users]
GO
/****** Object:  ForeignKey [FK_TestStatus_Users1]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[TestStatus]  WITH CHECK ADD  CONSTRAINT [FK_TestStatus_Users1] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[TestStatus] CHECK CONSTRAINT [FK_TestStatus_Users1]
GO
/****** Object:  ForeignKey [FK_Document_DocumentType]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_DocumentType] FOREIGN KEY([DocumentTypeID])
REFERENCES [dbo].[DocumentType] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_DocumentType]
GO
/****** Object:  ForeignKey [FK_Document_Partners]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Partners] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Partners]
GO
/****** Object:  ForeignKey [FK_Document_Partners1]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Partners1] FOREIGN KEY([CourierID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Partners1]
GO
/****** Object:  ForeignKey [FK_Document_Partners2]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Partners2] FOREIGN KEY([ConsigneeID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Partners2]
GO
/****** Object:  ForeignKey [FK_Document_Users]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_Users]
GO
/****** Object:  ForeignKey [FK_DocumentDeliveryDetails_Device]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DocumentDeliveryDetails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeliveryDetails_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
ALTER TABLE [dbo].[DocumentDeliveryDetails] CHECK CONSTRAINT [FK_DocumentDeliveryDetails_Device]
GO
/****** Object:  ForeignKey [FK_DocumentDeliveryDetails_Document]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DocumentDeliveryDetails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeliveryDetails_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([ID])
GO
ALTER TABLE [dbo].[DocumentDeliveryDetails] CHECK CONSTRAINT [FK_DocumentDeliveryDetails_Document]
GO
/****** Object:  ForeignKey [FK_DocumentDeliveryDetails_Guaranty]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DocumentDeliveryDetails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeliveryDetails_Guaranty] FOREIGN KEY([GuarantyID])
REFERENCES [dbo].[Guaranty] ([ID])
GO
ALTER TABLE [dbo].[DocumentDeliveryDetails] CHECK CONSTRAINT [FK_DocumentDeliveryDetails_Guaranty]
GO
/****** Object:  ForeignKey [FK_DocumentDeliveryDetails_Partners]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DocumentDeliveryDetails]  WITH CHECK ADD  CONSTRAINT [FK_DocumentDeliveryDetails_Partners] FOREIGN KEY([EndUser])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[DocumentDeliveryDetails] CHECK CONSTRAINT [FK_DocumentDeliveryDetails_Partners]
GO
/****** Object:  ForeignKey [FK_DeviceLifeCycle_Device]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DeviceLifeCycle]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLifeCycle_Device] FOREIGN KEY([DeviceID])
REFERENCES [dbo].[Device] ([ID])
GO
ALTER TABLE [dbo].[DeviceLifeCycle] CHECK CONSTRAINT [FK_DeviceLifeCycle_Device]
GO
/****** Object:  ForeignKey [FK_DeviceLifeCycle_DeviceStatus]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DeviceLifeCycle]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLifeCycle_DeviceStatus] FOREIGN KEY([DeviceStatusID])
REFERENCES [dbo].[DeviceStatus] ([ID])
GO
ALTER TABLE [dbo].[DeviceLifeCycle] CHECK CONSTRAINT [FK_DeviceLifeCycle_DeviceStatus]
GO
/****** Object:  ForeignKey [FK_DeviceLifeCycle_Document]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DeviceLifeCycle]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLifeCycle_Document] FOREIGN KEY([DocumentID])
REFERENCES [dbo].[Document] ([ID])
GO
ALTER TABLE [dbo].[DeviceLifeCycle] CHECK CONSTRAINT [FK_DeviceLifeCycle_Document]
GO
/****** Object:  ForeignKey [FK_DeviceLifeCycle_ShippingType]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DeviceLifeCycle]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLifeCycle_ShippingType] FOREIGN KEY([ShippingTypeID])
REFERENCES [dbo].[ShippingType] ([ID])
GO
ALTER TABLE [dbo].[DeviceLifeCycle] CHECK CONSTRAINT [FK_DeviceLifeCycle_ShippingType]
GO
/****** Object:  ForeignKey [FK_DeviceLifeCycle_TestStatus]    Script Date: 02/27/2017 17:27:46 ******/
ALTER TABLE [dbo].[DeviceLifeCycle]  WITH CHECK ADD  CONSTRAINT [FK_DeviceLifeCycle_TestStatus] FOREIGN KEY([TestStatusID])
REFERENCES [dbo].[TestStatus] ([ID])
GO
ALTER TABLE [dbo].[DeviceLifeCycle] CHECK CONSTRAINT [FK_DeviceLifeCycle_TestStatus]
GO
