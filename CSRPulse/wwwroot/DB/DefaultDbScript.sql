CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [nvarchar](30) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Address2] [varchar](200) NULL,
	[Country] [nvarchar](50) NULL,
	[StateId] [int] NULL,
	[City] [nvarchar](50) NULL,
	[PostalCode] [nvarchar](30) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Website] [nvarchar](50) NULL,
	[DataBaseName] [varchar](200) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[CustomerLicenseActivation]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[CustomerLicenseActivation](
	[LicenceActId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[PlanId] [int] NOT NULL,
	[ActivationCount] [int] NOT NULL,
	[ActivationDate] [datetime] NOT NULL,
	[LastActivationDate] [datetime] NOT NULL,
	[PaymentId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_CustomerLicenseActivation] PRIMARY KEY CLUSTERED 
(
	[LicenceActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[CustomerPayment]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[CustomerPayment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[AmountPaid] [money] NOT NULL,
	[PaymentMode] [int] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[IsSuccess] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_CustomerPayment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[District]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictName] [nvarchar](200) NOT NULL,
	[DistrictCode] [varchar](4) NOT NULL,
	[DistrictShort] [varchar](4) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[EmailConfiguration]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[EmailConfiguration](
	[EmailConfigurationID] [int] IDENTITY(1,1) NOT NULL,
	[ToEmail] [varchar](50) NOT NULL,
	[Bcc] [varchar](50) NULL,
	[CcEmail] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](100) NULL,
	[Server] [varchar](50) NOT NULL,
	[Port] [int] NOT NULL,
	[Signature] [varchar](200) NULL,
	[SSLStatus] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_EmailConfiguration] PRIMARY KEY CLUSTERED 
(
	[EmailConfigurationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MailProcess]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MailProcess](
	[MailProcessID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Mail_Process] PRIMARY KEY CLUSTERED 
(
	[MailProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MailSendStatus]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MailSendStatus](
	[MSStatusId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ToEmails] [nvarchar](100) NOT NULL,
	[CcEmails] [nvarchar](200) NULL,
	[BccEmails] [nvarchar](100) NULL,
	[SubjectId] [int] NULL,
	[MailContent] [nvarchar](2000) NULL,
	[SentOn] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MailSendStatus] PRIMARY KEY CLUSTERED 
(
	[MSStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[MailSubject]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[MailSubject](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[MailProcessID] [int] NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MailSubject] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Menu]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Menu](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](100) NOT NULL,
	[ParentMenuId] [int] NULL,
	[SequenceNo] [int] NULL,
	[Area] [varchar](100) NULL,
	[Url] [varchar](100) NULL,
	[IconClass] [varchar](100) NULL,
	[IsActive] [bit] NOT NULL,
	[ActiveOnMobile] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[Help] [text] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_mstmenu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

/****** Object:  Table [dbo].[Plan]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Plan](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[PlanName] [nvarchar](100) NOT NULL,
	[PlanDetail] [nvarchar](500) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Product]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[YearlyPrice] [money] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Role]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[RoleShortName] [nvarchar](10) NOT NULL,
	[Seniorty] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[ReportTo] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[StartingNumber]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[StartingNumber](
	[StartNumberId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[ColumnName] [nvarchar](100) NOT NULL,
	[Prefix] [nvarchar](7) NOT NULL,
	[Number] [int] NOT NULL,
	[NumberWidth] [tinyint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_StartingNumber] PRIMARY KEY CLUSTERED 
(
	[StartNumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[State]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](200) NOT NULL,
	[StateCode] [varchar](2) NOT NULL,
	[StateShort] [varchar](4) NULL,
	[Longitude] [decimal](18, 6) NULL,
	[Latitude] [decimal](18, 6) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[User]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Password] [varchar](200) NOT NULL,
	[MobileNo] [varchar](10) NULL,
	[EmailID] [varchar](50) NOT NULL,
	[ImageName] [varchar](50) NULL,
	[DefaultMenuId] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[UserRights]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[UserRights](
	[UserRightId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
	[ShowMenu] [bit] NOT NULL,
	[CreateRight] [bit] NOT NULL,
	[ViewRight] [bit] NOT NULL,
	[EditRight] [bit] NOT NULL,
	[DeleteRight] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_UserRights] PRIMARY KEY CLUSTERED 
(
	[UserRightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[UserRoles]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[UserType]    Script Date: 5/19/2021 12:06:59 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [dbo].[UserType](
	[UserTypeId] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeName] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[UserTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [CustomerCode], [CustomerName], [Address], [Address2], [Country], [StateId], [City], [PostalCode], [Telephone], [Email], [Website], [DataBaseName], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'CUST-1', N'Axis Bank Foundation', NULL, NULL, NULL, NULL, NULL, NULL, N'9711368858', N'kumaranil1507@gmail.com', N'www.abc.com', NULL, 0, CAST(N'2021-04-29T19:27:41.997' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerCode], [CustomerName], [Address], [Address2], [Country], [StateId], [City], [PostalCode], [Telephone], [Email], [Website], [DataBaseName], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'CUST-2', N'Vodafone Foundation', NULL, NULL, NULL, NULL, NULL, NULL, N'6544844', N'rahul@gmail.com', N'abc.com', NULL, 0, CAST(N'2021-05-03T19:03:18.953' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[CustomerLicenseActivation] ON 

INSERT [dbo].[CustomerLicenseActivation] ([LicenceActId], [CustomerId], [PlanId], [ActivationCount], [ActivationDate], [LastActivationDate], [PaymentId], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, 2, 1, CAST(N'2021-05-08T10:40:52.703' AS DateTime), CAST(N'2021-06-08T10:40:52.703' AS DateTime), 1, 0, CAST(N'2021-05-08T10:40:52.703' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerLicenseActivation] OFF
SET IDENTITY_INSERT [dbo].[CustomerPayment] ON 

INSERT [dbo].[CustomerPayment] ([PaymentId], [CustomerId], [AmountPaid], [PaymentMode], [PaymentDate], [IsSuccess], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, 0.0000, 1, CAST(N'2021-05-08T10:40:52.703' AS DateTime), 1, 0, CAST(N'2021-05-08T10:40:52.703' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CustomerPayment] OFF
SET IDENTITY_INSERT [dbo].[EmailConfiguration] ON 

INSERT [dbo].[EmailConfiguration] ([EmailConfigurationID], [ToEmail], [Bcc], [CcEmail], [UserName], [Password], [Server], [Port], [Signature], [SSLStatus], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsDeleted]) VALUES (3, N'microwaretest@gmail.com', NULL, NULL, N'microwaretest@gmail.com', N'Microtest@123', N'smtp.gmail.com', 587, N'CSRPulse', 1, 1, CAST(N'2021-05-11T00:00:00.000' AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[EmailConfiguration] OFF
SET IDENTITY_INSERT [dbo].[MailProcess] ON 

INSERT [dbo].[MailProcess] ([MailProcessID], [ProcessName]) VALUES (2, N'Password Recovery')
INSERT [dbo].[MailProcess] ([MailProcessID], [ProcessName]) VALUES (3, N'Registration')
SET IDENTITY_INSERT [dbo].[MailProcess] OFF
SET IDENTITY_INSERT [dbo].[MailSendStatus] ON 

INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (1, NULL, N'ikhan199105@gmail.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Hello $UserName, <br />
   Your One Time Password for Registration is Kbs4S1.</p>
</body>
</html>', CAST(N'2021-05-11T16:56:42.943' AS DateTime), 1)
INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (2, NULL, N'ikhan199105@gmail.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Hello $UserName, <br />
   Your One Time Password for Registration is oL7hDE.</p>
</body>
</html>', CAST(N'2021-05-11T17:01:22.037' AS DateTime), 0)
INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (3, NULL, N'ikhandhdh@gmail.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Hello $UserName, <br />
   Your One Time Password for Registration is 2gEYIB.</p>
</body>
</html>', CAST(N'2021-05-11T17:04:11.630' AS DateTime), 0)
INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (4, NULL, N'ikhan@gmai.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Hello $UserName, <br />
   Your One Time Password for Registration is 5vqfU8.</p>
</body>
</html>', CAST(N'2021-05-11T17:07:11.270' AS DateTime), 0)
INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (5, NULL, N'iksad@mail.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Hello $UserName, <br />
   Your One Time Password for Registration is X0h8rf.</p>
</body>
</html>', CAST(N'2021-05-11T17:09:45.877' AS DateTime), 0)
INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (6, NULL, N'ikhan199105@gmail.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Hello $UserName, <br />
   Your One Time Password for Registration is ilu7YT.</p>
</body>
</html>', CAST(N'2021-05-11T17:44:35.807' AS DateTime), 1)
INSERT [dbo].[MailSendStatus] ([MSStatusId], [CustomerId], [ToEmails], [CcEmails], [BccEmails], [SubjectId], [MailContent], [SentOn], [Status]) VALUES (7, NULL, N'kumaranil1507@gmail.com', NULL, NULL, 2, N'<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <p>Dear Customer, <br />
   Your One Time Password for Registration is xVwj60.</p>
</body>
</html>', CAST(N'2021-05-12T10:16:34.723' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[MailSendStatus] OFF
SET IDENTITY_INSERT [dbo].[MailSubject] ON 

INSERT [dbo].[MailSubject] ([SubjectId], [MailProcessID], [Subject], [IsDeleted]) VALUES (2, 2, N'CSRPulse- Customer Registration', 0)
SET IDENTITY_INSERT [dbo].[MailSubject] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (1, N'Plans', 3, 1, N'Admin', N'Plan/Index', N'fa fa-bell', 1, 0, 1, CAST(N'2021-05-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (2, N'Account', NULL, 3, NULL, N'Account/Index', N' dripicons-user', 1, 0, 1, CAST(N'2021-05-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (3, N'Manage', NULL, 4, NULL, NULL, N'dripicons-gear', 1, 0, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (4, N'Help', 3, 5, N'Admin', N'Help/Index', N'fa fa-question-circle', 1, 0, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (5, N'admin', 8, 1, N'Admin', N'Home/Index', N'fa fa-ellipsis-v', 1, 0, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (6, N'Customer', NULL, 2, N'Admin', NULL, N'uil-users-alt', 1, 0, 1, CAST(N'2021-05-10T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (7, N'Customer List', 6, 1, N'Admin', N'Customer/CustomerList', N'fa fa-users', 1, 0, 1, CAST(N'2021-05-10T15:48:39.080' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (8, N'Dashboards', NULL, 1, N'Admin', NULL, N'uil-home-alt', 1, 0, 1, CAST(N'2021-05-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
SET IDENTITY_INSERT [dbo].[Plan] ON 

INSERT [dbo].[Plan] ([PlanId], [PlanName], [PlanDetail], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'BASIC', N'Basic Plan 500 per month.', 0, CAST(N'2021-05-03T05:55:46.047' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Plan] ([PlanId], [PlanName], [PlanDetail], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, N'STANDARD', N'STANDARD Plan 720 Per Month', 0, CAST(N'2021-05-03T05:56:28.630' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Plan] OFF
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [IsActive], [ReportTo]) VALUES (99, N'Administrator', N'AD', 1, 1, 99)
SET IDENTITY_INSERT [dbo].[StartingNumber] ON 

INSERT [dbo].[StartingNumber] ([StartNumberId], [TableName], [ColumnName], [Prefix], [Number], [NumberWidth], [IsDeleted], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'customer', N'CustomerCode', N'CUST', 2, 7, 0, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[StartingNumber] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [StateShort], [Longitude], [Latitude], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'DELHI', N'07', N'DL', NULL, NULL, 1, CAST(N'2021-05-07T17:40:54.480' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [StateShort], [Longitude], [Latitude], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'MUMBAI', N'06', N'MB', NULL, NULL, 1, CAST(N'2021-05-07T17:55:46.630' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[State] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserTypeId], [RoleId], [UserName], [FullName], [Password], [MobileNo], [EmailID], [ImageName], [DefaultMenuId], [IsActive], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, 99, N'microware', N'MW-Admin', N'admin', N'9711368858', N'kumaranil1507@gmail.com', NULL, NULL, 1, 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserRights] ON 

INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-02T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, 1, 2, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 1, 3, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 1, 4, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, 1, 5, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (6, 1, 6, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-10T15:51:28.953' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (7, 1, 7, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-10T15:51:38.703' AS DateTime), NULL, NULL)
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, 1, 8, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-17T16:22:25.703' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserRights] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([UserTypeId], [UserTypeName], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Internal', 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[UserType] ([UserTypeId], [UserTypeName], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'External', 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime), 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserType] OFF
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[CustomerLicenseActivation] ADD  CONSTRAINT [DF_CustomerLicenseActivation_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[CustomerPayment] ADD  CONSTRAINT [DF_CustomerPayment_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[District] ADD  DEFAULT ((0)) FOR [IsActive]

ALTER TABLE [dbo].[District] ADD  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[EmailConfiguration] ADD  CONSTRAINT [DF_EmailConfiguration_SSLStatus]  DEFAULT ((0)) FOR [SSLStatus]

ALTER TABLE [dbo].[EmailConfiguration] ADD  CONSTRAINT [DF_EmailConfiguration_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[MailSendStatus] ADD  CONSTRAINT [DF_MailSendStatus_Status]  DEFAULT ((1)) FOR [Status]

ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_isActive]  DEFAULT ((1)) FOR [IsActive]

ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__ActiveOnMo__282DF8C2]  DEFAULT ((0)) FOR [ActiveOnMobile]

ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]

ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[Plan] ADD  CONSTRAINT [DF_Plan_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[Plan] ADD  CONSTRAINT [DF_Plan_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[Plan] ADD  CONSTRAINT [DF_Plan_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]

ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_YearlyPrice]  DEFAULT ((0)) FOR [YearlyPrice]

ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]

ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)) FOR [IsActive]

ALTER TABLE [dbo].[StartingNumber] ADD  CONSTRAINT [DF_StartingNumber_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[State] ADD  DEFAULT ((0)) FOR [IsActive]

ALTER TABLE [dbo].[State] ADD  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsActive]  DEFAULT ((0)) FOR [IsActive]

ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_ShowMenu]  DEFAULT ((0)) FOR [ShowMenu]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_CreateRight]  DEFAULT ((0)) FOR [CreateRight]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_ViewRight]  DEFAULT ((0)) FOR [ViewRight]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_EditRight]  DEFAULT ((0)) FOR [EditRight]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_DeleteRight]  DEFAULT ((0)) FOR [DeleteRight]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF__UserRight__Creat__15FA39EE]  DEFAULT ((1)) FOR [CreatedBy]

ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF__UserRight__Creat__150615B5]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[UserRoles] ADD  CONSTRAINT [DF_UserRole_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_UserType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]

ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__Create__24927208]  DEFAULT (getdate()) FOR [CreatedOn]

ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__Create__25869641]  DEFAULT ((1)) FOR [CreatedBy]

ALTER TABLE [dbo].[CustomerLicenseActivation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLicenseActivation_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])

ALTER TABLE [dbo].[CustomerLicenseActivation] CHECK CONSTRAINT [FK_CustomerLicenseActivation_Customer]

ALTER TABLE [dbo].[CustomerLicenseActivation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLicenseActivation_CustomerPayment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[CustomerPayment] ([PaymentId])

ALTER TABLE [dbo].[CustomerLicenseActivation] CHECK CONSTRAINT [FK_CustomerLicenseActivation_CustomerPayment]

ALTER TABLE [dbo].[CustomerLicenseActivation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLicenseActivation_Plan] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])

ALTER TABLE [dbo].[CustomerLicenseActivation] CHECK CONSTRAINT [FK_CustomerLicenseActivation_Plan]

ALTER TABLE [dbo].[CustomerPayment]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPayment_CustomerPayment] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])

ALTER TABLE [dbo].[CustomerPayment] CHECK CONSTRAINT [FK_CustomerPayment_CustomerPayment]

ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_User_District_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_User_District_CreatedBy]

ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_User_District_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_User_District_UpdatedBy]

ALTER TABLE [dbo].[EmailConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_EmailConfiguration_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[EmailConfiguration] CHECK CONSTRAINT [FK_EmailConfiguration_CreatedBy]

ALTER TABLE [dbo].[EmailConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_EmailConfiguration_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[EmailConfiguration] CHECK CONSTRAINT [FK_EmailConfiguration_UpdatedBy]

ALTER TABLE [dbo].[MailSendStatus]  WITH CHECK ADD  CONSTRAINT [FK_MailSendStatus_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])

ALTER TABLE [dbo].[MailSendStatus] CHECK CONSTRAINT [FK_MailSendStatus_Customer]

ALTER TABLE [dbo].[MailSendStatus]  WITH CHECK ADD  CONSTRAINT [FK_MailSendStatus_MailSubject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[MailSubject] ([SubjectId])

ALTER TABLE [dbo].[MailSendStatus] CHECK CONSTRAINT [FK_MailSendStatus_MailSubject]

ALTER TABLE [dbo].[MailSubject]  WITH CHECK ADD  CONSTRAINT [FK__MailSubject__MailP__15A53433] FOREIGN KEY([MailProcessID])
REFERENCES [dbo].[MailProcess] ([MailProcessID])

ALTER TABLE [dbo].[MailSubject] CHECK CONSTRAINT [FK__MailSubject__MailP__15A53433]

ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_User_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_User_CreatedBy]

ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_User_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_User_UpdatedBy]

ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])

ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]

ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserType] ([UserTypeId])

ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]

ALTER TABLE [dbo].[UserRights]  WITH CHECK ADD  CONSTRAINT [FK_UserRights_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])

ALTER TABLE [dbo].[UserRights] CHECK CONSTRAINT [FK_UserRights_Menu]

ALTER TABLE [dbo].[UserRights]  WITH CHECK ADD  CONSTRAINT [FK_UserRights_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[UserRights] CHECK CONSTRAINT [FK_UserRights_User]

ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])

ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRole_Role]

ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])

ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRole_User]


