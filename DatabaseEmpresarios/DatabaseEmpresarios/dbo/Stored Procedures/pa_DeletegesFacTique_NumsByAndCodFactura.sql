﻿
--region [dbo].[pa_DeletegesFacTique_NumsByAndCodFactura]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFacTique_NumsByAndCodFactura]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFacTique_NumsByAndCodFactura]
	@CodFactura uniqueidentifier
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFacTique_Num]
WHERE
	[CodFactura] = @CodFactura

