﻿

--region [dbo].[pa_SelectgesColasAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesColasAll]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesColasAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodCola],
	[CodFactura],
	[Factura],
	[Pax],
	[Mesa],
	[Cliente],
	[Fecha],
	[Trabajador],
	[Estado],
	[Operacion]
FROM
	[dbo].[gesCola]

--endregion

