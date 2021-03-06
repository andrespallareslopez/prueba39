﻿

--region [dbo].[pa_InsertgesEscandallo_Num]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesEscandallo_Num]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesEscandallo_Num]
	@CodProducto uniqueidentifier,
	@CodClase int,
	@Cantidad decimal(18, 4),
	@CodMagnitud int,
	@CodProducto_Num int,
	@CodEscandallo uniqueidentifier OUTPUT
AS

SET NOCOUNT ON

SET @CodEscandallo = NEWID()

INSERT INTO [dbo].[gesEscandallo_Num] (
	[CodEscandallo],
	[CodProducto],
	[CodClase],
	[Cantidad],
	[CodMagnitud],
	[CodProducto_Num]
) VALUES (
	@CodEscandallo,
	@CodProducto,
	@CodClase,
	@Cantidad,
	@CodMagnitud,
	@CodProducto_Num
)

--endregion


