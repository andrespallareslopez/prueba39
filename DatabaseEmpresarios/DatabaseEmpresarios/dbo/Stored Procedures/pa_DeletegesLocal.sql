﻿

--region [dbo].[pa_DeletegesLocal]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesLocal]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesLocal]
	@CodLocal int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesLocal]
WHERE
	[CodLocal] = @CodLocal

--endregion


