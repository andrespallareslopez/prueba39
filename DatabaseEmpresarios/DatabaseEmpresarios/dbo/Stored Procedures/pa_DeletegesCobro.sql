﻿

--region [dbo].[pa_DeletegesCobro]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesCobro]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesCobro]
	@CodCobro int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesCobro]
WHERE
	[CodCobro] = @CodCobro

--endregion


