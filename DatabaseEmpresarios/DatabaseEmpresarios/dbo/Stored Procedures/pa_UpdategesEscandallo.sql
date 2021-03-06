﻿

--region [dbo].[pa_UpdategesEscandallo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesEscandallo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesEscandallo]
	@CodEscandallo uniqueidentifier,
	@CodProducto uniqueidentifier,
	@CodClase int,
	@Clase varchar(100),
	@Cantidad decimal(18, 4),
	@CodMagnitud int
AS

SET NOCOUNT ON

UPDATE [dbo].[gesEscandallo] SET
	[CodProducto] = @CodProducto,
	[CodClase] = @CodClase,
	[Clase] = @Clase,
	[Cantidad] = @Cantidad,
	[CodMagnitud] = @CodMagnitud
WHERE
	[CodEscandallo] = @CodEscandallo

--endregion


