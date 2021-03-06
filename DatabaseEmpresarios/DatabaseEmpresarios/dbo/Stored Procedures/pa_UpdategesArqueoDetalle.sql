﻿

--region [dbo].[pa_UpdategesArqueoDetalle]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesArqueoDetalle]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesArqueoDetalle]
	@CodDetalle uniqueidentifier,
	@CodArqueo uniqueidentifier,
	@Realidad varchar(100),
	@Contado decimal(18, 2),
	@Registro varchar(100),
	@Vendido decimal(18, 2),
	@Diferencia decimal(18, 2),
	@Periodo int
AS

SET NOCOUNT ON

UPDATE [dbo].[gesArqueoDetalle] SET
	[CodArqueo] = @CodArqueo,
	[Realidad] = @Realidad,
	[Contado] = @Contado,
	[Registro] = @Registro,
	[Vendido] = @Vendido,
	[Diferencia] = @Diferencia,
	[Periodo] = @Periodo
WHERE
	[CodDetalle] = @CodDetalle

--endregion


