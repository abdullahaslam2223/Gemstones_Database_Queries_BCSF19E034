USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Admin_DoLogin]    Script Date: 12/18/2022 8:00:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 02 Dec 2022
-- Description:	Admin Users Do Login Procedure
-- =============================================
CREATE PROCEDURE [dbo].[GS_Admin_DoLogin] 
	@email varchar(50),
	@password varchar(50)
AS
BEGIN
	select * from tbl_admin_users where user_email = @email and user_password = @password and status = 1
END
GO


