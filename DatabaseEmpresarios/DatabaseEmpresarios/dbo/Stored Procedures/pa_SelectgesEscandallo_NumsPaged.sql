﻿

--region [dbo].[pa_SelectgesEscandallo_NumsPaged]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesEscandallo_NumsPaged]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesEscandallo_NumsPaged]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodEscandallo],
	[CodProducto],
	[CodClase],
	[Cantidad],
	[CodMagnitud],
	[CodProducto_Num]
FROM
	[dbo].[gesEscandallo_Num]

--endregion


