﻿

--region [dbo].[pa_SelectgesEscandallosByCodClase]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesEscandallosByCodClase]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesEscandallosByCodClase]
	@CodClase int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodEscandallo],
	[CodProducto],
	[CodClase],
	[Clase],
	[Cantidad],
	[CodMagnitud]
FROM
	[dbo].[gesEscandallo]
WHERE
	[CodClase] = @CodClase

--endregion


