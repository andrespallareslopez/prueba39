﻿

--region [dbo].[pa_DeletegesPedidosByFactura]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesPedidosByFactura]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesPedidosByFactura]
	@Factura nvarchar(150)
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesPedido]
WHERE
	[Factura] = @Factura

--endregion


