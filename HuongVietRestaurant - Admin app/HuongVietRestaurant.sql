USE HuongVietRestaurant
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[id_address] [nchar](10) NOT NULL,
	[number_street] [nvarchar](50) NULL,
	[ward] [nvarchar](50) NULL,
	[district] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[id_address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AGENCY]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AGENCY](
	[id_agency] [nchar](10) NOT NULL,
	[agency_name] [nvarchar](50) NULL,
	[address] [nchar](10) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_AGENCY] PRIMARY KEY CLUSTERED 
(
	[id_agency] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BILL]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL](
	[id_bill] [nchar](10) NOT NULL,
	[agency] [nchar](10) NULL,
	[customer] [nchar](10) NULL,
	[status] [nchar](10) NULL,
	[order] [nchar](10) NULL,
	[payment_method] [nchar](10) NULL,
	[total] [float] NULL,
	[fee] [nchar](10) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_BILL] PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BILL_DETAIL]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILL_DETAIL](
	[id_bill] [nchar](10) NOT NULL,
	[dish] [nchar](10) NOT NULL,
	[unit] [int] NULL,
	[receiver] [nchar](10) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_BILL_DETAIL] PRIMARY KEY CLUSTERED 
(
	[id_bill] ASC,
	[dish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CART]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART](
	[id_cart] [nchar](10) NOT NULL,
	[customer] [nchar](10) NULL,
	[receiver] [nchar](10) NULL,
	[delivery_time] [time](7) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_CART] PRIMARY KEY CLUSTERED 
(
	[id_cart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CART_DETAIL]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CART_DETAIL](
	[id_cart] [nchar](10) NOT NULL,
	[id_bill] [nchar](10) NOT NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_CART_DETAIL] PRIMARY KEY CLUSTERED 
(
	[id_cart] ASC,
	[id_bill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[id_customer] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[agency] [nchar](10) NULL,
	[scores] [nchar](10) NULL,
	[address] [nchar](10) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[id_customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DISH]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISH](
	[id_dish] [nchar](10) NOT NULL,
	[type_dish] [nchar](10) NULL,
	[dish_name] [nvarchar](50) NULL,
	[price] [int] NULL,
	[image] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_DISH] PRIMARY KEY CLUSTERED 
(
	[id_dish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[id_employee] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[gmail] [nvarchar](50) NULL,
	[id_card] [nvarchar](50) NULL,
	[address] [nchar](10) NULL,
	[position] [nchar](10) NULL,
	[agency] [nchar](10) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FEE]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FEE](
	[id_fee] [nchar](10) NOT NULL,
	[fee] [float] NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_FEE] PRIMARY KEY CLUSTERED 
(
	[id_fee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOGIN]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGIN](
	[user_name] [nchar](10) NOT NULL,
	[password] [nchar](10) NOT NULL,
	[id_owner] [nchar](10) NULL,
 CONSTRAINT [PK_LOGIN] PRIMARY KEY CLUSTERED 
(
	[user_name] ASC,
	[password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MENU]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[id_agency] [nchar](10) NOT NULL,
	[id_dish] [nchar](10) NOT NULL,
	[unit] [int] NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[id_agency] ASC,
	[id_dish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ORDER]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER](
	[id_order] [nchar](10) NOT NULL,
	[order_name] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_METHOD](
	[id_method] [nchar](10) NOT NULL,
	[method_name] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_PAYMENT_METHOD] PRIMARY KEY CLUSTERED 
(
	[id_method] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[POSITION]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSITION](
	[id_position] [nchar](10) NOT NULL,
	[position_name] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_POSITION] PRIMARY KEY CLUSTERED 
(
	[id_position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROMOTION]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOTION](
	[id_promotion] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NULL,
	[value_promotion] [float] NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_PROMOTION] PRIMARY KEY CLUSTERED 
(
	[id_promotion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RECEIVER]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEIVER](
	[id_receiver] [nchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[street] [nvarchar](50) NULL,
	[ward] [nvarchar](50) NULL,
	[district] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_RECEIVER] PRIMARY KEY CLUSTERED 
(
	[id_receiver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SCORES]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SCORES](
	[id_scores] [nchar](10) NOT NULL,
	[scores] [int] NOT NULL,
	[promotion] [nchar](10) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_SCORES] PRIMARY KEY CLUSTERED 
(
	[id_scores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STATUS]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATUS](
	[id_status] [nchar](10) NOT NULL,
	[description] [nvarchar](50) NULL,
	[isActive] [nchar](10) NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[id_status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TYPE_DISH]    Script Date: 11/18/2019 12:22:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TYPE_DISH](
	[id_type_dish] [nchar](10) NOT NULL,
	[type_dish_name] [nvarchar](50) NULL,
	[isActive] [int] NULL,
 CONSTRAINT [PK_TYPE_DISH] PRIMARY KEY CLUSTERED 
(
	[id_type_dish] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_1      ', N'112 Bùi Điền', N'Phường 4', N'Quận 8', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_10     ', N'32 Phạm Ngũ Lão', N'Phường 4', N'Quận 1', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_11     ', N'551 Trần Hưng Đạo', N'Phường 6 ', N'Quận 1', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_12     ', N'157 Trần Đề', N'Phường 8', N'Quận 5', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_13     ', N'79 Đề Thám ', N'Phường Đông Hưng ', N'Quận 7', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_14     ', N'90 Lê Hồng Phong ', N'Phường 8', N'Quận 5', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_15     ', N'73 Huỳnh Trúc Kháng', N'Phường 11', N'Quận 3', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_16     ', N'43 Dương Tử Giang', N'Phường 2', N'Quận 4', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_17     ', N'73 Hà Huy Giáp', N'Phường 8', N'Quận 12', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_18     ', N'45 Trường Sơn ', N'Phường 2', N'Quận Tân Bình', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_19     ', N'889 Xa Lộ Hà Nội', N'Phường 5', N'Quận 9', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_2      ', N'227 Nguyễn Văn Cừ', N'Phường 4', N'Quận 5', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_20     ', N'89 Liên Hưng', N'Phường 3', N'Quận Bình Tân', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_21     ', N'149 Lý Chính Thắng', N'Phường 9', N'Quận 3', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_22     ', N'45 Nguyễn Thị Thực', N'Phường 10', N'Quận 4', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_23     ', N'15 Cao Văn Lầu', N'Phường 4', N'Quận 11 ', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_24     ', N'45 Nguyễn Điền', N'Phường 7', N'Quận 7', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_25     ', N'58 Phan Bội Châu', N'Phường 12', N'Quận 2', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_26     ', N'49 Nguyễn Hữu Cảnh ', N'Phường 6', N'Quận Bình Thạnh', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_27     ', N'78 Võ Văn Kiệt', N'Phường 2 ', N'Quận 5 ', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_3      ', N'12 Cao Thắng', N'Phường 2', N'Quận 1', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_4      ', N'1 Nguyễn Kiệm', N'Phường 6 ', N'Quận Bình Thạnh', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_5      ', N'70 Cao Lỗ', N'Phường 4 ', N'Quận 8', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_6      ', N'71 Bình Tây', N'Phường 7', N'Quận Thủ Đức', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_7      ', N'78 Lê Văn Việt', N'Phường 2', N'Quận 9', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_8      ', N'224 Trần Hưng Đạo', N'Phường 6', N'Quận 1', N'HCM', 1)
INSERT [dbo].[ADDRESS] ([id_address], [number_street], [ward], [district], [city], [isActive]) VALUES (N'ad_9      ', N'13 Trường Định', N'Phường 4', N'Quận Bình Thạnh', N'HCM', 1)
INSERT [dbo].[AGENCY] ([id_agency], [agency_name], [address], [isActive]) VALUES (N'ag_1      ', N'Hương Việt 1', N'ad_1      ', 1)
INSERT [dbo].[AGENCY] ([id_agency], [agency_name], [address], [isActive]) VALUES (N'ag_2      ', N'Hương Việt 2', N'ad_2      ', 1)
INSERT [dbo].[BILL] ([id_bill], [agency], [customer], [status], [order], [payment_method], [total], [fee], [isActive]) VALUES (N'bill_1    ', N'ag_1      ', N'cus_1     ', N'sta_1     ', N'order_1   ', N'pay_1     ', 35000, N'fee_1     ', 1)
INSERT [dbo].[BILL] ([id_bill], [agency], [customer], [status], [order], [payment_method], [total], [fee], [isActive]) VALUES (N'bill_2    ', N'ag_2      ', N'cus_2     ', N'sta_2     ', N'order_2   ', N'pay_1     ', 35000, N'fee_1     ', 1)
INSERT [dbo].[BILL] ([id_bill], [agency], [customer], [status], [order], [payment_method], [total], [fee], [isActive]) VALUES (N'bill_3    ', N'ag_1      ', N'cus_3     ', N'sta_1     ', N'order_1   ', N'pay_1     ', 35000, N'fee_1     ', 1)
INSERT [dbo].[BILL_DETAIL] ([id_bill], [dish], [unit], [receiver], [isActive]) VALUES (N'bill_1    ', N'dish_1    ', 1, N'rece_1    ', 1)
INSERT [dbo].[BILL_DETAIL] ([id_bill], [dish], [unit], [receiver], [isActive]) VALUES (N'bill_2    ', N'dish_2    ', 1, N'rece_2    ', 1)
INSERT [dbo].[BILL_DETAIL] ([id_bill], [dish], [unit], [receiver], [isActive]) VALUES (N'bill_3    ', N'dish_5    ', 1, N'rece_3    ', 1)
INSERT [dbo].[CART] ([id_cart], [customer], [receiver], [delivery_time], [isActive]) VALUES (N'cart_1    ', N'cus_1     ', N'rece_1    ', CAST(N'13:45:00' AS Time), 1)
INSERT [dbo].[CART] ([id_cart], [customer], [receiver], [delivery_time], [isActive]) VALUES (N'cart_2    ', N'cus_2     ', N'rece_2    ', CAST(N'13:45:00' AS Time), 1)
INSERT [dbo].[CART] ([id_cart], [customer], [receiver], [delivery_time], [isActive]) VALUES (N'cart_3    ', N'cus_3     ', N'rece_3    ', CAST(N'13:45:00' AS Time), 1)
INSERT [dbo].[CART_DETAIL] ([id_cart], [id_bill], [isActive]) VALUES (N'cart_1    ', N'bill_1    ', 1)
INSERT [dbo].[CART_DETAIL] ([id_cart], [id_bill], [isActive]) VALUES (N'cart_2    ', N'bill_2    ', 1)
INSERT [dbo].[CART_DETAIL] ([id_cart], [id_bill], [isActive]) VALUES (N'cart_3    ', N'bill_3    ', 1)
INSERT [dbo].[CUSTOMER] ([id_customer], [name], [birthday], [agency], [scores], [address], [isActive]) VALUES (N'cus_1     ', N'Võ Thịnh Chuẩn', CAST(N'1998-01-01' AS Date), N'ag_1      ', N'scro_2    ', N'ad_23     ', 1)
INSERT [dbo].[CUSTOMER] ([id_customer], [name], [birthday], [agency], [scores], [address], [isActive]) VALUES (N'cus_2     ', N'Hứa Trung Đức', CAST(N'1998-01-01' AS Date), N'ag_2      ', N'scro_3    ', N'ad_24     ', 1)
INSERT [dbo].[CUSTOMER] ([id_customer], [name], [birthday], [agency], [scores], [address], [isActive]) VALUES (N'cus_3     ', N'Trần Thị Lạng', CAST(N'1998-01-01' AS Date), N'ag_1      ', N'scro_1    ', N'ad_25     ', 1)
INSERT [dbo].[CUSTOMER] ([id_customer], [name], [birthday], [agency], [scores], [address], [isActive]) VALUES (N'cus_4     ', N'Nguyễn Ân Hòa', CAST(N'1998-01-01' AS Date), N'ag_2      ', N'scro_4    ', N'ad_26     ', 1)
INSERT [dbo].[CUSTOMER] ([id_customer], [name], [birthday], [agency], [scores], [address], [isActive]) VALUES (N'cus_5     ', N'Đặng Phụng Trường Lâm', CAST(N'1998-01-01' AS Date), N'ag_1      ', N'scro_5    ', N'ad_27     ', 1)
INSERT [dbo].[DISH] ([id_dish], [type_dish], [dish_name], [price], [image], [isActive]) VALUES (N'dish_1    ', N'td_1      ', N'Bún bò huế', 35000, N'./', 1)
INSERT [dbo].[DISH] ([id_dish], [type_dish], [dish_name], [price], [image], [isActive]) VALUES (N'dish_2    ', N'td_1      ', N'Phở bò hà nội', 35000, N'./', 1)
INSERT [dbo].[DISH] ([id_dish], [type_dish], [dish_name], [price], [image], [isActive]) VALUES (N'dish_3    ', N'td_2      ', N'Cơm chiên dương châu', 30000, N'./', 1)
INSERT [dbo].[DISH] ([id_dish], [type_dish], [dish_name], [price], [image], [isActive]) VALUES (N'dish_4    ', N'td_2      ', N'Cơm sường trứng', 30000, N'./', 1)
INSERT [dbo].[DISH] ([id_dish], [type_dish], [dish_name], [price], [image], [isActive]) VALUES (N'dish_5    ', N'td_1      ', N'Bún măng vịt', 35000, N'./', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_1      ', N'Trường Quan Tuấn', N'tuan@gmail.com', N'123456789', N'ad_3      ', N'p_1       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_10     ', N'Trương Bảo Thành', N'thanh@gmail.com', N'927384288', N'ad_12     ', N'p_5       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_11     ', N'Võ Ngọc Bảo', N'bao@gmail.com', N'824872387', N'ad_13     ', N'p_1       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_12     ', N'Đồng Thiên Phú', N'phu@gmail.com', N'827313928', N'ad_14     ', N'p_1       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_13     ', N'Cao Toàn Mỹ', N'my@gmail.com', N'729373492', N'ad_15     ', N'p_2       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_14     ', N'Đinh Hương Lan', N'lan@gmail.com', N'283481929', N'ad_16     ', N'p_2       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_15     ', N'Hà Thị Mỹ Duyên', N'duyen@gmail.com', N'293848200', N'ad_17     ', N'p_3       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_16     ', N'Lý A Dương', N'duong@gmail.com', N'398983917', N'ad_18     ', N'p_3       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_17     ', N'Cao Bà Cường', N'cuong@gmail.com', N'137492839', N'ad_19     ', N'p_4       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_18     ', N'Nguyễn Hồng Hạnh', N'hanh@gmai.com', N'482830284', N'ad_20     ', N'p_4       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_19     ', N'Nguyễn Thị Mỹ Hằng', N'hang@gmail.com', N'293123818', N'ad_21     ', N'p_5       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_2      ', N'Trần Đại Nghĩa', N'nghia@gmail.com', N'234567891', N'ad_4      ', N'p_1       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_20     ', N'Trương Vũ Trí', N'tri@gmail.com', N'827398129', N'ad_22     ', N'p_5       ', N'ag_2      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_3      ', N'Nguyễn Văn Sơn', N'son@gmail.com', N'672637621', N'ad_5      ', N'p_2       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_4      ', N'Nguyễn Thị Ý Ly', N'ly@gmail.com', N'848723939', N'ad_6      ', N'p_2       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_5      ', N'Võ Bình An', N'an@gmail.com', N'837482193', N'ad_7      ', N'p_3       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_6      ', N'Lê Hồng Anh', N'anh@gmail.com', N'981273891', N'ad_8      ', N'p_3       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_7      ', N'Hứa Văn Cường', N'cuong@gmail.com', N'981238483', N'ad_9      ', N'p_4       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_8      ', N'Trần Tuấn Khải', N'khai@gmail.com', N'827382398', N'ad_10     ', N'p_4       ', N'ag_1      ', 1)
INSERT [dbo].[EMPLOYEE] ([id_employee], [name], [gmail], [id_card], [address], [position], [agency], [isActive]) VALUES (N'em_9      ', N'Cao Lệ Quyên', N'quyen@gmail.com', N'928338482', N'ad_11     ', N'p_5       ', N'ag_1      ', 1)
INSERT [dbo].[FEE] ([id_fee], [fee], [isActive]) VALUES (N'fee_1     ', 0, 1)
INSERT [dbo].[FEE] ([id_fee], [fee], [isActive]) VALUES (N'fee_2     ', 20000, 1)
INSERT [dbo].[FEE] ([id_fee], [fee], [isActive]) VALUES (N'fee_3     ', 50000, 1)
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin1    ', N'123       ', N'em_1      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin10   ', N'123       ', N'em_14     ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin11   ', N'123       ', N'em_15     ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin12   ', N'123       ', N'em_16     ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin2    ', N'123       ', N'em_2      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin3    ', N'123       ', N'em_3      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin4    ', N'123       ', N'em_4      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin5    ', N'123       ', N'em_5      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin6    ', N'123       ', N'em_6      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin7    ', N'123       ', N'em_11     ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin8    ', N'123       ', N'em_12     ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'admin9    ', N'123       ', N'em_13     ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'user1     ', N'123       ', N'cus1      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'user2     ', N'123       ', N'cus2      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'user3     ', N'123       ', N'cus3      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'user4     ', N'123       ', N'cus4      ')
INSERT [dbo].[LOGIN] ([user_name], [password], [id_owner]) VALUES (N'user5     ', N'123       ', N'cus5      ')
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_1      ', N'dish_1    ', 10, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_1      ', N'dish_2    ', 23, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_1      ', N'dish_3    ', 120, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_1      ', N'dish_4    ', 155, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_1      ', N'dish_5    ', 78, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_2      ', N'dish_1    ', 12, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_2      ', N'dish_2    ', 14, 1)
INSERT [dbo].[MENU] ([id_agency], [id_dish], [unit], [isActive]) VALUES (N'ag_2      ', N'dish_4    ', 29, 1)
INSERT [dbo].[ORDER] ([id_order], [order_name], [isActive]) VALUES (N'order_1   ', N'online', 1)
INSERT [dbo].[ORDER] ([id_order], [order_name], [isActive]) VALUES (N'order_2   ', N'offline', 1)
INSERT [dbo].[PAYMENT_METHOD] ([id_method], [method_name], [isActive]) VALUES (N'pay_1     ', N'Thẻ ngân hàng', 1)
INSERT [dbo].[PAYMENT_METHOD] ([id_method], [method_name], [isActive]) VALUES (N'pay_2     ', N'Tiền mặt', 1)
INSERT [dbo].[POSITION] ([id_position], [position_name], [isActive]) VALUES (N'p_1       ', N'Quản lý chung', 1)
INSERT [dbo].[POSITION] ([id_position], [position_name], [isActive]) VALUES (N'p_2       ', N'Quản lý chi nhánh', 1)
INSERT [dbo].[POSITION] ([id_position], [position_name], [isActive]) VALUES (N'p_3       ', N'Lê tân', 1)
INSERT [dbo].[POSITION] ([id_position], [position_name], [isActive]) VALUES (N'p_4       ', N'Phục vụ', 1)
INSERT [dbo].[POSITION] ([id_position], [position_name], [isActive]) VALUES (N'p_5       ', N'Giao hàng', 1)
INSERT [dbo].[PROMOTION] ([id_promotion], [description], [value_promotion], [isActive]) VALUES (N'pro_1     ', N'Giảm 10%', 0.1, 1)
INSERT [dbo].[PROMOTION] ([id_promotion], [description], [value_promotion], [isActive]) VALUES (N'pro_2     ', N'Giảm 5%', 0.05, 1)
INSERT [dbo].[PROMOTION] ([id_promotion], [description], [value_promotion], [isActive]) VALUES (N'pro_3     ', N'Giảm 0%', 0, 1)
INSERT [dbo].[RECEIVER] ([id_receiver], [name], [phone], [street], [ward], [district], [city], [isActive]) VALUES (N'rece_1    ', N'Trương Trọng Đại', N'0123456789', N'112 Cao Lỗ', N'Phường 4', N'Quận 8', N'HCM', 1)
INSERT [dbo].[RECEIVER] ([id_receiver], [name], [phone], [street], [ward], [district], [city], [isActive]) VALUES (N'rece_2    ', N'Nguyễn Công Phượng', N'0872837721', N'223 Nguyễn Văn Cừ', N'Phường 4', N'Quận 5', N'HCM', 1)
INSERT [dbo].[RECEIVER] ([id_receiver], [name], [phone], [street], [ward], [district], [city], [isActive]) VALUES (N'rece_3    ', N'Cao Toàn Mỹ', N'9283848223', N'72 Đinh Là Thành', N'Phường 7', N'Quận 7', N'HCM', 1)
INSERT [dbo].[SCORES] ([id_scores], [scores], [promotion], [isActive]) VALUES (N'scro_1    ', 23000000, N'pro_1     ', 1)
INSERT [dbo].[SCORES] ([id_scores], [scores], [promotion], [isActive]) VALUES (N'scro_2    ', 12000000, N'pro_2     ', 1)
INSERT [dbo].[SCORES] ([id_scores], [scores], [promotion], [isActive]) VALUES (N'scro_3    ', 3000000, N'pro_3     ', 1)
INSERT [dbo].[SCORES] ([id_scores], [scores], [promotion], [isActive]) VALUES (N'scro_4    ', 21000000, N'pro_1     ', 1)
INSERT [dbo].[SCORES] ([id_scores], [scores], [promotion], [isActive]) VALUES (N'scro_5    ', 2300000, N'pro_3     ', 1)
INSERT [dbo].[STATUS] ([id_status], [description], [isActive]) VALUES (N'sta_1     ', N'Tiếp nhận', N'1         ')
INSERT [dbo].[STATUS] ([id_status], [description], [isActive]) VALUES (N'sta_2     ', N'Đang chuẩn bị', N'1         ')
INSERT [dbo].[STATUS] ([id_status], [description], [isActive]) VALUES (N'sta_3     ', N'Đang giao', N'1         ')
INSERT [dbo].[STATUS] ([id_status], [description], [isActive]) VALUES (N'sta_4     ', N'Hoàn tất', N'1         ')
INSERT [dbo].[TYPE_DISH] ([id_type_dish], [type_dish_name], [isActive]) VALUES (N'td_1      ', N'Món nước', 1)
INSERT [dbo].[TYPE_DISH] ([id_type_dish], [type_dish_name], [isActive]) VALUES (N'td_2      ', N'Món khô', 1)
ALTER TABLE [dbo].[AGENCY]  WITH CHECK ADD  CONSTRAINT [FK_AGENCY_ADDRESS] FOREIGN KEY([address])
REFERENCES [dbo].[ADDRESS] ([id_address])
GO
ALTER TABLE [dbo].[AGENCY] CHECK CONSTRAINT [FK_AGENCY_ADDRESS]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_AGENCY] FOREIGN KEY([agency])
REFERENCES [dbo].[AGENCY] ([id_agency])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_AGENCY]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_CUSTOMER] FOREIGN KEY([customer])
REFERENCES [dbo].[CUSTOMER] ([id_customer])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_CUSTOMER]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_FEE] FOREIGN KEY([fee])
REFERENCES [dbo].[FEE] ([id_fee])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_FEE]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_ORDER] FOREIGN KEY([order])
REFERENCES [dbo].[ORDER] ([id_order])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_ORDER]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_PAYMENT_METHOD] FOREIGN KEY([payment_method])
REFERENCES [dbo].[PAYMENT_METHOD] ([id_method])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_PAYMENT_METHOD]
GO
ALTER TABLE [dbo].[BILL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_STATUS] FOREIGN KEY([status])
REFERENCES [dbo].[STATUS] ([id_status])
GO
ALTER TABLE [dbo].[BILL] CHECK CONSTRAINT [FK_BILL_STATUS]
GO
ALTER TABLE [dbo].[BILL_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_DETAIL_BILL] FOREIGN KEY([id_bill])
REFERENCES [dbo].[BILL] ([id_bill])
GO
ALTER TABLE [dbo].[BILL_DETAIL] CHECK CONSTRAINT [FK_BILL_DETAIL_BILL]
GO
ALTER TABLE [dbo].[BILL_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_DETAIL_DISH] FOREIGN KEY([dish])
REFERENCES [dbo].[DISH] ([id_dish])
GO
ALTER TABLE [dbo].[BILL_DETAIL] CHECK CONSTRAINT [FK_BILL_DETAIL_DISH]
GO
ALTER TABLE [dbo].[BILL_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_BILL_DETAIL_RECEIVER] FOREIGN KEY([receiver])
REFERENCES [dbo].[RECEIVER] ([id_receiver])
GO
ALTER TABLE [dbo].[BILL_DETAIL] CHECK CONSTRAINT [FK_BILL_DETAIL_RECEIVER]
GO
ALTER TABLE [dbo].[CART]  WITH CHECK ADD  CONSTRAINT [FK_CART_CUSTOMER] FOREIGN KEY([customer])
REFERENCES [dbo].[CUSTOMER] ([id_customer])
GO
ALTER TABLE [dbo].[CART] CHECK CONSTRAINT [FK_CART_CUSTOMER]
GO
ALTER TABLE [dbo].[CART]  WITH CHECK ADD  CONSTRAINT [FK_CART_RECEIVER] FOREIGN KEY([receiver])
REFERENCES [dbo].[RECEIVER] ([id_receiver])
GO
ALTER TABLE [dbo].[CART] CHECK CONSTRAINT [FK_CART_RECEIVER]
GO
ALTER TABLE [dbo].[CART_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_CART_DETAIL_BILL] FOREIGN KEY([id_bill])
REFERENCES [dbo].[BILL] ([id_bill])
GO
ALTER TABLE [dbo].[CART_DETAIL] CHECK CONSTRAINT [FK_CART_DETAIL_BILL]
GO
ALTER TABLE [dbo].[CART_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_CART_DETAIL_CART] FOREIGN KEY([id_cart])
REFERENCES [dbo].[CART] ([id_cart])
GO
ALTER TABLE [dbo].[CART_DETAIL] CHECK CONSTRAINT [FK_CART_DETAIL_CART]
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_ADDRESS] FOREIGN KEY([address])
REFERENCES [dbo].[ADDRESS] ([id_address])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_ADDRESS]
GO
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_SCORES] FOREIGN KEY([scores])
REFERENCES [dbo].[SCORES] ([id_scores])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_SCORES]
GO
ALTER TABLE [dbo].[DISH]  WITH CHECK ADD  CONSTRAINT [FK_DISH_TYPE_DISH] FOREIGN KEY([type_dish])
REFERENCES [dbo].[TYPE_DISH] ([id_type_dish])
GO
ALTER TABLE [dbo].[DISH] CHECK CONSTRAINT [FK_DISH_TYPE_DISH]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEE_ADDRESS] FOREIGN KEY([address])
REFERENCES [dbo].[ADDRESS] ([id_address])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EMPLOYEE_ADDRESS]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEE_AGENCY] FOREIGN KEY([agency])
REFERENCES [dbo].[AGENCY] ([id_agency])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EMPLOYEE_AGENCY]
GO
ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EMPLOYEE_POSITION] FOREIGN KEY([position])
REFERENCES [dbo].[POSITION] ([id_position])
GO
ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EMPLOYEE_POSITION]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [FK_MENU_AGENCY] FOREIGN KEY([id_agency])
REFERENCES [dbo].[AGENCY] ([id_agency])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [FK_MENU_AGENCY]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [FK_MENU_DISH] FOREIGN KEY([id_dish])
REFERENCES [dbo].[DISH] ([id_dish])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [FK_MENU_DISH]
GO
ALTER TABLE [dbo].[SCORES]  WITH CHECK ADD  CONSTRAINT [FK_SCORES_PROMOTION] FOREIGN KEY([promotion])
REFERENCES [dbo].[PROMOTION] ([id_promotion])
GO
ALTER TABLE [dbo].[SCORES] CHECK CONSTRAINT [FK_SCORES_PROMOTION]
GO
