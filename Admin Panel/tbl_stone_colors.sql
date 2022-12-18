USE [Gemstones_BCSF19E034]
GO

/****** Object:  Table [dbo].[tbl_stone_colors]    Script Date: 12/18/2022 6:08:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_stone_colors](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_stone_colors] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


