USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Delete_Product_Color]    Script Date: 12/25/2022 7:00:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 25 Dec, 2022
-- Description:	Stored Procedure to delete the product color
-- =============================================
CREATE PROCEDURE [dbo].[GS_Delete_Product_Color]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	delete from tbl_stone_colors where color_id = @id;
END
GO


