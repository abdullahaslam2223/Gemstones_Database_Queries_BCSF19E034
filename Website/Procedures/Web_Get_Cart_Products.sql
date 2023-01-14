SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 14 Jan 2022
-- Description:	This is a procedure to get products based on temp/cart table data
-- =============================================
CREATE PROCEDURE Web_Get_Cart_Products 
	@unique_key varchar(100)
AS
BEGIN
	SET NOCOUNT ON;

	select s.* from tbl_products_stone s inner join
	tbl_add_to_cart_temp c on s.stone_id = c.product_id where c.user_unique_key = @unique_key;
;
END
GO
