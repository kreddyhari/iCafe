USE [ICafeDB]
GO
/****** Object:  Table [dbo].[CustomersMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersMaster](
	[CustomerId] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerEmailId] [nvarchar](50) NULL,
	[CustomerPhone] [nvarchar](50) NULL,
	[CustomerDescription] [nvarchar](500) NULL,
	[CustomerAddress] [nvarchar](200) NULL,
 CONSTRAINT [PK_CustomersMaster] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemCategoriesMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCategoriesMaster](
	[ItemCategoryId] [int] NOT NULL,
	[ItemCategoryName] [nvarchar](100) NULL,
	[ItemCategoryDescription] [nvarchar](500) NULL,
	[ItemCategoryDiscount] [decimal](14, 4) NULL,
 CONSTRAINT [PK_ItemCategoriesMaster] PRIMARY KEY CLUSTERED 
(
	[ItemCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemsConfiguration]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsConfiguration](
	[MenuCategoryId] [int] NULL,
	[ItemCategoryId] [int] NULL,
	[ItemId] [int] NULL,
	[Discount] [decimal](14, 4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemsMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsMaster](
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemDescription] [nvarchar](500) NULL,
	[ItemIngrediants] [nvarchar](500) NULL,
	[IsAvailable] [bit] NULL,
	[ItemImage] [nvarchar](500) NULL,
	[ItemDiscount] [decimal](12, 4) NULL,
	[ItemPrice] [decimal](12, 4) NULL,
	[ItemSpicyLevel] [nvarchar](50) NULL,
 CONSTRAINT [PK_ItemsMaster] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MenusMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenusMaster](
	[MenuId] [int] NOT NULL,
	[MenuName] [nvarchar](50) NULL,
	[MenuDescription] [nvarchar](500) NULL,
	[MenuFromTime] [datetime] NULL,
	[MenuToTime] [datetime] NULL,
 CONSTRAINT [PK_MenusMaster] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetails](
	[OrderId] [int] NULL,
	[ItemId] [int] NULL,
	[OrderQuantiry] [int] NULL,
	[OrderType] [nvarchar](50) NULL,
	[OrderPreferences] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrdersMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersMaster](
	[OrderId] [int] NOT NULL,
	[TotalReOrders] [int] NULL,
	[PaymentStatus] [nvarchar](10) NULL,
	[UserId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_OrdersMaster] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PermissionsMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionsMaster](
	[PermissionId] [int] NOT NULL,
	[PermissionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PermissionsMaster] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolesMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesMaster](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[RoleDescription] [nvarchar](500) NULL,
	[PermissionId] [int] NULL,
 CONSTRAINT [PK_RolesMaster] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersMaster]    Script Date: 7/21/2016 9:43:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersMaster](
	[UserId] [int] NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[UserDescription] [nvarchar](500) NULL,
	[UserPassword] [nvarchar](100) NULL,
	[RoleId] [int] NULL,
	[Email] [nvarchar](70) NULL,
	[PhoneNo] [nvarchar](15) NULL,
 CONSTRAINT [PK_UsersMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ItemsConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ItemsConfiguration_ItemCategoriesMaster] FOREIGN KEY([ItemCategoryId])
REFERENCES [dbo].[ItemCategoriesMaster] ([ItemCategoryId])
GO
ALTER TABLE [dbo].[ItemsConfiguration] CHECK CONSTRAINT [FK_ItemsConfiguration_ItemCategoriesMaster]
GO
ALTER TABLE [dbo].[ItemsConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ItemsConfiguration_ItemsMaster] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemsMaster] ([ItemId])
GO
ALTER TABLE [dbo].[ItemsConfiguration] CHECK CONSTRAINT [FK_ItemsConfiguration_ItemsMaster]
GO
ALTER TABLE [dbo].[ItemsConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ItemsConfiguration_MenusMaster] FOREIGN KEY([MenuCategoryId])
REFERENCES [dbo].[MenusMaster] ([MenuId])
GO
ALTER TABLE [dbo].[ItemsConfiguration] CHECK CONSTRAINT [FK_ItemsConfiguration_MenusMaster]
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetails_OrdersMaster] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrdersMaster] ([OrderId])
GO
ALTER TABLE [dbo].[OrdersDetails] CHECK CONSTRAINT [FK_OrdersDetails_OrdersMaster]
GO
ALTER TABLE [dbo].[OrdersMaster]  WITH CHECK ADD  CONSTRAINT [FK_OrdersMaster_CustomersMaster] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomersMaster] ([CustomerId])
GO
ALTER TABLE [dbo].[OrdersMaster] CHECK CONSTRAINT [FK_OrdersMaster_CustomersMaster]
GO
ALTER TABLE [dbo].[OrdersMaster]  WITH CHECK ADD  CONSTRAINT [FK_OrdersMaster_UsersMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[UsersMaster] ([UserId])
GO
ALTER TABLE [dbo].[OrdersMaster] CHECK CONSTRAINT [FK_OrdersMaster_UsersMaster]
GO
ALTER TABLE [dbo].[RolesMaster]  WITH CHECK ADD  CONSTRAINT [FK_RolesMaster_PermissionsMaster] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[PermissionsMaster] ([PermissionId])
GO
ALTER TABLE [dbo].[RolesMaster] CHECK CONSTRAINT [FK_RolesMaster_PermissionsMaster]
GO
ALTER TABLE [dbo].[UsersMaster]  WITH CHECK ADD  CONSTRAINT [FK_UsersMaster_RolesMaster] FOREIGN KEY([RoleId])
REFERENCES [dbo].[RolesMaster] ([RoleId])
GO
ALTER TABLE [dbo].[UsersMaster] CHECK CONSTRAINT [FK_UsersMaster_RolesMaster]
GO
