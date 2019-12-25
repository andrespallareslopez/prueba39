﻿

--region [dbo].[pa_InsertgesFacTique]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesFacTique]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesFacTique]
	@CodFactura uniqueidentifier,
	@CodProducto uniqueidentifier,
	@Detalle varchar(150),
	@Unidad int,
	@Importe decimal(18, 2),
	@SubTotal decimal(18, 2),
	@CodTrabajador int,
	@Suceso char(50),
	@Operacion char(50),
	@Fecha datetime,
	@Orden int,
	@CodDispositivo int,
	@Dispositivo char(50),
	@Actividad varchar(100),
	@CodZona int,
	@Zona varchar(100),
	@CodGrupo int,
	@Grupo varchar(100),
	@CodFamilia int,
	@Familia varchar(100),
	@CodActividad int,
	@Mesa int,
	@Cliente varchar(100),
	@Trabajador varchar(100),
	@CodPeriodo int,
	@Periodo char(50),
	@Activo bit,
	@Relacion uniqueidentifier,
	@Estadio char(50),
	@CodCola int,
	@CodDetalle uniqueidentifier OUTPUT
AS

SET NOCOUNT ON

SET @CodDetalle = NEWID()

INSERT INTO [dbo].[gesFacTique] (
	[CodDetalle],
	[CodFactura],
	[CodProducto],
	[Detalle],
	[Unidad],
	[Importe],
	[SubTotal],
	[CodTrabajador],
	[Suceso],
	[Operacion],
	[Fecha],
	[Orden],
	[CodDispositivo],
	[Dispositivo],
	[Actividad],
	[CodZona],
	[Zona],
	[CodGrupo],
	[Grupo],
	[CodFamilia],
	[Familia],
	[CodActividad],
	[Mesa],
	[Cliente],
	[Trabajador],
	[CodPeriodo],
	[Periodo],
	[Activo],
	[Relacion],
	[Estadio],
	[CodCola]
) VALUES (
	@CodDetalle,
	@CodFactura,
	@CodProducto,
	@Detalle,
	@Unidad,
	@Importe,
	@SubTotal,
	@CodTrabajador,
	@Suceso,
	@Operacion,
	@Fecha,
	@Orden,
	@CodDispositivo,
	@Dispositivo,
	@Actividad,
	@CodZona,
	@Zona,
	@CodGrupo,
	@Grupo,
	@CodFamilia,
	@Familia,
	@CodActividad,
	@Mesa,
	@Cliente,
	@Trabajador,
	@CodPeriodo,
	@Periodo,
	@Activo,
	@Relacion,
	@Estadio,
	@CodCola
)

--endregion


