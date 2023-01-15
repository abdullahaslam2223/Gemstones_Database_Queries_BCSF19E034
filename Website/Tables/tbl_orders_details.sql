USE [Gemstones_BCSF19E034]
GO

/****** Object:  Table [dbo].[tbl_orders_details]    Script Date: 1/15/2023 2:40:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_orders_details](
	[order_details_id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NULL,
	[product_price] [money] NOT NULL,
	[customer_id] [bigint] NULL,
 CONSTRAINT [PK_tbl_orders_details] PRIMARY KEY CLUSTERED 
(
	[order_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_orders_details]  WITH CHECK ADD  CONSTRAINT [FK_tbl_orders_details_tbl_orders_main] FOREIGN KEY([customer_id])
REFERENCES [dbo].[tbl_orders_main] ([customer_id])
GO

ALTER TABLE [dbo].[tbl_orders_details] CHECK CONSTRAINT [FK_tbl_orders_details_tbl_orders_main]
GO

ALTER TABLE [dbo].[tbl_orders_details]  WITH CHECK ADD  CONSTRAINT [FK_tbl_orders_details_tbl_products_stone] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products_stone] ([stone_id])
GO

ALTER TABLE [dbo].[tbl_orders_details] CHECK CONSTRAINT [FK_tbl_orders_details_tbl_products_stone]
GO


