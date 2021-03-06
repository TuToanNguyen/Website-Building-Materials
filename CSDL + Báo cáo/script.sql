USE [master]
GO
/****** Object:  Database [BuildingMaterials1]    Script Date: 7/3/2018 2:37:35 PM ******/
CREATE DATABASE [BuildingMaterials1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BuildingMaterials', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BuildingMaterials1.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BuildingMaterials_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BuildingMaterials1_log.ldf' , SIZE = 3840KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BuildingMaterials1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BuildingMaterials1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BuildingMaterials1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET ARITHABORT OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BuildingMaterials1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BuildingMaterials1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BuildingMaterials1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BuildingMaterials1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BuildingMaterials1] SET  MULTI_USER 
GO
ALTER DATABASE [BuildingMaterials1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BuildingMaterials1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BuildingMaterials1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BuildingMaterials1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BuildingMaterials1] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BuildingMaterials1', N'ON'
GO
ALTER DATABASE [BuildingMaterials1] SET QUERY_STORE = OFF
GO
USE [BuildingMaterials1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BuildingMaterials1]
GO
/****** Object:  Table [dbo].[AccountProduct]    Script Date: 7/3/2018 2:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountProduct](
	[AcountName] [varchar](50) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[Date] [datetime] NULL,
	[Status] [bit] NULL,
	[Number] [int] NULL,
 CONSTRAINT [PK_AccountProduct_1] PRIMARY KEY CLUSTERED 
(
	[AcountName] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts1]    Script Date: 7/3/2018 2:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts1](
	[AcountName] [varchar](50) NOT NULL,
	[Pass] [varchar](30) NULL,
	[Gender] [nvarchar](5) NULL,
	[BirthDay] [datetime] NULL,
	[HomeTown] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_Accounts1_1] PRIMARY KEY CLUSTERED 
(
	[AcountName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountsBank]    Script Date: 7/3/2018 2:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountsBank](
	[AccountBankID] [varchar](50) NOT NULL,
	[AccountName] [nvarchar](50) NULL,
	[Money] [varchar](30) NULL,
	[FullName] [nvarchar](50) NULL,
	[HomeTown] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_accounts] PRIMARY KEY CLUSTERED 
(
	[AccountBankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/3/2018 2:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentNew]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentNew](
	[CommenNewID] [bigint] NOT NULL,
	[NewID] [bigint] NULL,
	[Title] [nvarchar](50) NULL,
	[Detail] [ntext] NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_CommentNew] PRIMARY KEY CLUSTERED 
(
	[CommenNewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommenID] [int] NOT NULL,
	[ProductID] [bigint] NULL,
	[Title] [nvarchar](100) NULL,
	[Detail] [nvarchar](100) NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manages]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manages](
	[AccountID] [varchar](50) NOT NULL,
	[AccountPass] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[FullName] [nvarchar](50) NULL,
	[Powers] [nvarchar](50) NULL,
	[BirthDay] [datetime] NULL,
	[Gender] [nvarchar](5) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Address] [nvarchar](100) NULL,
 CONSTRAINT [PK_Manages] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewID] [bigint] IDENTITY(1,1) NOT NULL,
	[NewCode] [varchar](20) NULL,
	[Title] [nvarchar](300) NOT NULL,
	[SubTitle] [ntext] NULL,
	[Detail] [ntext] NULL,
	[Image] [nvarchar](300) NULL,
	[KeyWord] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[TotalView] [int] NULL,
	[IsPost] [bit] NULL,
	[PostDate] [datetime] NULL,
	[Author] [nvarchar](50) NULL,
	[Account] [varchar](30) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[SmallProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SmallProductCategoryCode] [varchar](10) NOT NULL,
	[SmallProductCategoryName] [nvarchar](50) NULL,
	[CategoryID] [int] NULL,
	[Description] [nvarchar](100) NULL,
	[IsDisplay] [bit] NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_SmallProductCategory] PRIMARY KEY CLUSTERED 
(
	[SmallProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductCode] [varchar](50) NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Number] [int] NULL,
	[SubTitle] [ntext] NULL,
	[Detail] [ntext] NULL,
	[SmallProductCategoryID] [int] NULL,
	[Production] [nvarchar](200) NULL,
	[SuppliersID] [int] NULL,
	[Money] [nvarchar](50) NULL,
	[Image] [nvarchar](200) NULL,
	[IsDisplay] [bit] NULL,
	[TotalView] [int] NULL,
	[CreateDate] [datetime] NULL,
	[ModifyDate] [datetime] NULL,
	[Origin] [nvarchar](200) NULL,
	[Maker] [nvarchar](100) NULL,
	[Goods] [nvarchar](200) NULL,
	[Color] [nvarchar](50) NULL,
	[Features] [nvarchar](200) NULL,
	[Note] [nvarchar](100) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 7/3/2018 2:37:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SuppliersID] [int] IDENTITY(1,1) NOT NULL,
	[suppliersName] [nvarchar](50) NULL,
	[HomeTown] [nvarchar](50) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SuppliersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AccountProduct] ([AcountName], [ProductID], [Date], [Status], [Number]) VALUES (N'nhu', 1, CAST(N'2018-06-02T13:44:04.207' AS DateTime), 0, 2)
INSERT [dbo].[AccountProduct] ([AcountName], [ProductID], [Date], [Status], [Number]) VALUES (N'tutoan', 12, CAST(N'2018-07-02T12:05:44.063' AS DateTime), 0, 1)
INSERT [dbo].[AccountProduct] ([AcountName], [ProductID], [Date], [Status], [Number]) VALUES (N'tutoan', 30, CAST(N'2018-07-02T16:06:03.863' AS DateTime), 1, 2)
INSERT [dbo].[Accounts1] ([AcountName], [Pass], [Gender], [BirthDay], [HomeTown], [Email], [Note]) VALUES (N'nhu', N'123', N'Nữ', CAST(N'1996-01-01T00:00:00.000' AS DateTime), N'Vĩnh Long', N'nhunguyen105@gmail.com', NULL)
INSERT [dbo].[Accounts1] ([AcountName], [Pass], [Gender], [BirthDay], [HomeTown], [Email], [Note]) VALUES (N'tutoan', N'1', N'Nữ', CAST(N'1996-10-05T00:00:00.000' AS DateTime), N'Vĩnh Long', N'tutoannguyen105@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Ngói và gạch xây dựng', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Đá', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Sắt - Thép', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Sơn', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Xi măng', NULL)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Tôn', NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
INSERT [dbo].[Manages] ([AccountID], [AccountPass], [Email], [FullName], [Powers], [BirthDay], [Gender], [PhoneNumber], [Address]) VALUES (N'huy', N'123', N'huy1213@gmail.com', N'Huy Trần Minh', NULL, NULL, N'Nam', N'34231231231', N'VinhLong')
INSERT [dbo].[Manages] ([AccountID], [AccountPass], [Email], [FullName], [Powers], [BirthDay], [Gender], [PhoneNumber], [Address]) VALUES (N'nhat', N'123', N'tung3213@gmail.com', N'Nguyễn Thanh Tùng', NULL, NULL, N'Nam', N'241231231231', N'Vinh Long')
INSERT [dbo].[Manages] ([AccountID], [AccountPass], [Email], [FullName], [Powers], [BirthDay], [Gender], [PhoneNumber], [Address]) VALUES (N'tu', N'123', N'tuphanminh21@gmail.com', N'Phan Minh Tú', NULL, NULL, N'Nam', N'213123123', N'Tiền Giang')
INSERT [dbo].[Manages] ([AccountID], [AccountPass], [Email], [FullName], [Powers], [BirthDay], [Gender], [PhoneNumber], [Address]) VALUES (N'tung', N'123', N'batung1231@gmail.com', N'Tùng Nguyễn Bá', NULL, NULL, N'Nam', N'234234234234', N'Gia Lai')
INSERT [dbo].[Manages] ([AccountID], [AccountPass], [Email], [FullName], [Powers], [BirthDay], [Gender], [PhoneNumber], [Address]) VALUES (N'tutoan', N'123', N'tutoannguyen105@gmail.com', N'Nguyễn Tu Toan', N'Admin', CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'Nam', N'01214228322', N'VINH LONG')
INSERT [dbo].[Manages] ([AccountID], [AccountPass], [Email], [FullName], [Powers], [BirthDay], [Gender], [PhoneNumber], [Address]) VALUES (N'ty', N'123', N'tutoannguyen105@gmail.com', N'Nguyễn Tu Toan', NULL, CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'Nam', N'01214228322', N'VINH LONG')
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (65, N'7', N'Chọn gạch ốp lát làm đẹp cho ngôi nhà', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p><br />
<br />
Ph&aacute;t biểu tại lễ k&yacute; kết, Tổng Gi&aacute;m đốc EVN Phạm L&ecirc; Thanh cho biết Nhật Bản l&agrave; đối t&aacute;c chiến lược quan trọng của EVN. Sợ hỗ trợ t&agrave;i ch&iacute;nh của Nhật Bản qua nguồn vốn ODA v&agrave; t&iacute;n dụng xuất khẩu lu&ocirc;n đứng đầu trong danh mục c&aacute;c nh&agrave; t&agrave;i trợ cho dự &aacute;n điện của EVN với tổng số tiền l&ecirc;n tới 420 tỷ yen.<br />
<br />
Trong lĩnh vực điện hạt nh&acirc;n, Nhật Bản đ&atilde; t&iacute;ch cực hỗ trợ Việt Nam từ cung cấp th&ocirc;ng tin, c&aacute;c chương tr&igrave;nh đ&agrave;o tạo tham quan học tập, quan hệ c&ocirc;ng ch&uacute;ng, hỗ trợ c&aacute;c cơ quan ph&aacute;p quy, c&aacute;c đơn vị tư vấn v&agrave; chủ đầu tư trong hơn 15 năm qua.<br />
<br />
Đặc biệt từ đầu năm 2010, Ch&iacute;nh phủ Nhật Bản đ&atilde; c&oacute; thiện ch&iacute; cung cấp khoản t&agrave;i trợ để JAPC thực hiện dịch vụ lập hồ sơ ph&ecirc; duyệt địa điểm v&agrave; b&aacute;o c&aacute;o nghi&ecirc;n cứu khả thi cho dự &aacute;n x&acirc;y dựng Nh&agrave; m&aacute;y điện hạt nh&acirc;n Ninh Thuận 2.<br />
<br />
R&uacute;t kinh nghiệm từ sự cố nh&agrave; m&aacute;y điện nguy&ecirc;n tử Nhật Bản Fukushima hồi th&aacute;ng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, &ocirc;ng Tanizaki Yasuaki b&agrave;y tỏ mong muốn gi&uacute;p Việt Nam &aacute;p dụng c&ocirc;ng nghệ hiện đại nhất v&agrave; an to&agrave;n nhất về lĩnh vực điện hạt nh&acirc;n, g&oacute;p phần ph&aacute;t triển c&aacute;c nh&agrave; m&aacute;y điện hạt nh&acirc;n tại Việt Nam.<br />
<br />
Dự &aacute;n Nh&agrave; m&aacute;y điện hạt nh&acirc;n Ninh Thuận 2 thuộc Dự &aacute;n điện hạt nh&acirc;n Ninh Thuận do EVN l&agrave;m chủ đầu tư.<br />
<br />
Đ&acirc;y l&agrave; dự &aacute;n điện hạt nh&acirc;n đầu ti&ecirc;n của Việt Nam, thuộc Quy hoạch ph&aacute;t triển điện lực quốc gia giai đoạn 2011-2020 c&oacute; x&eacute;t đến năm 2030 v&agrave; được Quốc hội kh&oacute;a XII ph&ecirc; chuẩn chủ trương đầu tư.<br />
<br />
Nh&agrave; m&aacute;y điện hạt nh&acirc;n Ninh Thuận 2 c&oacute; tổng c&ocirc;ng suất lắp đặt khoảng 2.000MW, 2 tổ m&aacute;y, x&acirc;y dựng tại x&atilde; Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với c&ocirc;ng nghệ l&ograve; nước nhẹ cải tiến, thế hệ l&ograve; hiện đại, đ&atilde; được kiểm chứng, bảo đảm tuyệt đối an to&agrave;n v&agrave; hiệu quả kinh tế.<br />
<br />
Khi đi v&agrave;o hoạt động, dự &aacute;n sẽ g&oacute;p phần đ&aacute;ng kể đ&aacute;p ứng nhu cầu điện phục vụ ph&aacute;t triển kinh tế-x&atilde; hội, tăng cường an ninh năng lượng quốc gia, giảm ph&aacute;t thải v&agrave; ph&aacute;t triển tr&igrave;nh độ khoa học c&ocirc;ng nghệ của quốc gia về lĩnh vực năng lượng nguy&ecirc;n tử./.<br />
&nbsp;</p>
', N'', N'', CAST(N'2018-06-27T15:25:05.060' AS DateTime), 0, 1, CAST(N'2018-06-27T15:25:05.060' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (66, N'8', N'Chọn gương cho phòng tắm', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/8535be4421f8de57ab09aef79e75d689_vlxd.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 0, 0, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (68, N'10', N'Bí quyết chọn đồ phù hợp cho nhà bếp', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/38thep.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tung', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (69, N'11', N'Nhật Bản tư vấn dự án điện hạt nhân Ninh Thuận', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/maxresdefault.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tung', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (70, N'12', N'Viglacera ra mắt sản phẩm Bê tông khí cấp cường độ 6', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/15_KLFU.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (71, N'13', N'Phát triển vật liệu xây dựng không nung', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/522-small-nhat.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (72, N'14', N'Hà Nội phê duyệt quy hoạch phát triển vật liệu xây dựng', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/phong-thuy-voi-vat-lieu-xay-dung.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tung', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (73, N'15', N'Nhật Bản tư vấn dự án điện hạt nhân Ninh Thuận', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/sieuthivatlieuxaydung.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (74, N'16', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/2012092810a-t32_1_4.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (77, N'19', N'Chọn gạch ốp lát làm đẹp cho ngôi nhà', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N' <p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>  ', N'', N'', CAST(N'2018-06-29T10:35:55.937' AS DateTime), 0, 0, CAST(N'2018-06-29T10:35:55.937' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (78, N'20', N'Nhật Bản tư vấn dự án điện hạt nhân Ninh Thuận', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/2012092810a-t32_1_4.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tung', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (79, N'21', N'Hà Nội phê duyệt quy hoạch phát triển vật liệu xây dựng', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/522-small-nhat.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tung', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (80, N'22', N'Bí quyết chọn đồ phù hợp cho nhà bếp', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p style="text-align: justify;"><br><br>Phát biểu tại lễ ký kết, Tổng Giám đốc EVN Phạm Lê Thanh cho biết Nhật Bản là đối tác chiến lược quan trọng của EVN. Sợ hỗ trợ tài chính của Nhật Bản qua nguồn vốn ODA và tín dụng xuất khẩu luôn đứng đầu trong danh mục các nhà tài trợ cho dự án điện của EVN với tổng số tiền lên tới 420 tỷ yen.<br><br>Trong lĩnh vực điện hạt nhân, Nhật Bản đã tích cực hỗ trợ Việt Nam từ cung cấp thông tin, các chương trình đào tạo tham quan học tập, quan hệ công chúng, hỗ trợ các cơ quan pháp quy, các đơn vị tư vấn và chủ đầu tư trong hơn 15 năm qua.<br><br>Đặc biệt từ đầu năm 2010, Chính phủ Nhật Bản đã có thiện chí cung cấp khoản tài trợ để JAPC thực hiện dịch vụ lập hồ sơ phê duyệt địa điểm và báo cáo nghiên cứu khả thi cho dự án xây dựng Nhà máy điện hạt nhân Ninh Thuận 2.<br><br>Rút kinh nghiệm từ sự cố nhà máy điện nguyên tử Nhật Bản Fukushima hồi tháng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, ông Tanizaki Yasuaki bày tỏ mong muốn giúp Việt Nam áp dụng công nghệ hiện đại nhất và an toàn nhất về lĩnh vực điện hạt nhân, góp phần phát triển các nhà máy điện hạt nhân tại Việt Nam.<br><br>Dự án Nhà máy điện hạt nhân Ninh Thuận 2 thuộc Dự án điện hạt nhân Ninh Thuận do EVN làm chủ đầu tư.<br><br>Đây là dự án điện hạt nhân đầu tiên của Việt Nam, thuộc Quy hoạch phát triển điện lực quốc gia giai đoạn 2011-2020 có xét đến năm 2030 và được Quốc hội khóa XII phê chuẩn chủ trương đầu tư.<br><br>Nhà máy điện hạt nhân Ninh Thuận 2 có tổng công suất lắp đặt khoảng 2.000MW, 2 tổ máy, xây dựng tại xã Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với công nghệ lò nước nhẹ cải tiến, thế hệ lò hiện đại, đã được kiểm chứng, bảo đảm tuyệt đối an toàn và hiệu quả kinh tế.<br><br>Khi đi vào hoạt động, dự án sẽ góp phần đáng kể đáp ứng nhu cầu điện phục vụ phát triển kinh tế-xã hội, tăng cường an ninh năng lượng quốc gia, giảm phát thải và phát triển trình độ khoa học công nghệ của quốc gia về lĩnh vực năng lượng nguyên tử./.<br><br></p>', N'Images/News/phong-thuy-voi-vat-lieu-xay-dung.jpg', NULL, CAST(N'2018-06-10T00:00:00.000' AS DateTime), 5, 1, CAST(N'2018-06-20T00:00:00.000' AS DateTime), N'tutoan', NULL)
INSERT [dbo].[News] ([NewID], [NewCode], [Title], [SubTitle], [Detail], [Image], [KeyWord], [CreateDate], [TotalView], [IsPost], [PostDate], [Author], [Account]) VALUES (81, N'23', N'Chọn gạch ốp lát làm đẹp cho ngôi nhà', N'Sáng 28/9, lễ ký kết Hợp đồng dịch vụ tư vấn lập hồ sơ phê duyệt địa điểm và dự án đầu tư Nhà máy điện hạt nhân Ninh Thuận 2 đã diễn ra giữa Tập đoàn Điện lực Việt Nam (EVN) với Công ty Điện nguyên tử Nhật Bản (JAPC).Lễ ký kết hợp đồng.Theo hợp đồng, JAPC sẽ thực hiện dịch vụ tư vấn lập hồ sơ phê duyệt [ … ]', N'<p>sdbdkbkskdbk 4365345345cvbcvbc</p>

<p><br />
<br />
Ph&aacute;t biểu tại lễ k&yacute; kết, Tổng Gi&aacute;m đốc EVN Phạm L&ecirc; Thanh cho biết Nhật Bản l&agrave; đối t&aacute;c chiến lược quan trọng của EVN. Sợ hỗ trợ t&agrave;i ch&iacute;nh của Nhật Bản qua nguồn vốn ODA v&agrave; t&iacute;n dụng xuất khẩu lu&ocirc;n đứng đầu trong danh mục c&aacute;c nh&agrave; t&agrave;i trợ cho dự &aacute;n điện của EVN với tổng số tiền l&ecirc;n tới 420 tỷ yen.<br />
<br />
Trong lĩnh vực điện hạt nh&acirc;n, Nhật Bản đ&atilde; t&iacute;ch cực hỗ trợ Việt Nam từ cung cấp th&ocirc;ng tin, c&aacute;c chương tr&igrave;nh đ&agrave;o tạo tham quan học tập, quan hệ c&ocirc;ng ch&uacute;ng, hỗ trợ c&aacute;c cơ quan ph&aacute;p quy, c&aacute;c đơn vị tư vấn v&agrave; chủ đầu tư trong hơn 15 năm qua.<br />
<br />
Đặc biệt từ đầu năm 2010, Ch&iacute;nh phủ Nhật Bản đ&atilde; c&oacute; thiện ch&iacute; cung cấp khoản t&agrave;i trợ để JAPC thực hiện dịch vụ lập hồ sơ ph&ecirc; duyệt địa điểm v&agrave; b&aacute;o c&aacute;o nghi&ecirc;n cứu khả thi cho dự &aacute;n x&acirc;y dựng Nh&agrave; m&aacute;y điện hạt nh&acirc;n Ninh Thuận 2.<br />
<br />
R&uacute;t kinh nghiệm từ sự cố nh&agrave; m&aacute;y điện nguy&ecirc;n tử Nhật Bản Fukushima hồi th&aacute;ng Ba vừa qua, Đại sứ Nhật Bản tại Việt Nam, &ocirc;ng Tanizaki Yasuaki b&agrave;y tỏ mong muốn gi&uacute;p Việt Nam &aacute;p dụng c&ocirc;ng nghệ hiện đại nhất v&agrave; an to&agrave;n nhất về lĩnh vực điện hạt nh&acirc;n, g&oacute;p phần ph&aacute;t triển c&aacute;c nh&agrave; m&aacute;y điện hạt nh&acirc;n tại Việt Nam.<br />
<br />
Dự &aacute;n Nh&agrave; m&aacute;y điện hạt nh&acirc;n Ninh Thuận 2 thuộc Dự &aacute;n điện hạt nh&acirc;n Ninh Thuận do EVN l&agrave;m chủ đầu tư.<br />
<br />
Đ&acirc;y l&agrave; dự &aacute;n điện hạt nh&acirc;n đầu ti&ecirc;n của Việt Nam, thuộc Quy hoạch ph&aacute;t triển điện lực quốc gia giai đoạn 2011-2020 c&oacute; x&eacute;t đến năm 2030 v&agrave; được Quốc hội kh&oacute;a XII ph&ecirc; chuẩn chủ trương đầu tư.<br />
<br />
Nh&agrave; m&aacute;y điện hạt nh&acirc;n Ninh Thuận 2 c&oacute; tổng c&ocirc;ng suất lắp đặt khoảng 2.000MW, 2 tổ m&aacute;y, x&acirc;y dựng tại x&atilde; Vĩnh Hải, huyện Ninh Hải, tỉnh Ninh Thuận, với c&ocirc;ng nghệ l&ograve; nước nhẹ cải tiến, thế hệ l&ograve; hiện đại, đ&atilde; được kiểm chứng, bảo đảm tuyệt đối an to&agrave;n v&agrave; hiệu quả kinh tế.<br />
<br />
Khi đi v&agrave;o hoạt động, dự &aacute;n sẽ g&oacute;p phần đ&aacute;ng kể đ&aacute;p ứng nhu cầu điện phục vụ ph&aacute;t triển kinh tế-x&atilde; hội, tăng cường an ninh năng lượng quốc gia, giảm ph&aacute;t thải v&agrave; ph&aacute;t triển tr&igrave;nh độ khoa học c&ocirc;ng nghệ của quốc gia về lĩnh vực năng lượng nguy&ecirc;n tử./.<br />
&nbsp;</p>
', N'../Images/Products/ximang_nhaoxahoi.jpg', N'aaaaaa', CAST(N'2018-07-02T09:45:39.763' AS DateTime), 0, 0, CAST(N'2018-07-02T09:45:39.763' AS DateTime), N'tutoan', NULL)
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (1, N'sc01', N'Ngói Nhật Sóng Nhỏ', 1, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (2, N'sc02', N'Ngói Nhật Phẳng', 1, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (7, N'sc04', N'Đá 3 x 4', 2, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (8, N'sc05', N'Đá 5 ×7', 2, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (9, N'sc06', N'Đá 4 ×6', 2, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (10, N'sc07', N'Đá mi sàng', 2, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (11, N'sc08', N'Đá mi bụi', 2, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (12, N'sc09', N'Sắt D6', 3, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (13, N'sc10', N'Sắt D10', 3, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (14, N'sc11', N'Sắt D16', 3, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (15, N'sc12', N'Sơn nước', 4, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (16, N'sc13', N'Sơn dầu', 4, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (17, N'sc14', N'Xi măng hà tiên 1', 5, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (18, N'sc15', N'Xi măng hà tiên 2', 5, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (19, N'sc16', N'Xi măng Holcim', 5, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (20, N'sc17', N'Xi măng Hạ Long', 5, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (21, N'sc18', N'Gạch ống', 1, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (22, N'sc19', N'Gạch tiểu', 1, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (23, N'sc20', N'Gạch bông', 1, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (24, N'sc21', N'Gạch viền', 1, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (38, N'sc03', N'Tôn hoa sen', 6, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (39, N'sc22', N'Tôn Việt Hàn', 6, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (40, N'sc23', N'Thép cuộn', 3, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (41, N'sc24', N'Thép thanh', 3, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (42, N'sc25', N'Thép ống', 3, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (43, N'sc26', N'Sơn bóng', 4, NULL, NULL, NULL)
INSERT [dbo].[ProductCategory] ([SmallProductCategoryID], [SmallProductCategoryCode], [SmallProductCategoryName], [CategoryID], [Description], [IsDisplay], [Note]) VALUES (44, N'sc27', N'Tôn Thăng Long', 6, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (1, N'sp01', N'Ngói Nhật Phẳng ', 500, NULL, NULL, 1, N'Nhật bản', 1, N'15000', N'Images/Products/7854_ngoi-prime-hai-song-trang-men-do.jpg', NULL, NULL, NULL, NULL, N'Nhật bản', N'PMK', NULL, N'Màu đỏ', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (2, N'sp02', N'Xi măng hà tiên 2', 250, NULL, NULL, 18, N'Nhật bản', 1, N'18000', N'Images/Products/qmu1190190480.jpg', NULL, NULL, NULL, NULL, N'Nhật bản', N'PMK', N'Srinit', N'Màu nâu', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (3, N'sp03', N'Đá mi sàng', 550, NULL, NULL, 10, N'Việt Nam', 2, N'150000', N'Images/Products/damisan.jpg', NULL, NULL, NULL, NULL, N'Nhật bản', N'PMK', N'Srinit', N'Màu đỏ', N'Tôn mạ hợp kim nhôm kẽm Hoa Sen được sản xuất trên dây chuyền công nghệ NOF hiện đại, đáp ứng các tiêu chuẩn ASTM ', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (5, N'sp05', N'Sắt D6', 130, NULL, NULL, 12, N'Việt Nam', 4, N'150000', N'Images/Products/sat_d6.jpg', NULL, NULL, NULL, NULL, N'Việt Nam', N'PMK', N'Srinit', N'Màu xanh', N'Bề mặt sản phẩm bóng đẹp, màu ánh bạc, khả năng chống ăn mòn vượt trội, kháng nhiệt hiệu quả, linh hoạt trong thiết kế và có tuổi thọ gấp 4 lần so với tôn kẽm thông thường.', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (6, N'sp06', N'Sơn nước', 5000, NULL, NULL, 15, N'Hàn Quốc', 1, N'5000', N'Images/Products/son-nano-ngoai-that-26819.jpg', NULL, NULL, NULL, NULL, N'Việt Nam', N'PMK', N'Srinit', N'Màu xanh', N'Đây là sản phẩm đá có kích cỡ lớn khoảng 40-60mm và thường được sử dụng để làm đường, móng nhà xưởng, công trình vì loại này có khả năng chịu được độ nén cao.', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (7, N'sp07', N'Xi măng hà tiên 1', 5000, NULL, NULL, 17, N'Hàn Quốc', 1, N'7000', N'Images/Products/xi-mang-but-son-XM-0347430.jpg', NULL, NULL, NULL, NULL, N'Việt Nam', N'PMK', N'Srinit', N'Màu xanh', N'Đây là một trong các loại  dùng trong xây dựng. Loại này thường được sử dụng làm chân đế gạch bông, gạch lót sàn, làm phụ gia cho công nghệ bê tông đúc ống cống', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (8, N'sp08', N'Gạch ống', 3000, NULL, NULL, 21, N'Trung Quốc', 1, N'2342', N'Images/Products/45452163a.png', NULL, NULL, NULL, NULL, N'Việt Nam', N'PMK', N'Srinit', N'Đen', N'Đây là một trong các loại  dùng trong xây dựng. Loại này thường được sử dụng làm chân đế gạch bông, gạch lót sàn, làm phụ gia cho công nghệ bê tông đúc ống cống', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (12, N'sp09', N'Đá mi bụi', 2000, NULL, NULL, 11, N'Trung Quốc', 2, N'5555', N'Images/Products/damisan.jpg', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Màu xanh', N'Đây là sản phẩm đá có kích cỡ lớn khoảng 40-60mm và thường được sử dụng để làm đường, móng nhà xưởng, công trình vì loại này có khả năng chịu được độ nén cao.', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (28, N'sp11', N'Tôn hoa sen', 1000, NULL, NULL, 38, N'Hồng Kong', 1, N'2222', N'Images/Products/ton 5 song.png', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Trắng', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (30, N'sp12', N'Thép cuộn', 300, NULL, NULL, 40, N'Hồng Kong', 2, N'555', N'Images/Products/thep cuon.jpg', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (32, N'sp13', N'Sắt D16', 80, NULL, NULL, 12, N'Đài Loan', 1, N'5000', N'Images/Products/sat_d6.jpg', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', NULL, N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (33, N'sp14', N'Sơn nước', 70, NULL, NULL, 15, N'Đài Loan', 1, N'333', N'Images/Products/son-nano-ngoai-that-26819.jpg', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (34, N'sp15', N'Sơn dầu', 256, NULL, NULL, 16, N'Malaisia', 2, N'4444', N'Images/Products/image.png', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (35, N'sp16', N'Xi măng hà tiên 1', 354, NULL, NULL, 17, N'Malaisia', 2, N'4444', N'Images/Products/qmu1190190480.jpg', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (36, N'sp17', N'Xi măng hà tiên 2', 332, NULL, NULL, 17, N'Thái Lan', 2, N'7777', N'Images/Products/ximang.jpg', NULL, NULL, NULL, NULL, N'Hàn Quốc', N'PMK', N'Srinit', N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (37, N'sp18', N'Xi măng Holcim', 32, NULL, NULL, 18, N'Thái Lan', 1, N'22222', N'Images/Products/qmu1190190480.jpg', NULL, NULL, NULL, NULL, N'Việt Nam', N'PMK', N'Srinit', N'Màu xanh', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
INSERT [dbo].[Products] ([ProductID], [ProductCode], [Title], [Number], [SubTitle], [Detail], [SmallProductCategoryID], [Production], [SuppliersID], [Money], [Image], [IsDisplay], [TotalView], [CreateDate], [ModifyDate], [Origin], [Maker], [Goods], [Color], [Features], [Note]) VALUES (39, N'sp02', N'Đá 3 x 4', 250, NULL, NULL, 7, N'Thái Lan', 1, N'18000', N'Images/Products/da3x4.jpg', NULL, NULL, NULL, NULL, N'Nhật bản', N'PMK', N'Srinit', N'Màu nâu', N'Siêu bền , vượt trội mọi mặt . Chống thấm nước', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([SuppliersID], [suppliersName], [HomeTown], [PhoneNumber], [Note]) VALUES (1, N'Nhật bản', N'29 Kinh Dương Vương,P12 Quận Tân Bình', N'08.8752999', NULL)
INSERT [dbo].[Suppliers] ([SuppliersID], [suppliersName], [HomeTown], [PhoneNumber], [Note]) VALUES (2, N'Việt Nam', N'198 Nguyễn Hữu Cảnh, Quận Bình Thạnh TP,HCM', N'08.8980556', NULL)
INSERT [dbo].[Suppliers] ([SuppliersID], [suppliersName], [HomeTown], [PhoneNumber], [Note]) VALUES (3, N'Hàn Quốc', N'Kawaxaki Nhật bản', N'09.9854256', NULL)
INSERT [dbo].[Suppliers] ([SuppliersID], [suppliersName], [HomeTown], [PhoneNumber], [Note]) VALUES (4, N'Công ty vật liệu xây dựng vĩnh long', N'Phường 4, TPVL', N'03.2454785', NULL)
INSERT [dbo].[Suppliers] ([SuppliersID], [suppliersName], [HomeTown], [PhoneNumber], [Note]) VALUES (5, N'Công ty xi măng hà tiên ', N'Đồng nai', N'08.9654852', NULL)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
ALTER TABLE [dbo].[AccountProduct]  WITH CHECK ADD  CONSTRAINT [FK_AccountProduct_Accounts1] FOREIGN KEY([AcountName])
REFERENCES [dbo].[Accounts1] ([AcountName])
GO
ALTER TABLE [dbo].[AccountProduct] CHECK CONSTRAINT [FK_AccountProduct_Accounts1]
GO
ALTER TABLE [dbo].[AccountProduct]  WITH CHECK ADD  CONSTRAINT [FK_AccountProduct_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[AccountProduct] CHECK CONSTRAINT [FK_AccountProduct_Products]
GO
ALTER TABLE [dbo].[CommentNew]  WITH CHECK ADD  CONSTRAINT [FK_CommentNew_News] FOREIGN KEY([NewID])
REFERENCES [dbo].[News] ([NewID])
GO
ALTER TABLE [dbo].[CommentNew] CHECK CONSTRAINT [FK_CommentNew_News]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_SmallProductCategory] FOREIGN KEY([SmallProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([SmallProductCategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_SmallProductCategory]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SuppliersID])
REFERENCES [dbo].[Suppliers] ([SuppliersID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
USE [master]
GO
ALTER DATABASE [BuildingMaterials1] SET  READ_WRITE 
GO
