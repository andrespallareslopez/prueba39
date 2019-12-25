﻿

--region [dbo].[pa_SelectgesProducto]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesProducto]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesProducto]
	@CodProducto uniqueidentifier
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodProducto],
	[CodGrupo],
	[CodFamilia],
	[CodZona],
	[Descripcion],
	[Activo],
	[Precio]
FROM
	[dbo].[gesProducto]
WHERE
	[CodProducto] = @CodProducto

--endregion


