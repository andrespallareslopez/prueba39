﻿

--region [dbo].[pa_DeletegesHistoricoFactura2011sDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesHistoricoFactura2011sDynamic]
-- Date Generated: miércoles, 29 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesHistoricoFactura2011sDynamic]
	@WhereCondition nvarchar(500)
AS

SET NOCOUNT ON

DECLARE @SQL nvarchar(3250)

SET @SQL = '
DELETE FROM
	[dbo].[gesHistoricoFactura2011]
WHERE
	' + @WhereCondition

EXEC sp_executesql @SQL

--endregion


