﻿
--region [dbo].[pa_InsertUpdategesFactura]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesFactura]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesFactura]
	@CodFactura uniqueidentifier,
	@Abierta datetime,
	@Facturada datetime,
	@Cobrada datetime,
	@Importe decimal(18, 2),
	@Mesa char(50),
	@Pax int,
	@CodCliente int,
	@CodTrabajador uniqueidentifier,
	@Estado varchar(10),
	@CodLocal int,
	@Numero int,
	@Cliente varchar(100),
	@CodPeriodo int,
	@Operador varchar(100),
	@Dispositivo char(50)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodFactura] FROM [dbo].[gesFactura] WHERE [CodFactura] = @CodFactura)
BEGIN
	UPDATE [dbo].[gesFactura] SET
		[Abierta] = @Abierta,
		[Facturada] = @Facturada,
		[Cobrada] = @Cobrada,
		[Importe] = @Importe,
		[Mesa] = @Mesa,
		[Pax] = @Pax,
		[CodCliente] = @CodCliente,
		[CodTrabajador] = @CodTrabajador,
		[Estado] = @Estado,
		[CodLocal] = @CodLocal,
		[Numero] = @Numero,
		[Cliente] = @Cliente,
		[CodPeriodo] = @CodPeriodo,
		[Operador] = @Operador,
		[Dispositivo] = @Dispositivo
	WHERE
		[CodFactura] = @CodFactura
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesFactura] (
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
		@Operador,
		@Dispositivo
	)
END

--endregion

