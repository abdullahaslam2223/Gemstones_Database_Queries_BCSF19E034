USE [Gemstones_BCSF19E034]
GO

/****** Object:  StoredProcedure [dbo].[GS_Get_Products]    Script Date: 12/18/2022 8:03:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Muhammad Abdullah
-- Create date: 18 Dec, 2022
-- Description:	Procedure to get all the products
-- =============================================
CREATE PROCEDURE [dbo].[GS_Get_Products]
AS
BEGIN
	SET NOCOUNT ON;

	select p.stone_id, p.stone_name, p.stone_price, p.stone_description, p.stone_image_url, c.category_name, clr.color_name, p.stone_weight, 
	s.shape_name, p.stone_origin, sz.size_name, p.stone_hardness, p.stone_dispersion, p.stone_specific_gravity, p.stone_density

	from tbl_products_stone p left outer join tbl_stone_categories c
	on p.stone_category_id = c.category_id

	left outer join tbl_stone_colors clr
	on p.stone_color_id = clr.color_id

	left outer join tbl_stone_shapes s
	on p.stone_shape_id = s.shape_id

	left outer join tbl_stone_sizes sz
	on p.stone_size_id = sz.size_id
;

END
GO


