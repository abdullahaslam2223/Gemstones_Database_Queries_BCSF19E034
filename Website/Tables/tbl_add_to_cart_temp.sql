USE [Gemstones_BCSF19E034]
GO

/****** Object:  Table [dbo].[tbl_add_to_cart_temp]    Script Date: 1/14/2023 3:08:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_add_to_cart_temp](
	[temp_id] [int] IDENTITY(1,1) NOT NULL,
	[user_unique_key] [varchar](100) NOT NULL,
	[product_id] [bigint] NULL,
 CONSTRAINT [PK_tbl_add_to_cart_temp] PRIMARY KEY CLUSTERED 
(
	[temp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_add_to_cart_temp]  WITH CHECK ADD  CONSTRAINT [FK_tbl_add_to_cart_temp_tbl_products_stone] FOREIGN KEY([product_id])
REFERENCES [dbo].[tbl_products_stone] ([stone_id])
GO

ALTER TABLE [dbo].[tbl_add_to_cart_temp] CHECK CONSTRAINT [FK_tbl_add_to_cart_temp_tbl_products_stone]
GO


