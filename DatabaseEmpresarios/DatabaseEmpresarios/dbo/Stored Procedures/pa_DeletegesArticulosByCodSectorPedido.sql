﻿

--region [dbo].[pa_DeletegesArticulosByCodSectorPedido]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesArticulosByCodSectorPedido]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesArticulosByCodSectorPedido]
	@CodSectorPedido int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesArticulo]
WHERE
	[CodSectorPedido] = @CodSectorPedido


