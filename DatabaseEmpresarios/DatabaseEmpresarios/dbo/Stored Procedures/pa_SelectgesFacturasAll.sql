﻿
--region [dbo].[pa_SelectgesFacturasAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesFacturasAll]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesFacturasAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodFactura],
	[Abierta],
	[Facturada],
	[Cobrada],
	[Importe],
	[Mesa],
	[Pax],
	[CodCliente],
	[CodTrabajador],
	[Estado],
	[CodLocal],
	[Numero],
	[Cliente],
	[CodPeriodo],
	[Operador],
	[Dispositivo]
FROM
	[dbo].[gesFactura]

--endregion
