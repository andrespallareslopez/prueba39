﻿
--region [dbo].[pa_DeletegesFacTique_NumsByAndCodProducto]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFacTique_NumsByAndCodProducto]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFacTique_NumsByAndCodProducto]
	@CodProducto uniqueidentifier
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFacTique_Num]
WHERE
	[CodProducto] = @CodProducto

--endregion
