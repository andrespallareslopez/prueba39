﻿

--region [dbo].[pa_DeletegesEscandallosByCodMagnitud]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesEscandallosByCodMagnitud]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesEscandallosByCodMagnitud]
	@CodMagnitud int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesEscandallo]
WHERE
	[CodMagnitud] = @CodMagnitud


