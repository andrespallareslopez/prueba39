﻿

--region [dbo].[pa_UpdategesCaja]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesCaja]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesCaja]
	@CodCaja int,
	@CodFactura int,
	@CodCobro int,
	@Entrega decimal(18, 2),
	@CodTrabajador int
AS

SET NOCOUNT ON

UPDATE [dbo].[gesCaja] SET
	[CodFactura] = @CodFactura,
	[CodCobro] = @CodCobro,
	[Entrega] = @Entrega,
	[CodTrabajador] = @CodTrabajador
WHERE
	[CodCaja] = @CodCaja

--endregion


