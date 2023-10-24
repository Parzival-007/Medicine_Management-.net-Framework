CREATE DATABASE [OnlineMedicine]
GO
USe [OnlineMedicine]
GO

CREATE TABLE [dbo].[tbl_Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](150) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Login]    Script Date: 05-04-2019 13:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Login](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](150) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[IsAdmin] [int] NULL,
	[ContactNumber] [varchar](15) NULL,
	[Address] [varchar](250) NULL,
 CONSTRAINT [PK_tbl_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Manufacturer]    Script Date: 05-04-2019 13:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[Address] [varchar](250) NULL,
 CONSTRAINT [PK_tbl_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MedicineDetail]    Script Date: 05-04-2019 13:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MedicineDetail](
	[MedicineId] [int] IDENTITY(1,1) NOT NULL,
	[MedicineName] [varchar](500) NULL,
	[CategoryId] [int] NULL,
	[Description] [varchar](2000) NULL,
	[MedicineImagePath] [varchar](500) NULL,
	[ManufacturerId] [int] NULL,
	[Amount] [decimal](8, 2) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__tbl_Medi__4F21289090C21675] PRIMARY KEY CLUSTERED 
(
	[MedicineId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Order]    Script Date: 05-04-2019 13:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Price] [decimal](12, 2) NULL,
	[OrderDate] [datetime] NULL,
	[MedicineId] [int] NULL,
	[CustId] [int] NULL,
	[OrderNumber] [varchar](50) NULL DEFAULT (newid()),
	[Quantity] [int] NULL,
	[TotalAmount] [decimal](12, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PaymentDetails]    Script Date: 05-04-2019 13:19:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PaymentDetails](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[OrderId] [int] NULL,
	[PaymentTypeId] [int] NULL,
	[Amount] [decimal](12, 2) NULL,
	[CreditCardNo] [varchar](16) NULL,
	[CVV] [varchar](3) NULL,
	[ExpiryDate] [varchar](7) NULL,
	[NameOnCard] [varchar](50) NULL,
	[Status] [varchar](20) NULL,
	[PaymentDate] [datetime] NULL CONSTRAINT [DF_tbl_PaymentDetails_PaymentDate]  DEFAULT (getdate()),
	[PaymentNumber] [varchar](50) NULL CONSTRAINT [DF_tbl_PaymentDetails_PaymentNumber]  DEFAULT (newid()),
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

GO
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [Description]) VALUES (1, N'Fever', N'Description goes here')
GO
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [Description]) VALUES (2, N'Headack', N'Descreption update')
GO
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [Description]) VALUES (3, N'Skin Problem', N'asdasd')
GO
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [Description]) VALUES (4, N'Hair Fall', N'addbhasj')
GO
INSERT [dbo].[tbl_Category] ([CategoryId], [CategoryName], [Description]) VALUES (5, N'Obesity', N'sdasd update testing')
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Login] ON 

GO
INSERT [dbo].[tbl_Login] ([UserId], [FullName], [UserName], [Email], [Password], [IsAdmin], [ContactNumber], [Address]) VALUES (1, N'Jitendra Dubey', N'admin', N'dubey.jitendra@hotmail.com', N'123456', 0, NULL, NULL)
GO
INSERT [dbo].[tbl_Login] ([UserId], [FullName], [UserName], [Email], [Password], [IsAdmin], [ContactNumber], [Address]) VALUES (2, N'Jitendra Kumar Dubey', N'jitendra', N'jitendrakumardubey12@gmail.com', N'123456', 1, N'9029451159', N'A-301, Mauli Krupa CHS., Shnakheswar Nagar,Achole Road Nallasopara East')
GO
SET IDENTITY_INSERT [dbo].[tbl_Login] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Manufacturer] ON 

GO
INSERT [dbo].[tbl_Manufacturer] ([ManufacturerID], [ManufacturerName], [Email], [PhoneNumber], [Address]) VALUES (1, N'Cipla', N'gmai@gmail.com', N'8989898888', N'Address')
GO
INSERT [dbo].[tbl_Manufacturer] ([ManufacturerID], [ManufacturerName], [Email], [PhoneNumber], [Address]) VALUES (2, N'Abbot', N'jitendra@gmail.com', N'8798799875', N'Addered')
GO
INSERT [dbo].[tbl_Manufacturer] ([ManufacturerID], [ManufacturerName], [Email], [PhoneNumber], [Address]) VALUES (3, N'Mankind', N'mankind@yahoo.com', N'9029451159', N'Address goes here')
GO
SET IDENTITY_INSERT [dbo].[tbl_Manufacturer] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_MedicineDetail] ON 

GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (1, N'test', 1, N'sdsd', N'batra_logo.png', 1, CAST(25.00 AS Decimal(8, 2)), CAST(N'2019-04-01 13:09:56.623' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (2, N'Medicine ', 1, N'sddasd, All Medicine related description goes here', N'Picture1.png', 1, CAST(60.00 AS Decimal(8, 2)), CAST(N'2019-04-01 13:20:08.047' AS DateTime), CAST(N'2019-04-04 14:07:59.153' AS DateTime))
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (3, N'New Medicine', 4, N'asdasdas', N'Picture1.png', 2, CAST(4520.00 AS Decimal(8, 2)), CAST(N'2019-04-04 14:01:48.160' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (4, N'New Medicine 1', 1, N'All description goes here. You can add detils about medicine here', N'_104270480_gettyimages-943878650-1.jpg', 3, CAST(15.00 AS Decimal(8, 2)), CAST(N'2019-04-05 13:02:20.457' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (5, N'New Medicine 2', 1, N'All description goes here. You can add detils about medicine here', N'Online-Sale-of-Drugs.jpg', 2, CAST(25.00 AS Decimal(8, 2)), CAST(N'2019-04-05 13:02:37.480' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (6, N'New Medicine 4', 4, N'All description goes here. You can add detils about medicine here', N'stock-photo-drug-prescription-for-treatment-medication-pharmaceutical-medicament-cure-in-container-for-health-769176202.jpg', 3, CAST(2500.00 AS Decimal(8, 2)), CAST(N'2019-04-05 13:03:00.603' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (7, N'New Medicine 4', 1, N'All description goes here. You can add detils about medicine here ', N'tablets_750.jpg', 1, CAST(145.00 AS Decimal(8, 2)), CAST(N'2019-04-05 13:04:51.660' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (8, N'New Medicine 5', 1, N'All description goes here. You can add detils about medicine here ', N'products7-500x500.jpg', 1, CAST(145.00 AS Decimal(8, 2)), CAST(N'2019-04-05 13:05:51.750' AS DateTime), NULL)
GO
INSERT [dbo].[tbl_MedicineDetail] ([MedicineId], [MedicineName], [CategoryId], [Description], [MedicineImagePath], [ManufacturerId], [Amount], [CreatedDate], [ModifiedDate]) VALUES (9, N'New Medicine 6', 5, N'All description goes here. You can add detils about medicine here ', N'medicines-and-syringe.jpg', 2, CAST(250.00 AS Decimal(8, 2)), CAST(N'2019-04-05 13:06:13.490' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_MedicineDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Order] ON 

GO
INSERT [dbo].[tbl_Order] ([OrderId], [Price], [OrderDate], [MedicineId], [CustId], [OrderNumber], [Quantity], [TotalAmount]) VALUES (1, CAST(60.00 AS Decimal(12, 2)), CAST(N'2019-04-04 13:04:06.470' AS DateTime), 2, 2, N'1C6029B1-E950-4D1D-9A0F-8E24BB1B03E3', 20, CAST(1200.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[tbl_Order] ([OrderId], [Price], [OrderDate], [MedicineId], [CustId], [OrderNumber], [Quantity], [TotalAmount]) VALUES (2, CAST(60.00 AS Decimal(12, 2)), CAST(N'2019-04-04 13:10:23.767' AS DateTime), 2, 2, N'39FC36F9-3331-4B15-AC17-BE6600A2CB64', 15, CAST(900.00 AS Decimal(12, 2)))
GO
SET IDENTITY_INSERT [dbo].[tbl_Order] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_PaymentDetails] ON 

GO
INSERT [dbo].[tbl_PaymentDetails] ([PaymentId], [UserId], [OrderId], [PaymentTypeId], [Amount], [CreditCardNo], [CVV], [ExpiryDate], [NameOnCard], [Status], [PaymentDate], [PaymentNumber]) VALUES (1, 2, 1, 2, CAST(1200.00 AS Decimal(12, 2)), N'5445456456645656', N'544', N'12/2018', N'asdad', N'1', NULL, NULL)
GO
INSERT [dbo].[tbl_PaymentDetails] ([PaymentId], [UserId], [OrderId], [PaymentTypeId], [Amount], [CreditCardNo], [CVV], [ExpiryDate], [NameOnCard], [Status], [PaymentDate], [PaymentNumber]) VALUES (2, 2, 2, 1, CAST(900.00 AS Decimal(12, 2)), N'4544564564456546', N'214', N'12/2023', N'Jitendra Dubey', N'1', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tbl_PaymentDetails] OFF
GO
ALTER DATABASE [OnlineMedicine] SET  READ_WRITE 
GO
