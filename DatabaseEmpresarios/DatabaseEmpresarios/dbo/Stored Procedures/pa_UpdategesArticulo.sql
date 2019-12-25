﻿

--region [dbo].[pa_UpdategesArticulo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesArticulo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesArticulo]
	@CodArticulo int,
	@CodGrupo int,
	@CodFamilia int,
	@CodEnvase int,
	@CodMagnitud int,
	@CodGrupoCompra int,
	@CodSectorPedido int,
	@CodClase int,
	@Descripcion varchar(100),
	@Activo bit,
	@Contenido_unidad decimal(18, 2),
	@Contenido_caja decimal(18, 2),
	@Existencias decimal(18, 2),
	@Debe_haber decimal(18, 2),
	@PrecioUltimoCompra decimal(18, 2),
	@PrecioMedioCompra decimal(18, 2)
AS

SET NOCOUNT ON

UPDATE [dbo].[gesArticulo] SET
	[CodGrupo] = @CodGrupo,
	[CodFamilia] = @CodFamilia,
	[CodEnvase] = @CodEnvase,
	[CodMagnitud] = @CodMagnitud,
	[CodGrupoCompra] = @CodGrupoCompra,
	[CodSectorPedido] = @CodSectorPedido,
	[CodClase] = @CodClase,
	[Descripcion] = @Descripcion,
	[Activo] = @Activo,
	[Contenido_unidad] = @Contenido_unidad,
	[Contenido_caja] = @Contenido_caja,
	[Existencias] = @Existencias,
	[Debe_haber] = @Debe_haber,
	[PrecioUltimoCompra] = @PrecioUltimoCompra,
	[PrecioMedioCompra] = @PrecioMedioCompra
WHERE
	[CodArticulo] = @CodArticulo

--endregion


