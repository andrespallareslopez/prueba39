﻿

--region [dbo].[pa_DeleteTotalDetalleArqueosDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeleteTotalDetalleArqueosDynamic]
-- Date Generated: jueves, 11 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeleteTotalDetalleArqueosDynamic]
	@WhereCondition nvarchar(500)
AS

SET NOCOUNT ON

DECLARE @SQL nvarchar(3250)

SET @SQL = '
DELETE FROM
	[dbo].[TotalDetalleArqueo]
WHERE
	' + @WhereCondition

EXEC sp_executesql @SQL

--endregion


