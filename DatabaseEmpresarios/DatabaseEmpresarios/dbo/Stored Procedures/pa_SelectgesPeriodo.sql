﻿

--region [dbo].[pa_SelectgesPeriodo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesPeriodo]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesPeriodo]
	@CodPeriodo int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodPeriodo],
	[Descripcion],
	[Inicio],
	[Final]
FROM
	[dbo].[gesPeriodos]
WHERE
	[CodPeriodo] = @CodPeriodo

--endregion


