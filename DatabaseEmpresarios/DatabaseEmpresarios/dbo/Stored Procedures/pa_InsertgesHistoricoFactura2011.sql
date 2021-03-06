﻿

--region [dbo].[pa_InsertgesHistoricoFactura2011]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesHistoricoFactura2011]
-- Date Generated: miércoles, 29 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesHistoricoFactura2011]
	@Abierta datetime,
	@Facturada datetime,
	@Cobrada datetime,
	@Importe decimal(18, 2),
	@Mesa char(50),
	@Pax int,
	@CodCliente int,
	@CodTrabajador int,
	@Estado varchar(10),
	@CodLocal int,
	@Numero int,
	@Cliente varchar(100),
	@CodPeriodo int,
	@Periodo char(50),
	@Operador varchar(100),
	@Dispositivo char(50),
	@CodFactura uniqueidentifier OUTPUT
AS

SET NOCOUNT ON

SET @CodFactura = NEWID()

INSERT INTO [dbo].[gesHistoricoFactura2011] (
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
) VALUES (
	@CodFactura,
	@Abierta,
	@Facturada,
	@Cobrada,
	@Importe,
	@Mesa,
	@Pax,
	@CodCliente,
	@CodTrabajador,
	@Estado,
	@CodLocal,
	@Numero,
	@Cliente,
	@CodPeriodo,
	@Periodo,
	@Operador,
	@Dispositivo
)

--endregion


