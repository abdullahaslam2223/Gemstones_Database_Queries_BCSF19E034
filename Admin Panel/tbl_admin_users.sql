USE [Gemstones_BCSF19E034]
GO

/****** Object:  Table [dbo].[tbl_admin_users]    Script Date: 12/18/2022 3:46:06 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tbl_admin_users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_firstName] [varchar](20) NOT NULL,
	[user_lastName] [varchar](20) NOT NULL,
	[user_email] [varchar](50) NOT NULL,
	[user_password] [varchar](50) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_tbl_admin_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


