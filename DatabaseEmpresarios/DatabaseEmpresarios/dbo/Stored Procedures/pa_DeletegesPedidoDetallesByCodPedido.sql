﻿

--region [dbo].[pa_DeletegesPedidoDetallesByCodPedido]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesPedidoDetallesByCodPedido]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesPedidoDetallesByCodPedido]
	@CodPedido uniqueidentifier
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesPedidoDetalle]
WHERE
	[CodPedido] = @CodPedido


