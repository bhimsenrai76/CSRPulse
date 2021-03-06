/****** Object:  Table [dbo].[Activity]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activity](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [varchar](200) NOT NULL,
	[ActivityCode] [varchar](3) NULL,
	[ThemeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Activity] PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Block]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[BlockId] [int] IDENTITY(1,1) NOT NULL,
	[DistrictId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[BlockName] [nvarchar](50) NOT NULL,
	[BlockCode] [nvarchar](5) NOT NULL,
	[BlockType] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Block] PRIMARY KEY CLUSTERED 
(
	[BlockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[CustomerUniqueId] [nvarchar](10) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerLicenseActivation]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
	[IsTrail] [bit] NULL,
 CONSTRAINT [PK_CustomerLicenseActivation] PRIMARY KEY CLUSTERED 
(
	[LicenceActId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerPayment]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](250) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationName] [varchar](256) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DesignationHistory]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignationHistory](
	[DesignationHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[DesignationId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Formdate] [datetime] NOT NULL,
	[Todate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_DesignationHistory] PRIMARY KEY CLUSTERED 
(
	[DesignationHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictId] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[DistrictName] [nvarchar](200) NOT NULL,
	[DistrictCode] [varchar](3) NOT NULL,
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
GO
/****** Object:  Table [dbo].[EmailConfiguration]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Indicator]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Indicator](
	[IndicatorId] [int] IDENTITY(1,1) NOT NULL,
	[ThemeId] [int] NOT NULL,
	[SubThemeId] [int] NULL,
	[ActivityId] [int] NULL,
	[SubActivityId] [int] NULL,
	[UOMId] [int] NOT NULL,
	[IndicatorName] [varchar](500) NOT NULL,
	[IndicatorShortName] [varchar](60) NOT NULL,
	[IndicatorCode] [varchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[IndicatorType] [int] NULL,
	[ResponseType] [int] NULL,
	[FrequencyOfReporting] [int] NULL,
	[IsCumulative] [bit] NOT NULL,
	[KeyIndicator] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsFormula] [bit] NOT NULL,
	[IsFormulaText] [nvarchar](2000) NULL,
	[IsFormulaValue] [nvarchar](2000) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK__Indicato__4CDF25A2C459ADED] PRIMARY KEY CLUSTERED 
(
	[IndicatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicatorResponseType]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicatorResponseType](
	[ResponseTypeId] [int] NOT NULL,
	[ResponseType] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IndicatorResponseType] PRIMARY KEY CLUSTERED 
(
	[ResponseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndicatorType]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndicatorType](
	[IndicatorTypeId] [int] NOT NULL,
	[IndicatorType] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_IndicatorType] PRIMARY KEY CLUSTERED 
(
	[IndicatorTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailProcess]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailProcess](
	[MailProcessID] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Mail_Process] PRIMARY KEY CLUSTERED 
(
	[MailProcessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailSendStatus]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailSendStatus](
	[MSStatusId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[ToEmails] [nvarchar](100) NOT NULL,
	[CcEmails] [nvarchar](200) NULL,
	[BccEmails] [nvarchar](100) NULL,
	[SubjectId] [int] NULL,
	[MailContent] [nvarchar](max) NULL,
	[SentOn] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MailSendStatus] PRIMARY KEY CLUSTERED 
(
	[MSStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MailSubject]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Maintenance]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maintenance](
	[MaintenanceId] [int] IDENTITY(1,1) NOT NULL,
	[IsMaintenance] [bit] NOT NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[Message] [nvarchar](2000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[PartnerId] [int] IDENTITY(1,1) NOT NULL,
	[PartnerName] [varchar](256) NOT NULL,
	[PartnerType] [int] NOT NULL,
	[Email] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
	[DateOfEst] [datetime] NOT NULL,
	[DealingWithUsSince] [datetime] NULL,
	[PartnerDetails] [nvarchar](max) NULL,
	[MissionVision] [nvarchar](max) NULL,
	[RegAddress] [varchar](256) NOT NULL,
	[RegCity] [varchar](50) NOT NULL,
	[RegPIN] [int] NOT NULL,
	[RegState] [int] NOT NULL,
	[RegPhone] [varchar](12) NULL,
	[RegMobile] [varchar](10) NULL,
	[CommAddress] [varchar](256) NULL,
	[ComCity] [varchar](50) NULL,
	[ComPIN] [int] NULL,
	[ComState] [int] NULL,
	[CommPhone] [varchar](12) NULL,
	[CommMobile] [varchar](10) NULL,
	[IsActive] [bit] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[PartnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Process]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process](
	[ProcessId] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [varchar](500) NOT NULL,
	[FinalStatus] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Process] PRIMARY KEY CLUSTERED 
(
	[ProcessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessWorkFlow]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessWorkFlow](
	[WorkflowId] [int] IDENTITY(1,1) NOT NULL,
	[ProcessId] [int] NOT NULL,
	[ReferenceId] [int] NULL,
	[SenderId] [int] NULL,
	[ReceiverId] [int] NULL,
	[Senddate] [datetime] NULL,
	[Readdate] [datetime] NULL,
	[Readflag] [int] NULL,
	[Scomments] [text] NULL,
	[Purpose] [varchar](50) NULL,
	[StatusId] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_tbl_WorkFlowDetail] PRIMARY KEY CLUSTERED 
(
	[WorkflowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Role]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[RoleShortName] [nvarchar](10) NOT NULL,
	[Seniorty] [int] NULL,
	[Details] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[ReportTo] [int] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StartingNumber]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[State]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[SubActivity]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubActivity](
	[SubActivityId] [int] IDENTITY(1,1) NOT NULL,
	[SubActivityName] [varchar](200) NOT NULL,
	[SubActivityCode] [varchar](3) NULL,
	[ActivityId] [int] NOT NULL,
	[ThemeId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_SubActivity] PRIMARY KEY CLUSTERED 
(
	[SubActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubTheme]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubTheme](
	[SubThemeId] [int] IDENTITY(1,1) NOT NULL,
	[ThemeId] [int] NOT NULL,
	[SubThemeName] [varchar](200) NOT NULL,
	[SubThemeCode] [varchar](3) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_SubTheme] PRIMARY KEY CLUSTERED 
(
	[SubThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[ThemeId] [int] IDENTITY(1,1) NOT NULL,
	[ThemeName] [varchar](50) NOT NULL,
	[ThemeCode] [varchar](3) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_msttheme] PRIMARY KEY CLUSTERED 
(
	[ThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UOM]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOM](
	[UOMId] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_UOM] PRIMARY KEY CLUSTERED 
(
	[UOMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[PartnerId] [int] NULL,
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
	[WrongAttemp] [tinyint] NULL,
	[LockDate] [datetime] NULL,
	[LastLogin] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRights]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
GO
/****** Object:  Table [dbo].[Village]    Script Date: 10-07-2021 10:34:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Village](
	[VillageId] [int] IDENTITY(1,1) NOT NULL,
	[BlockId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[VillageName] [nvarchar](50) NOT NULL,
	[VillageCode] [nvarchar](6) NOT NULL,
	[LocationType] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Village] PRIMARY KEY CLUSTERED 
(
	[VillageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activity] ON 
GO
INSERT [dbo].[Activity] ([ActivityId], [ActivityName], [ActivityCode], [ThemeId], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Middle School - Trainings', N'MST', 1, 1, CAST(N'2021-06-17T04:53:50.147' AS DateTime), 1, CAST(N'2021-06-17T04:57:58.523' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Activity] OFF
GO
SET IDENTITY_INSERT [dbo].[Block] ON 
GO
INSERT [dbo].[Block] ([BlockId], [DistrictId], [StateId], [BlockName], [BlockCode], [BlockType], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, 1, N'BAREILLY', N'00787', 0, 1, CAST(N'2021-06-21T16:58:43.737' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Block] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'CSR Team', 1, CAST(N'2021-07-02T07:51:37.853' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Designation] ON 
GO
INSERT [dbo].[Designation] ([DesignationId], [DesignationName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Administrator', 1, CAST(N'2021-07-05T08:19:27.397' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Designation] ([DesignationId], [DesignationName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'Accountant', 1, CAST(N'2021-07-06T17:57:17.617' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Designation] OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 
GO
INSERT [dbo].[District] ([DistrictId], [StateId], [DistrictName], [DistrictCode], [DistrictShort], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, N'BAREILLY', N'150', N'BLY', 1, CAST(N'2021-06-21T16:27:25.680' AS DateTime), 1, CAST(N'2021-06-21T16:30:04.973' AS DateTime), 1)
GO
INSERT [dbo].[District] ([DistrictId], [StateId], [DistrictName], [DistrictCode], [DistrictShort], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, 2, N'GRUGRAM', N'086', N'GG', 1, CAST(N'2021-06-24T08:42:21.323' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[District] OFF
GO
SET IDENTITY_INSERT [dbo].[Indicator] ON 
GO
INSERT [dbo].[Indicator] ([IndicatorId], [ThemeId], [SubThemeId], [ActivityId], [SubActivityId], [UOMId], [IndicatorName], [IndicatorShortName], [IndicatorCode], [Description], [IndicatorType], [ResponseType], [FrequencyOfReporting], [IsCumulative], [KeyIndicator], [IsActive], [IsFormula], [IsFormulaText], [IsFormulaValue], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, 1, 1, 1, 3, N'Test', N'test', N'IND001', N'Description 1', 4, 1, 0, 1, 1, 1, 0, NULL, NULL, 1, CAST(N'2021-06-17T21:42:47.627' AS DateTime), 1, CAST(N'2021-06-18T07:29:55.020' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Indicator] OFF
GO
INSERT [dbo].[IndicatorResponseType] ([ResponseTypeId], [ResponseType], [IsActive]) VALUES (1, N'Numeric', 1)
GO
INSERT [dbo].[IndicatorResponseType] ([ResponseTypeId], [ResponseType], [IsActive]) VALUES (2, N'Text', 1)
GO
INSERT [dbo].[IndicatorResponseType] ([ResponseTypeId], [ResponseType], [IsActive]) VALUES (3, N'[Yes/No]', 1)
GO
INSERT [dbo].[IndicatorResponseType] ([ResponseTypeId], [ResponseType], [IsActive]) VALUES (4, N'Currency', 1)
GO
INSERT [dbo].[IndicatorType] ([IndicatorTypeId], [IndicatorType], [IsActive]) VALUES (1, N'Activity', 1)
GO
INSERT [dbo].[IndicatorType] ([IndicatorTypeId], [IndicatorType], [IsActive]) VALUES (2, N'Efforts', 1)
GO
INSERT [dbo].[IndicatorType] ([IndicatorTypeId], [IndicatorType], [IsActive]) VALUES (3, N'Impact', 1)
GO
INSERT [dbo].[IndicatorType] ([IndicatorTypeId], [IndicatorType], [IsActive]) VALUES (4, N'Input', 1)
GO
INSERT [dbo].[IndicatorType] ([IndicatorTypeId], [IndicatorType], [IsActive]) VALUES (5, N'Outcome', 1)
GO
INSERT [dbo].[IndicatorType] ([IndicatorTypeId], [IndicatorType], [IsActive]) VALUES (6, N'Output', 1)
GO
SET IDENTITY_INSERT [dbo].[MailProcess] ON 
GO
INSERT [dbo].[MailProcess] ([MailProcessID], [ProcessName]) VALUES (2, N'Password Recovery')
GO
INSERT [dbo].[MailProcess] ([MailProcessID], [ProcessName]) VALUES (3, N'Registration')
GO
SET IDENTITY_INSERT [dbo].[MailProcess] OFF
GO
SET IDENTITY_INSERT [dbo].[MailSubject] ON 
GO
INSERT [dbo].[MailSubject] ([SubjectId], [MailProcessID], [Subject], [IsDeleted]) VALUES (2, 2, N'CSRPulse- Customer Registration', 0)
GO
SET IDENTITY_INSERT [dbo].[MailSubject] OFF
GO
SET IDENTITY_INSERT [dbo].[Maintenance] ON 
GO
INSERT [dbo].[Maintenance] ([MaintenanceId], [IsMaintenance], [StartDateTime], [EndDateTime], [Message]) VALUES (1, 1, CAST(N'2021-06-10T19:55:00.000' AS DateTime), CAST(N'2021-06-10T19:59:00.000' AS DateTime), N'Our application is currently undergoing scheduled maintenance. We Should be back shortly. Thank you for your patience.')
GO
SET IDENTITY_INSERT [dbo].[Maintenance] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (2, N'Dashboard', NULL, 2, NULL, N'Account/Index', N' uil-slack', 1, 0, 1, CAST(N'2021-05-03T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (3, N'Manage', NULL, 4, N'Admin', NULL, N'dripicons-gear', 1, 0, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (4, N'Help', 3, 5, N'Admin', N'Help/Index', NULL, 1, 0, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (5, N'Console', 8, 1, N'Customer', N'Dashboard/Index', NULL, 1, 0, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (8, N'Management ', NULL, 1, N'Customer', NULL, N'uil-home-alt', 1, 0, 1, CAST(N'2021-05-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (9, N'Account', NULL, 5, NULL, NULL, N'uil-layers-alt', 1, 0, 1, CAST(N'2021-05-22T14:05:55.043' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (10, N'Maintenance', 3, 2, N'Admin', N'Maintenance/Index', NULL, 1, 0, 1, CAST(N'2021-06-09T12:05:56.767' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (11, N'Masters', NULL, 6, NULL, NULL, N'dripicons-view-list-large', 1, 0, 1, CAST(N'2021-06-19T06:48:49.193' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (12, N'Thematics', 11, 1, NULL, NULL, NULL, 1, 0, 1, CAST(N'2021-06-19T06:50:40.713' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (13, N'Theme', 12, 1, NULL, N'Theme/Index', NULL, 1, 0, 1, CAST(N'2021-06-19T06:52:51.467' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (14, N'SubTheme', 12, 2, NULL, N'SubTheme/Index', NULL, 1, 0, 1, CAST(N'2021-06-19T10:56:15.790' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (15, N'Activity', 12, 3, NULL, N'Activity/Index', NULL, 1, 0, 1, CAST(N'2021-06-19T10:57:33.910' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (16, N'SubActivity', 12, 5, NULL, N'SubActivity/Index', NULL, 1, 0, 1, CAST(N'2021-06-19T10:57:48.437' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (17, N'Indicator', 12, 6, NULL, N'Indicator/Index', NULL, 1, 0, 1, CAST(N'2021-06-19T10:58:11.380' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (18, N'UoM', 12, 7, NULL, N'UoM/Index', NULL, 1, 0, 1, CAST(N'2021-06-19T10:58:34.280' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (19, N'Locations', 11, 2, NULL, NULL, NULL, 1, 0, 1, CAST(N'2021-06-21T08:56:08.733' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (20, N'State', 19, 1, NULL, N'State/Index', NULL, 1, 0, 1, CAST(N'2021-06-21T08:57:08.400' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (21, N'District', 19, 2, NULL, N'District/Index', NULL, 1, 0, 1, CAST(N'2021-06-21T08:57:29.590' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (22, N'Block', 19, 3, NULL, N'Block/Index', NULL, 1, 0, 1, CAST(N'2021-06-21T08:57:49.247' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (23, N'Village', 19, 4, NULL, N'Village/Index', NULL, 1, 0, 1, CAST(N'2021-06-21T08:58:06.327' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (24, N'Department', 11, 3, NULL, N'Department/Index', NULL, 1, 0, 1, CAST(N'2021-07-01T18:58:11.767' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (25, N'Designation', 11, 4, NULL, N'Designation/Index', NULL, 1, 0, 1, CAST(N'2021-07-05T07:58:31.637' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (26, N'Process', 11, 5, NULL, N'Process/Index', NULL, 1, 0, 1, CAST(N'2021-07-05T07:59:04.853' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (27, N'Role', 11, 6, NULL, N'Role/Index', NULL, 1, 0, 1, CAST(N'2021-07-05T11:56:40.813' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (28, N'Partner', 11, 7, NULL, N'Partner/Index', NULL, 1, 0, 1, CAST(N'2021-07-05T11:57:31.117' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (29, N'Manage User', 9, 1, NULL, NULL, NULL, 1, 0, 1, CAST(N'2021-07-06T09:44:31.473' AS DateTime), NULL, NULL, NULL, 0)
GO
INSERT [dbo].[Menu] ([MenuId], [MenuName], [ParentMenuId], [SequenceNo], [Area], [Url], [IconClass], [IsActive], [ActiveOnMobile], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [Help], [IsDeleted]) VALUES (30, N'User List', 29, 1, N'Admin', N'Registration/Index', NULL, 1, 0, 1, CAST(N'2021-07-06T09:46:34.720' AS DateTime), NULL, NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 
GO
INSERT [dbo].[Partner] ([PartnerId], [PartnerName], [PartnerType], [Email], [Website], [DateOfEst], [DealingWithUsSince], [PartnerDetails], [MissionVision], [RegAddress], [RegCity], [RegPIN], [RegState], [RegPhone], [RegMobile], [CommAddress], [ComCity], [ComPIN], [ComState], [CommPhone], [CommMobile], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Test Partner', 1, N'test@gmail.com', N'http://text.com', CAST(N'2020-07-05T00:00:00.000' AS DateTime), CAST(N'2021-07-05T00:00:00.000' AS DateTime), N'Breif History of the Partner', N'Mission and Vision', N'Gurgaon', N'Noida', 122018, 2, N'555555555555', N'4444444444', N'Gurgaon', N'Noida', 122018, 2, N'555555555555', N'4444444444', 1, CAST(N'2021-07-05T18:06:15.710' AS DateTime), 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[Process] ON 
GO
INSERT [dbo].[Process] ([ProcessId], [ProcessName], [FinalStatus], [IsActive]) VALUES (1, N'Budget Requirement', 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Process] OFF
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [Details], [IsActive], [ReportTo]) VALUES (9, N'Partner', N'MP', 3, N'This is Partner', 1, 66)
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [Details], [IsActive], [ReportTo]) VALUES (33, N'Program Executive', N'PE', 2, N'This is Program Executive', 1, 66)
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [Details], [IsActive], [ReportTo]) VALUES (66, N'Program Manager', N'MP', 4, N'This is Program Manager', 1, 68)
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [Details], [IsActive], [ReportTo]) VALUES (68, N'Program Head', N'PH', 3, N'This is Program Head', 1, 69)
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [Details], [IsActive], [ReportTo]) VALUES (69, N'Executive Director', N'ED', 2, N'This is Executive Director', 1, 69)
GO
INSERT [dbo].[Role] ([RoleId], [RoleName], [RoleShortName], [Seniorty], [Details], [IsActive], [ReportTo]) VALUES (99, N'Administrator', N'AD', 1, N'This is Administrator', 1, 99)
GO
SET IDENTITY_INSERT [dbo].[State] ON 
GO
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [StateShort], [Longitude], [Latitude], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'UTTAR PRADESH', N'09', N'UP', NULL, NULL, 1, CAST(N'2021-06-16T06:12:17.967' AS DateTime), 1, CAST(N'2021-06-19T15:09:33.943' AS DateTime), 1)
GO
INSERT [dbo].[State] ([StateId], [StateName], [StateCode], [StateShort], [Longitude], [Latitude], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'HARYANA', N'06', N'HR', NULL, NULL, 1, CAST(N'2021-06-24T08:40:12.597' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[State] OFF
GO
SET IDENTITY_INSERT [dbo].[SubActivity] ON 
GO
INSERT [dbo].[SubActivity] ([SubActivityId], [SubActivityName], [SubActivityCode], [ActivityId], [ThemeId], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Trainings under Skill Development', N'TSD', 1, 1, 1, CAST(N'2021-06-17T11:53:14.550' AS DateTime), 1, CAST(N'2021-06-18T10:17:22.240' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[SubActivity] OFF
GO
SET IDENTITY_INSERT [dbo].[SubTheme] ON 
GO
INSERT [dbo].[SubTheme] ([SubThemeId], [ThemeId], [SubThemeName], [SubThemeCode], [IsActive], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, N'Primary School Component', N'PSC', 1, CAST(N'2021-06-16T07:49:56.407' AS DateTime), 1, 1, CAST(N'2021-06-24T18:11:29.867' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[SubTheme] OFF
GO
SET IDENTITY_INSERT [dbo].[Theme] ON 
GO
INSERT [dbo].[Theme] ([ThemeId], [ThemeName], [ThemeCode], [IsActive], [CreatedOn], [CreatedBy], [UpdatedBy], [UpdatedOn]) VALUES (1, N'Education', N'EDU', 1, CAST(N'2021-06-15T20:15:10.567' AS DateTime), 1, 1, CAST(N'2021-06-21T13:05:04.817' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Theme] OFF
GO
SET IDENTITY_INSERT [dbo].[UOM] ON 
GO
INSERT [dbo].[UOM] ([UOMId], [UnitName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Letters', 1, CAST(N'2021-06-14T21:33:26.317' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[UOM] ([UOMId], [UnitName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'Tracker', 1, CAST(N'2021-06-14T21:40:44.503' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[UOM] ([UOMId], [UnitName], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, N'Consultants', 1, CAST(N'2021-06-15T13:25:04.330' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UOM] OFF

GO
SET IDENTITY_INSERT [dbo].[UserRights] ON 
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, 1, 2, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-03T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, 1, 3, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, 1, 4, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-04T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (5, 1, 5, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-07T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (8, 1, 8, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-17T16:22:25.703' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (9, 1, 9, 1, 1, 1, 1, 1, 1, CAST(N'2021-05-22T14:10:19.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (10, 1, 10, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-09T12:06:33.823' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, 1, 11, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:30:17.460' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, 1, 12, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:30:38.450' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, 1, 13, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:30:47.807' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, 1, 14, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:56:42.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, 1, 15, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:58:55.060' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (19, 1, 16, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:59:29.453' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (20, 1, 17, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:59:37.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (21, 1, 18, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-19T10:59:44.887' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (22, 1, 19, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-21T08:58:36.160' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (23, 1, 20, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-21T08:58:43.630' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (24, 1, 21, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-21T08:59:16.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (25, 1, 22, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-21T08:59:23.200' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (26, 1, 23, 1, 1, 1, 1, 1, 1, CAST(N'2021-06-21T08:59:29.430' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (27, 1, 24, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-01T19:08:34.643' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (28, 1, 25, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-05T07:59:30.547' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (29, 1, 26, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-05T07:59:38.550' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (32, 1, 27, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-05T11:58:27.637' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (33, 1, 28, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-05T11:58:34.567' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (34, 1, 29, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-06T09:48:31.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[UserRights] ([UserRightId], [UserId], [MenuId], [ShowMenu], [CreateRight], [ViewRight], [EditRight], [DeleteRight], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (35, 1, 30, 1, 1, 1, 1, 1, 1, CAST(N'2021-07-06T09:48:37.580' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserRights] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRoles] ON 
GO
INSERT [dbo].[UserRoles] ([UserRoleId], [UserId], [RoleId], [IsDeleted]) VALUES (1, 1, 99, 0)
GO
SET IDENTITY_INSERT [dbo].[UserRoles] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 
GO
INSERT [dbo].[UserType] ([UserTypeId], [UserTypeName], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, N'Internal', 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[UserType] ([UserTypeId], [UserTypeName], [IsDeleted], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, N'External', 0, CAST(N'2021-04-30T00:00:00.000' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
SET IDENTITY_INSERT [dbo].[Village] ON 
GO
INSERT [dbo].[Village] ([VillageId], [BlockId], [DistrictId], [StateId], [VillageName], [VillageCode], [LocationType], [IsActive], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 1, 1, 1, N'Bhoji Pura', N'130192', 1, 1, CAST(N'2021-06-21T18:02:49.180' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Village] OFF
GO
ALTER TABLE [dbo].[Activity] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Activity] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Block] ADD  CONSTRAINT [DF_Block_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CustomerLicenseActivation] ADD  CONSTRAINT [DF_CustomerLicenseActivation_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[CustomerLicenseActivation] ADD  DEFAULT ((1)) FOR [IsTrail]
GO
ALTER TABLE [dbo].[CustomerPayment] ADD  CONSTRAINT [DF_CustomerPayment_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF__District__IsActi__2D47B39A]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF__District__Create__2E3BD7D3]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmailConfiguration] ADD  CONSTRAINT [DF_EmailConfiguration_SSLStatus]  DEFAULT ((0)) FOR [SSLStatus]
GO
ALTER TABLE [dbo].[EmailConfiguration] ADD  CONSTRAINT [DF_EmailConfiguration_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Indicator] ADD  CONSTRAINT [DF_Indicator_IsCumulative]  DEFAULT ((0)) FOR [IsCumulative]
GO
ALTER TABLE [dbo].[Indicator] ADD  CONSTRAINT [DF_Indicator_KeyIndicator]  DEFAULT ((0)) FOR [KeyIndicator]
GO
ALTER TABLE [dbo].[Indicator] ADD  CONSTRAINT [DF__Indicator__IsAct__451F3D2B]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Indicator] ADD  CONSTRAINT [DF_Indicator_IsFormula]  DEFAULT ((0)) FOR [IsFormula]
GO
ALTER TABLE [dbo].[Indicator] ADD  CONSTRAINT [DF__Indicator__Creat__442B18F2]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[IndicatorResponseType] ADD  CONSTRAINT [DF_IndicatorResponseType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[IndicatorType] ADD  CONSTRAINT [DF_IndicatorType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MailSendStatus] ADD  CONSTRAINT [DF_MailSendStatus_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_isActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF__Menu__ActiveOnMo__282DF8C2]  DEFAULT ((0)) FOR [ActiveOnMobile]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Plan] ADD  CONSTRAINT [DF_Plan_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Plan] ADD  CONSTRAINT [DF_Plan_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Plan] ADD  CONSTRAINT [DF_Plan_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Process] ADD  CONSTRAINT [DF_Process_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workfl__type__702A6218]  DEFAULT (NULL) FOR [ProcessId]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workfl__r_id__711E8651]  DEFAULT (NULL) FOR [ReferenceId]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__sende__7212AA8A]  DEFAULT (NULL) FOR [SenderId]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__recei__7306CEC3]  DEFAULT (NULL) FOR [ReceiverId]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__sendd__73FAF2FC]  DEFAULT (NULL) FOR [Senddate]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__readd__74EF1735]  DEFAULT (NULL) FOR [Readdate]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__readf__75E33B6E]  DEFAULT (NULL) FOR [Readflag]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__purps__77CB83E0]  DEFAULT (NULL) FOR [Purpose]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workfl__flag__78BFA819]  DEFAULT (NULL) FOR [StatusId]
GO
ALTER TABLE [dbo].[ProcessWorkFlow] ADD  CONSTRAINT [DF__tbl_workf__Creat__79B3CC52]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_YearlyPrice]  DEFAULT ((0)) FOR [YearlyPrice]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[StartingNumber] ADD  CONSTRAINT [DF_StartingNumber_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[State] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[State] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SubActivity] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SubActivity] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SubTheme] ADD  CONSTRAINT [DF__SubTheme__IsActi__297722B6]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SubTheme] ADD  CONSTRAINT [DF__SubTheme__Create__2A6B46EF]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Theme] ADD  CONSTRAINT [DF__Theme__IsActive__269AB60B]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Theme] ADD  CONSTRAINT [DF__Theme__CreatedOn__278EDA44]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UOM] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UOM] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedBy]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_ShowMenu]  DEFAULT ((0)) FOR [ShowMenu]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_CreateRight]  DEFAULT ((0)) FOR [CreateRight]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_ViewRight]  DEFAULT ((0)) FOR [ViewRight]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_EditRight]  DEFAULT ((0)) FOR [EditRight]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF_UserRights_DeleteRight]  DEFAULT ((0)) FOR [DeleteRight]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF__UserRight__Creat__15FA39EE]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[UserRights] ADD  CONSTRAINT [DF__UserRight__Creat__150615B5]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserRoles] ADD  CONSTRAINT [DF_UserRole_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF_UserType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__Create__24927208]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__Create__25869641]  DEFAULT ((1)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Village] ADD  CONSTRAINT [DF_Village_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Activity]  WITH CHECK ADD  CONSTRAINT [FK_Activity_Theme] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([ThemeId])
GO
ALTER TABLE [dbo].[Activity] CHECK CONSTRAINT [FK_Activity_Theme]
GO
ALTER TABLE [dbo].[Block]  WITH CHECK ADD  CONSTRAINT [FK_Block_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Block] CHECK CONSTRAINT [FK_Block_District]
GO
ALTER TABLE [dbo].[Block]  WITH CHECK ADD  CONSTRAINT [FK_Block_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Block] CHECK CONSTRAINT [FK_Block_State]
GO
ALTER TABLE [dbo].[Block]  WITH CHECK ADD  CONSTRAINT [FK_Block_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Block] CHECK CONSTRAINT [FK_Block_User]
GO
ALTER TABLE [dbo].[Block]  WITH CHECK ADD  CONSTRAINT [FK_Block_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Block] CHECK CONSTRAINT [FK_Block_User1]
GO
ALTER TABLE [dbo].[CustomerLicenseActivation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLicenseActivation_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerLicenseActivation] CHECK CONSTRAINT [FK_CustomerLicenseActivation_Customer]
GO
ALTER TABLE [dbo].[CustomerLicenseActivation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLicenseActivation_CustomerPayment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[CustomerPayment] ([PaymentId])
GO
ALTER TABLE [dbo].[CustomerLicenseActivation] CHECK CONSTRAINT [FK_CustomerLicenseActivation_CustomerPayment]
GO
ALTER TABLE [dbo].[CustomerLicenseActivation]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLicenseActivation_Plan] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO
ALTER TABLE [dbo].[CustomerLicenseActivation] CHECK CONSTRAINT [FK_CustomerLicenseActivation_Plan]
GO
ALTER TABLE [dbo].[CustomerPayment]  WITH CHECK ADD  CONSTRAINT [FK_CustomerPayment_CustomerPayment] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerPayment] CHECK CONSTRAINT [FK_CustomerPayment_CustomerPayment]
GO
ALTER TABLE [dbo].[DesignationHistory]  WITH CHECK ADD  CONSTRAINT [FK_DesignationHistory_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([DesignationId])
GO
ALTER TABLE [dbo].[DesignationHistory] CHECK CONSTRAINT [FK_DesignationHistory_Designation]
GO
ALTER TABLE [dbo].[DesignationHistory]  WITH CHECK ADD  CONSTRAINT [FK_DesignationHistory_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[DesignationHistory] CHECK CONSTRAINT [FK_DesignationHistory_User]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_District_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_District_State]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_User_District_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_User_District_CreatedBy]
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD  CONSTRAINT [FK_User_District_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[District] CHECK CONSTRAINT [FK_User_District_UpdatedBy]
GO
ALTER TABLE [dbo].[EmailConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_EmailConfiguration_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[EmailConfiguration] CHECK CONSTRAINT [FK_EmailConfiguration_CreatedBy]
GO
ALTER TABLE [dbo].[EmailConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_EmailConfiguration_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[EmailConfiguration] CHECK CONSTRAINT [FK_EmailConfiguration_UpdatedBy]
GO
ALTER TABLE [dbo].[Indicator]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([ActivityId])
GO
ALTER TABLE [dbo].[Indicator] CHECK CONSTRAINT [FK_Indicator_Activity]
GO
ALTER TABLE [dbo].[Indicator]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Indicator] FOREIGN KEY([IndicatorId])
REFERENCES [dbo].[Indicator] ([IndicatorId])
GO
ALTER TABLE [dbo].[Indicator] CHECK CONSTRAINT [FK_Indicator_Indicator]
GO
ALTER TABLE [dbo].[Indicator]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_SubActivity] FOREIGN KEY([SubActivityId])
REFERENCES [dbo].[SubActivity] ([SubActivityId])
GO
ALTER TABLE [dbo].[Indicator] CHECK CONSTRAINT [FK_Indicator_SubActivity]
GO
ALTER TABLE [dbo].[Indicator]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_SubTheme] FOREIGN KEY([SubThemeId])
REFERENCES [dbo].[SubTheme] ([SubThemeId])
GO
ALTER TABLE [dbo].[Indicator] CHECK CONSTRAINT [FK_Indicator_SubTheme]
GO
ALTER TABLE [dbo].[Indicator]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_Theme] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([ThemeId])
GO
ALTER TABLE [dbo].[Indicator] CHECK CONSTRAINT [FK_Indicator_Theme]
GO
ALTER TABLE [dbo].[Indicator]  WITH CHECK ADD  CONSTRAINT [FK_Indicator_UOM] FOREIGN KEY([UOMId])
REFERENCES [dbo].[UOM] ([UOMId])
GO
ALTER TABLE [dbo].[Indicator] CHECK CONSTRAINT [FK_Indicator_UOM]
GO
ALTER TABLE [dbo].[MailSendStatus]  WITH CHECK ADD  CONSTRAINT [FK_MailSendStatus_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[MailSendStatus] CHECK CONSTRAINT [FK_MailSendStatus_Customer]
GO
ALTER TABLE [dbo].[MailSendStatus]  WITH CHECK ADD  CONSTRAINT [FK_MailSendStatus_MailSubject] FOREIGN KEY([SubjectId])
REFERENCES [dbo].[MailSubject] ([SubjectId])
GO
ALTER TABLE [dbo].[MailSendStatus] CHECK CONSTRAINT [FK_MailSendStatus_MailSubject]
GO
ALTER TABLE [dbo].[MailSubject]  WITH CHECK ADD  CONSTRAINT [FK__MailSubject__MailP__15A53433] FOREIGN KEY([MailProcessID])
REFERENCES [dbo].[MailProcess] ([MailProcessID])
GO
ALTER TABLE [dbo].[MailSubject] CHECK CONSTRAINT [FK__MailSubject__MailP__15A53433]
GO
ALTER TABLE [dbo].[ProcessWorkFlow]  WITH CHECK ADD  CONSTRAINT [FK_ProcessWorkFlow_ProcessWorkFlow] FOREIGN KEY([WorkflowId])
REFERENCES [dbo].[ProcessWorkFlow] ([WorkflowId])
GO
ALTER TABLE [dbo].[ProcessWorkFlow] CHECK CONSTRAINT [FK_ProcessWorkFlow_ProcessWorkFlow]
GO
ALTER TABLE [dbo].[ProcessWorkFlow]  WITH CHECK ADD  CONSTRAINT [FK_ProcessWorkFlow_User] FOREIGN KEY([SenderId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ProcessWorkFlow] CHECK CONSTRAINT [FK_ProcessWorkFlow_User]
GO
ALTER TABLE [dbo].[ProcessWorkFlow]  WITH CHECK ADD  CONSTRAINT [FK_ProcessWorkFlow_User1] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[ProcessWorkFlow] CHECK CONSTRAINT [FK_ProcessWorkFlow_User1]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_User_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_User_CreatedBy]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_User_UpdatedBy] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_User_UpdatedBy]
GO
ALTER TABLE [dbo].[SubActivity]  WITH CHECK ADD  CONSTRAINT [FK_SubActivity_Activity] FOREIGN KEY([ActivityId])
REFERENCES [dbo].[Activity] ([ActivityId])
GO
ALTER TABLE [dbo].[SubActivity] CHECK CONSTRAINT [FK_SubActivity_Activity]
GO
ALTER TABLE [dbo].[SubActivity]  WITH CHECK ADD  CONSTRAINT [FK_SubActivity_Theme] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([ThemeId])
GO
ALTER TABLE [dbo].[SubActivity] CHECK CONSTRAINT [FK_SubActivity_Theme]
GO
ALTER TABLE [dbo].[SubTheme]  WITH CHECK ADD  CONSTRAINT [FK_SubTheme_Theme] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([ThemeId])
GO
ALTER TABLE [dbo].[SubTheme] CHECK CONSTRAINT [FK_SubTheme_Theme]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Department]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Designation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[Designation] ([DesignationId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Designation]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Partner] FOREIGN KEY([PartnerId])
REFERENCES [dbo].[Partner] ([PartnerId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Partner]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserType] FOREIGN KEY([UserTypeId])
REFERENCES [dbo].[UserType] ([UserTypeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserType]
GO
ALTER TABLE [dbo].[UserRights]  WITH CHECK ADD  CONSTRAINT [FK_UserRights_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[UserRights] CHECK CONSTRAINT [FK_UserRights_Menu]
GO
ALTER TABLE [dbo].[UserRights]  WITH CHECK ADD  CONSTRAINT [FK_UserRights_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRights] CHECK CONSTRAINT [FK_UserRights_User]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [dbo].[Village]  WITH CHECK ADD  CONSTRAINT [FK_Village_Block] FOREIGN KEY([BlockId])
REFERENCES [dbo].[Block] ([BlockId])
GO
ALTER TABLE [dbo].[Village] CHECK CONSTRAINT [FK_Village_Block]
GO
ALTER TABLE [dbo].[Village]  WITH CHECK ADD  CONSTRAINT [FK_Village_District] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[District] ([DistrictId])
GO
ALTER TABLE [dbo].[Village] CHECK CONSTRAINT [FK_Village_District]
GO
ALTER TABLE [dbo].[Village]  WITH CHECK ADD  CONSTRAINT [FK_Village_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Village] CHECK CONSTRAINT [FK_Village_State]
GO
ALTER TABLE [dbo].[Village]  WITH CHECK ADD  CONSTRAINT [FK_Village_User] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Village] CHECK CONSTRAINT [FK_Village_User]
GO
ALTER TABLE [dbo].[Village]  WITH CHECK ADD  CONSTRAINT [FK_Village_User1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Village] CHECK CONSTRAINT [FK_Village_User1]
GO
/****** Object:  StoredProcedure [dbo].[SPCreateUser]    Script Date: 10-07-2021 10:34:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SPCreateUser](
@CustomerCode varchar(10),
@CustomerName varchar(100),
@password nvarchar(max),
@email nvarchar(100)
)
as
set nocount on;
declare @userId int;
insert into [User](UserTypeId,UserName,FullName,[Password],IsActive,IsDeleted,CreatedBy,RoleId,EmailID) values
(2,@CustomerCode,@CustomerName,@password,1,0,1,99,@email)
set @userId= @@Identity;

insert into UserRoles(UserId,RoleId)values(@userId,99)
insert into UserRights(UserId,MenuId,ShowMenu,CreateRight,ViewRight,EditRight,DeleteRight,CreatedBy,CreatedOn)
select @userId,MenuId,1,1,1,1,1,1,GETDATE() from Menu
GO
