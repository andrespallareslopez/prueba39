﻿

--region [dbo].[pa_DeletegesEnvase]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesEnvase]
-- Date Generated: martes, 05 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesEnvase]
	@CodEnvase int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesEnvase]
WHERE
	[CodEnvase] = @CodEnvase

--endregion


