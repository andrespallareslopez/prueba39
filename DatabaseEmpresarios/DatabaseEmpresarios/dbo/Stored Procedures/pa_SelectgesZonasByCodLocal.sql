﻿

--region [dbo].[pa_SelectgesZonasByCodLocal]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesZonasByCodLocal]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesZonasByCodLocal]
	@CodLocal int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodZona],
	[CodLocal],
	[CodDispositivo],
	[CodActividad],
	[Nombre],
	[Activa],
	[Tipo]
FROM
	[dbo].[gesZonas]
WHERE
	[CodLocal] = @CodLocal

--endregion

