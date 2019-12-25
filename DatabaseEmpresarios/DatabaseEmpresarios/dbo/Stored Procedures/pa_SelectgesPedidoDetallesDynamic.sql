﻿

--region [dbo].[pa_SelectgesPedidoDetallesDynamic]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesPedidoDetallesDynamic]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesPedidoDetallesDynamic]
	@WhereCondition nvarchar(500),
	@OrderByExpression nvarchar(250) = NULL
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

DECLARE @SQL nvarchar(3250)

SET @SQL = '
SELECT
	[CodDetalle],
	[CodPedido],
	[CodArticulo],
	[CodCatalogo],
	[Debe_haber],
	[Tenemos],
	[Pedimos],
	[Pedido],
	[PresentacionUnidades],
	[PresentacionPrecio],
	[PresentacionFormatoPedido],
	[PresentacionFormatoEnvase],
	[PresentacionFormatoEmpaquetado],
	[Recibido],
	[Recibi],
	[Pedido_por],
	[Recibido_por],
	[Precio],
	[Subtotal],
	[Descuento],
	[IVA],
	[Observaciones],
	[Cajas]
FROM
	[dbo].[gesPedidoDetalle]
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


