﻿

--region [dbo].[pa_DeletegesFacTique_NumsByCodPeriodo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFacTique_NumsByCodPeriodo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFacTique_NumsByCodPeriodo]
	@CodPeriodo int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFacTique_Num]
WHERE
	[CodPeriodo] = @CodPeriodo

--endregion


