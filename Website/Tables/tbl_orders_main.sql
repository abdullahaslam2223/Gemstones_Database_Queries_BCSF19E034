USE [Gemstones_BCSF19E034]
GO

/****** Object:  Table [dbo].[tbl_orders_main]    Script Date: 1/15/2023 2:39:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_orders_main](
	[customer_id] [bigint] IDENTITY(1,1) NOT NULL,
	[customer_first_name] [varchar](50) NOT NULL,
	[customer_last_name] [varchar](50) NOT NULL,
	[customer_billing_address] [varchar](300) NOT NULL,
	[customer_email] [varchar](100) NULL,
	[customer_phone] [varchar](30) NOT NULL,
	[customer_additional_info] [varchar](500) NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [PK_tbl_orders_main] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


