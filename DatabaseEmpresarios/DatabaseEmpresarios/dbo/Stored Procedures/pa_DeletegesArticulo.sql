﻿

--region [dbo].[pa_DeletegesArticulo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesArticulo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesArticulo]
	@CodArticulo int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesArticulo]
WHERE
	[CodArticulo] = @CodArticulo

--endregion


