﻿

--region [dbo].[pa_DeletegesMagnitudsDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesMagnitudsDynamic]
-- Date Generated: viernes, 01 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesMagnitudsDynamic]
	@WhereCondition nvarchar(500)
AS

SET NOCOUNT ON

DECLARE @SQL nvarchar(3250)

SET @SQL = '
DELETE FROM
	[dbo].[gesMagnitud]
WHERE
	' + @WhereCondition

EXEC sp_executesql @SQL

--endregion


