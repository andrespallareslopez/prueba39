﻿

--region [dbo].[pa_SelectGesArticuloClaseConEscandallo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectGesArticuloClaseConEscandallo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectGesArticuloClaseConEscandallo]
	@Codigo int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodClaseHijo],
	[CodClasePadre],
	[Codigo],
	[Cantidad],
	[CodMagnitud]
FROM
	[dbo].[GesArticuloClaseConEscandallo]
WHERE
	[Codigo] = @Codigo

--endregion

