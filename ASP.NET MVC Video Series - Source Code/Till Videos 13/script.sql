USE [PMS]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 1/3/2017 7:12:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[PictureName] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/3/2017 7:12:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[PictureName] [varchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [Name], [Price], [PictureName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive]) VALUES (1, N'Mobile', 200, N'abc.jpg', CAST(0x0000A6EC001CE990 AS DateTime), 1, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [PictureName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive]) VALUES (3, N'Mobile 2', 200, N'abc.jpg', CAST(0x0000A6EC0025AEE0 AS DateTime), 1, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [PictureName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive]) VALUES (4, N'mobile 33', 1000, N'', CAST(0x0000A6EC002FE1D0 AS DateTime), 1, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [PictureName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive]) VALUES (5, N'mobile4', 300, N'92086bff-0552-4c42-8a69-62d560ede628.jpg', CAST(0x0000A6EC00307578 AS DateTime), 1, CAST(0x0000A6EC0031F830 AS DateTime), 1, 1)
INSERT [dbo].[Products] ([ProductID], [Name], [Price], [PictureName], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive]) VALUES (6, N'abc', 1000, N'c32d651e-8a8e-448c-a226-7d64eca2b509.jpg', CAST(0x0000A6EC0031D2B0 AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Users] ([UserID], [Name], [Login], [Password], [PictureName], [IsAdmin], [IsActive]) VALUES (1, N'Bilal', N'admin', N'admin', N'a.jpg', 1, 1)
INSERT [dbo].[Users] ([UserID], [Name], [Login], [Password], [PictureName], [IsAdmin], [IsActive]) VALUES (2, N'Bilal2', N'bilal', N'bilal', N'a.jpg', 0, 1)
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
