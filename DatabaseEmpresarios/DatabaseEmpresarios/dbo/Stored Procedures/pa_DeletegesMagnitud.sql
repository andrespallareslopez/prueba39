﻿

--region [dbo].[pa_DeletegesMagnitud]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesMagnitud]
-- Date Generated: viernes, 01 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesMagnitud]
	@CodMagnitud int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesMagnitud]
WHERE
	[CodMagnitud] = @CodMagnitud

--endregion


