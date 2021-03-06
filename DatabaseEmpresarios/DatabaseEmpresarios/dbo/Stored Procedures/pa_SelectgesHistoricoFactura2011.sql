﻿

--region [dbo].[pa_SelectgesHistoricoFactura2011]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesHistoricoFactura2011]
-- Date Generated: miércoles, 29 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesHistoricoFactura2011]
	@CodFactura uniqueidentifier
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
	[Periodo],
	[Operador],
	[Dispositivo]
FROM
	[dbo].[gesHistoricoFactura2011]
WHERE
	[CodFactura] = @CodFactura

--endregion


