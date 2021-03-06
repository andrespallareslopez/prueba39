﻿

--region [dbo].[pa_UpdategesReserva]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesReserva]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesReserva]
	@CodReserva uniqueidentifier,
	@Llegada datetime,
	@Reservada datetime,
	@Sentados datetime,
	@Realizada datetime,
	@Telefono1 char(12),
	@Telefono2 char(12),
	@CodCliente int,
	@Cliente char(250),
	@Pax char(10),
	@Observaciones char(355),
	@CodTrabajador int,
	@Trabajador char(150),
	@CodLocal int,
	@Centro char(150),
	@CodZona int,
	@Zona char(100),
	@Señal char(50)
AS

SET NOCOUNT ON

UPDATE [dbo].[gesReservas] SET
	[Llegada] = @Llegada,
	[Reservada] = @Reservada,
	[Sentados] = @Sentados,
	[Realizada] = @Realizada,
	[Telefono1] = @Telefono1,
	[Telefono2] = @Telefono2,
	[CodCliente] = @CodCliente,
	[Cliente] = @Cliente,
	[Pax] = @Pax,
	[Observaciones] = @Observaciones,
	[CodTrabajador] = @CodTrabajador,
	[Trabajador] = @Trabajador,
	[CodLocal] = @CodLocal,
	[Centro] = @Centro,
	[CodZona] = @CodZona,
	[Zona] = @Zona,
	[Señal] = @Señal
WHERE
	[CodReserva] = @CodReserva

--endregion


