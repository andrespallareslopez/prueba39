﻿

--region [dbo].[pa_UpdategesCola]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesCola]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesCola]
	@CodCola int,
	@CodFactura uniqueidentifier,
	@Factura int,
	@Pax int,
	@Mesa int,
	@Cliente varchar(100),
	@Fecha datetime,
	@Trabajador varchar(100),
	@Estado char(10),
	@Operacion char(20)
AS

SET NOCOUNT ON

UPDATE [dbo].[gesCola] SET
	[CodFactura] = @CodFactura,
	[Factura] = @Factura,
	[Pax] = @Pax,
	[Mesa] = @Mesa,
	[Cliente] = @Cliente,
	[Fecha] = @Fecha,
	[Trabajador] = @Trabajador,
	[Estado] = @Estado,
	[Operacion] = @Operacion
WHERE
	[CodCola] = @CodCola

--endregion


