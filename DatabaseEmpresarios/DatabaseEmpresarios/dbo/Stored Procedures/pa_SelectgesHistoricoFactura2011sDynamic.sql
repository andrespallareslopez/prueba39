﻿

--region [dbo].[pa_SelectgesHistoricoFactura2011sDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesHistoricoFactura2011sDynamic]
-- Date Generated: miércoles, 29 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesHistoricoFactura2011sDynamic]
	@WhereCondition nvarchar(500),
	@OrderByExpression nvarchar(250) = NULL
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

DECLARE @SQL nvarchar(3250)

SET @SQL = '
SELECT
	[CodFactura],
	[Abierta],
	[Facturada],
	[Cobrada],
	[Importe],
	[Mesa],
	[Pax],
	[CodCliente],
	[CodTrabajador],
	[Estado],
	[CodLocal],
	[Numero],
	[Cliente],
	[CodPeriodo],
	[Periodo],
	[Operador],
	[Dispositivo]
FROM
	[dbo].[gesHistoricoFactura2011]
WHERE
	' + @WhereCondition

IF @OrderByExpression IS NOT NULL AND LEN(@OrderByExpression) > 0
BEGIN
	SET @SQL = @SQL + '
ORDER BY
	' + @OrderByExpression
END

EXEC sp_executesql @SQL

--endregion


