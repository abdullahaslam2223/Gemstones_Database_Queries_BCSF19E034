USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[Web_Delete_All_Cart_Products]    Script Date: 1/18/2023 11:38:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 18 Jan, 2022
-- Description:	This is the proceedure to delete products from temp table when order is completed
-- =============================================
CREATE PROCEDURE  [dbo].[Web_Delete_All_Cart_Products]
	@unique_key varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	
	Delete from tbl_add_to_cart_temp where user_unique_key = @unique_key;
END
GO


