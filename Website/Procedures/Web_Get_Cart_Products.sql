USE [Gemstones_BCSF19E034]
GO
/****** Object:  StoredProcedure [dbo].[Web_Get_Cart_Products]    Script Date: 1/15/2023 7:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 14 Jan 2022
-- Description:	This is a procedure to get products based on temp/cart table data
-- =============================================
CREATE PROCEDURE [dbo].[Web_Get_Cart_Products] 
	@unique_key varchar(100)
AS
BEGIN
	SET NOCOUNT ON;

	select s.*, c.temp_id from tbl_products_stone s inner join
	tbl_add_to_cart_temp c on s.stone_id = c.product_id where c.user_unique_key = @unique_key;
;
END
