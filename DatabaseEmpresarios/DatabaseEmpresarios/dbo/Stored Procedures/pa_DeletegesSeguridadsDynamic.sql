﻿

--region [dbo].[pa_DeletegesSeguridadsDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesSeguridadsDynamic]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesSeguridadsDynamic]
	@WhereCondition nvarchar(500)
AS

SET NOCOUNT ON

DECLARE @SQL nvarchar(3250)

SET @SQL = '
DELETE FROM
	[dbo].[gesSeguridad]
WHERE
	' + @WhereCondition

EXEC sp_executesql @SQL

--endregion


