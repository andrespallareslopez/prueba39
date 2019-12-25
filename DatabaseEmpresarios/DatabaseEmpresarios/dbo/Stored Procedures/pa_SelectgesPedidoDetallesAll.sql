﻿

--region [dbo].[pa_SelectgesPedidoDetallesAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesPedidoDetallesAll]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesPedidoDetallesAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

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

--endregion

