USE [Gemstones_BCSF19E034]
GO

/****** Object:  Table [dbo].[tbl_products_stone]    Script Date: 1/9/2023 12:24:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_products_stone](
	[stone_id] [bigint] IDENTITY(1,1) NOT NULL,
	[stone_name] [varchar](50) NOT NULL,
	[stone_price] [money] NOT NULL,
	[stone_description] [nvarchar](150) NULL,
	[stone_image_url] [nvarchar](100) NULL,
	[stone_category_id] [int] NULL,
	[stone_color_id] [int] NULL,
	[stone_weight] [float] NULL,
	[stone_shape_id] [int] NULL,
	[stone_origin] [varchar](100) NULL,
	[stone_size_id] [int] NULL,
	[stone_hardness] [float] NULL,
	[stone_dispersion] [float] NULL,
	[stone_specific_gravity] [float] NULL,
	[stone_density] [float] NULL,
	[stone_quantity] [int] NULL,
 CONSTRAINT [PK_tbl_products_stone] PRIMARY KEY CLUSTERED 
(
	[stone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tbl_products_stone]  WITH CHECK ADD  CONSTRAINT [FK_tbl_products_stone_tbl_stone_categories] FOREIGN KEY([stone_category_id])
REFERENCES [dbo].[tbl_stone_categories] ([category_id])
GO

ALTER TABLE [dbo].[tbl_products_stone] CHECK CONSTRAINT [FK_tbl_products_stone_tbl_stone_categories]
GO

ALTER TABLE [dbo].[tbl_products_stone]  WITH CHECK ADD  CONSTRAINT [FK_tbl_products_stone_tbl_stone_colors] FOREIGN KEY([stone_color_id])
REFERENCES [dbo].[tbl_stone_colors] ([color_id])
GO

ALTER TABLE [dbo].[tbl_products_stone] CHECK CONSTRAINT [FK_tbl_products_stone_tbl_stone_colors]
GO

ALTER TABLE [dbo].[tbl_products_stone]  WITH CHECK ADD  CONSTRAINT [FK_tbl_products_stone_tbl_stone_shapes] FOREIGN KEY([stone_shape_id])
REFERENCES [dbo].[tbl_stone_shapes] ([shape_id])
GO

ALTER TABLE [dbo].[tbl_products_stone] CHECK CONSTRAINT [FK_tbl_products_stone_tbl_stone_shapes]
GO

ALTER TABLE [dbo].[tbl_products_stone]  WITH CHECK ADD  CONSTRAINT [FK_tbl_products_stone_tbl_stone_sizes] FOREIGN KEY([stone_size_id])
REFERENCES [dbo].[tbl_stone_sizes] ([size_id])
GO

ALTER TABLE [dbo].[tbl_products_stone] CHECK CONSTRAINT [FK_tbl_products_stone_tbl_stone_sizes]
GO


