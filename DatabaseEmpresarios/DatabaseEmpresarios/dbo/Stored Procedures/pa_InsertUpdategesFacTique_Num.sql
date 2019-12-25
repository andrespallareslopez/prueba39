﻿
--region [dbo].[pa_InsertUpdategesFacTique_Num]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesFacTique_Num]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesFacTique_Num]
	@CodDetalle uniqueidentifier,
	@CodFactura uniqueidentifier,
	@CodProducto uniqueidentifier,
	@Detalle varchar(150),
	@Unidad int,
	@Importe decimal(18, 2),
	@SubTotal decimal(18, 2),
	@CodTrabajador uniqueidentifier,
	@Suceso char(50),
	@Operacion char(50),
	@Fecha datetime,
	@Orden int,
	@CodDispositivo int,
	@CodActividad int,
	@Relacion uniqueidentifier,
	@Estadio char(50),
	@CodCola int,
	@CodProducto_Num int,
	@FechaNegocio datetime
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodDetalle] FROM [dbo].[gesFacTique_Num] WHERE [CodDetalle] = @CodDetalle)
BEGIN
	UPDATE [dbo].[gesFacTique_Num] SET
		[CodFactura] = @CodFactura,
		[CodProducto] = @CodProducto,
		[Detalle] = @Detalle,
		[Unidad] = @Unidad,
		[Importe] = @Importe,
		[SubTotal] = @SubTotal,
		[CodTrabajador] = @CodTrabajador,
		[Suceso] = @Suceso,
		[Operacion] = @Operacion,
		[Fecha] = @Fecha,
		[Orden] = @Orden,
		[CodDispositivo] = @CodDispositivo,
		[CodActividad] = @CodActividad,
		[Relacion] = @Relacion,
		[Estadio] = @Estadio,
		[CodCola] = @CodCola,
		[CodProducto_Num] = @CodProducto_Num,
		[FechaNegocio] = @FechaNegocio
	WHERE
		[CodDetalle] = @CodDetalle
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesFacTique_Num] (
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
		[CodActividad],
		[Relacion],
		[Estadio],
		[CodCola],
		[CodProducto_Num],
		[FechaNegocio]
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
		@CodActividad,
		@Relacion,
		@Estadio,
		@CodCola,
		@CodProducto_Num,
		@FechaNegocio
	)
END

--endregion

