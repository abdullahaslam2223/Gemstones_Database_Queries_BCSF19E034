USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Delete_Admin]    Script Date: 12/31/2022 10:12:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 11 Dec, 2022
-- Description:	Deleting the specific admin
-- =============================================
CREATE PROCEDURE [dbo].[GS_Delete_Admin] 
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	delete from tbl_admin_users where user_id = @id and super != 1;
END
GO
