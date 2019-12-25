﻿
--region [dbo].[pa_UpdategesTrabajador]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesTrabajador]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesTrabajador]
	@CodTrabajador uniqueidentifier,
	@Nombre varchar(50),
	@Apellidos varchar(100),
	@Alias varchar(50),
	@Activo bit,
	@Fijo varchar(20),
	@Movil varchar(20),
	@Direccion varchar(200),
	@Localidad varchar(50),
	@Provincia varchar(50),
	@CP char(10),
	@DNI char(20),
	@SS char(50),
	@Banco varchar(50),
	@Clave char(10),
	@CodEstatus int,
	@CodSeguridad int
AS

SET NOCOUNT ON

UPDATE [dbo].[gesTrabajador] SET
	[Nombre] = @Nombre,
	[Apellidos] = @Apellidos,
	[Alias] = @Alias,
	[Activo] = @Activo,
	[Fijo] = @Fijo,
	[Movil] = @Movil,
	[Direccion] = @Direccion,
	[Localidad] = @Localidad,
	[Provincia] = @Provincia,
	[CP] = @CP,
	[DNI] = @DNI,
	[SS] = @SS,
	[Banco] = @Banco,
	[Clave] = @Clave,
	[CodEstatus] = @CodEstatus,
	[CodSeguridad] = @CodSeguridad
WHERE
	[CodTrabajador] = @CodTrabajador

--endregion

