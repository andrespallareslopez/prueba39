﻿

--region [dbo].[pa_SelectgesPagoForma]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesPagoForma]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesPagoForma]
	@CodPago int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodPago],
	[Descripcion],
	[Activo]
FROM
	[dbo].[gesPagoForma]
WHERE
	[CodPago] = @CodPago

--endregion


