USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Delete_Product_Category]    Script Date: 12/25/2022 7:00:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 25 Dec, 2022
-- Description:	Stored Procedure to delete the product category
-- =============================================
CREATE PROCEDURE [dbo].[GS_Delete_Product_Category]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	delete from tbl_stone_categories where category_id = @id;
END
GO


