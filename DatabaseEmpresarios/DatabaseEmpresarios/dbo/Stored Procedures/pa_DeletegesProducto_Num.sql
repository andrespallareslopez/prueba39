﻿

--region [dbo].[pa_DeletegesProducto_Num]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesProducto_Num]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesProducto_Num]
	@CodProducto_Num int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesProducto_Num]
WHERE
	[CodProducto_Num] = @CodProducto_Num

--endregion


