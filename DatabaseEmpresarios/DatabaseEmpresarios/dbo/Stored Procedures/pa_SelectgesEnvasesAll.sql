﻿

--region [dbo].[pa_SelectgesEnvasesAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesEnvasesAll]
-- Date Generated: martes, 05 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesEnvasesAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodEnvase],
	[Descripcion],
	[Activo]
FROM
	[dbo].[gesEnvase]

--endregion


