USE [Gemstones_BCSF19E034]
GO
/****** Object:  StoredProcedure [dbo].[Web_Delete_Cart_Product]    Script Date: 1/15/2023 7:07:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 15 Jan 2022
-- Description:	This is the procedure to remove items from the cart
-- =============================================
CREATE PROCEDURE [dbo].[Web_Delete_Cart_Product]
	@temp_id int
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM tbl_add_to_cart_temp WHERE temp_id = @temp_id;
END
