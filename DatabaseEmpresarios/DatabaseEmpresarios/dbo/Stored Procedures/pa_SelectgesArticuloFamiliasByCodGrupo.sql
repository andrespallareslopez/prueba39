﻿

--region [dbo].[pa_SelectgesArticuloFamiliasByCodGrupo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesArticuloFamiliasByCodGrupo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesArticuloFamiliasByCodGrupo]
	@CodGrupo int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodFamilia],
	[Descripcion],
	[Activo],
	[CodGrupo]
FROM
	[dbo].[gesArticuloFamilia]
WHERE
	[CodGrupo] = @CodGrupo

--endregion


