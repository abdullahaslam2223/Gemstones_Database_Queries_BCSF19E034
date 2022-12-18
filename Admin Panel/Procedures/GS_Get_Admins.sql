USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Get_Admins]    Script Date: 12/18/2022 8:02:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 11 Dec, 2022
-- Description:	Getting list of all admins
-- =============================================
CREATE PROCEDURE [dbo].[GS_Get_Admins]
AS
BEGIN
	SET NOCOUNT ON;

	select * from dbo.tbl_admin_users;

END
GO


