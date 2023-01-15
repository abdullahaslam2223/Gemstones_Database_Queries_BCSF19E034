SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 15 Jan 2022
-- Description:	This is the procedure to remove items from the cart
-- =============================================
CREATE PROCEDURE Web_Delete_Cart_Product
	@unique_key varchar(100),
	@product_id bigint
AS
BEGIN
	SET NOCOUNT ON;

	DELETE FROM tbl_add_to_cart_temp WHERE user_unique_key = @unique_key and product_id = @product_id;
END
GO
