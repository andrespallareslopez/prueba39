﻿

--region [dbo].[pa_SelectgesArticuloFamiliasPaged]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesArticuloFamiliasPaged]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesArticuloFamiliasPaged]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodFamilia],
	[Descripcion],
	[Activo],
	[CodGrupo]
FROM
	[dbo].[gesArticuloFamilia]

--endregion


