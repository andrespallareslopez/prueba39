﻿

--region [dbo].[pa_SelectgesAnulacionTiposAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesAnulacionTiposAll]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesAnulacionTiposAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodTipo],
	[Descripcion],
	[Resta],
	[Activo]
FROM
	[dbo].[gesAnulacionTipo]

--endregion


