﻿

--region [dbo].[pa_UpdategesProveedore]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesProveedore]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesProveedore]
	@CodProveedor int,
	@Nombre char(30),
	@Apellidos char(30),
	@Empresa char(30),
	@TelefonoFijo char(15),
	@TelefonoMovil char(15),
	@Cif char(20),
	@Direccion char(20),
	@Localidad char(15),
	@Provincia char(15),
	@Activo bit,
	@Email char(50),
	@TipoPago char(15),
	@NRSanitario char(150)
AS

SET NOCOUNT ON

UPDATE [dbo].[gesProveedores] SET
	[Nombre] = @Nombre,
	[Apellidos] = @Apellidos,
	[Empresa] = @Empresa,
	[TelefonoFijo] = @TelefonoFijo,
	[TelefonoMovil] = @TelefonoMovil,
	[Cif] = @Cif,
	[Direccion] = @Direccion,
	[Localidad] = @Localidad,
	[Provincia] = @Provincia,
	[Activo] = @Activo,
	[Email] = @Email,
	[TipoPago] = @TipoPago,
	[NRSanitario] = @NRSanitario
WHERE
	[CodProveedor] = @CodProveedor

--endregion


