﻿

--region [dbo].[pa_DeletegesArticuloGrupo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesArticuloGrupo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesArticuloGrupo]
	@CodGrupo int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesArticuloGrupo]
WHERE
	[CodGrupo] = @CodGrupo

--endregion


