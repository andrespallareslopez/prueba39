﻿

--region [dbo].[pa_DeleteGesArticuloClaseConEscandallosDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeleteGesArticuloClaseConEscandallosDynamic]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeleteGesArticuloClaseConEscandallosDynamic]
	@WhereCondition nvarchar(500)
AS

SET NOCOUNT ON

DECLARE @SQL nvarchar(3250)

SET @SQL = '
DELETE FROM
	[dbo].[GesArticuloClaseConEscandallo]
WHERE
	' + @WhereCondition

EXEC sp_executesql @SQL

--endregion


