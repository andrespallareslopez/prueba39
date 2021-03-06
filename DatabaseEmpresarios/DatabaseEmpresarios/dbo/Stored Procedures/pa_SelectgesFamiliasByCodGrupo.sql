﻿

--region [dbo].[pa_SelectgesFamiliasByCodGrupo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesFamiliasByCodGrupo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesFamiliasByCodGrupo]
	@CodGrupo int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodFamilia],
	[Descripcion],
	[CodGrupo],
	[Activa],
	[CodZona]
FROM
	[dbo].[gesFamilia]
WHERE
	[CodGrupo] = @CodGrupo

--endregion


