﻿

--region [dbo].[pa_DeletegesFamilia]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFamilia]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFamilia]
	@CodFamilia int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFamilia]
WHERE
	[CodFamilia] = @CodFamilia

--endregion


