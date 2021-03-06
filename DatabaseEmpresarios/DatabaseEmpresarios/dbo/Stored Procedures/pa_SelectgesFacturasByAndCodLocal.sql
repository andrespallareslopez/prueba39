﻿
--region [dbo].[pa_SelectgesFacturasByAndCodLocal]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesFacturasByAndCodLocal]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesFacturasByAndCodLocal]
	@CodLocal int
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
WHERE
	[CodLocal] = @CodLocal

--endregion

