﻿

--region [dbo].[pa_DeletegesEscandallo_Num]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesEscandallo_Num]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesEscandallo_Num]
	@CodEscandallo uniqueidentifier
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesEscandallo_Num]
WHERE
	[CodEscandallo] = @CodEscandallo

--endregion


