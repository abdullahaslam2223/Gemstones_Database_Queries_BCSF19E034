USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Delete_Product]    Script Date: 12/25/2022 6:59:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 21 Dec, 2022
-- Description:	Procedure to delete single product
-- =============================================
CREATE PROCEDURE [dbo].[GS_Delete_Product]
	@id int
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM tbl_products_stone where stone_id = @id;
END
GO


