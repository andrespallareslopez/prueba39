﻿

--region [dbo].[pa_DeletegesFamiliasByCodGrupo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFamiliasByCodGrupo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFamiliasByCodGrupo]
	@CodGrupo int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFamilia]
WHERE
	[CodGrupo] = @CodGrupo


