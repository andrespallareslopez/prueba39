﻿
--region [dbo].[pa_DeletegesPedidosByCodTipoPedido]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesPedidosByCodTipoPedido]
-- Date Generated: miércoles, 19 de octubre de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesPedidosByCodTipoPedido]
	@CodTipoPedido int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesPedido]
WHERE
	[CodTipoPedido] = @CodTipoPedido
