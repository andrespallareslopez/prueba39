﻿

--region [dbo].[pa_SelectgesReserva]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesReserva]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesReserva]
	@CodReserva uniqueidentifier
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodReserva],
	[Llegada],
	[Reservada],
	[Sentados],
	[Realizada],
	[Telefono1],
	[Telefono2],
	[CodCliente],
	[Cliente],
	[Pax],
	[Observaciones],
	[CodTrabajador],
	[Trabajador],
	[CodLocal],
	[Centro],
	[CodZona],
	[Zona],
	[Señal]
FROM
	[dbo].[gesReservas]
WHERE
	[CodReserva] = @CodReserva

--endregion

