﻿

--region [dbo].[pa_InsertgesCaja]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesCaja]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesCaja]
	@CodCaja int,
	@CodFactura int,
	@CodCobro int,
	@Entrega decimal(18, 2),
	@CodTrabajador int
AS

SET NOCOUNT ON

INSERT INTO [dbo].[gesCaja] (
	[CodCaja],
	[CodFactura],
	[CodCobro],
	[Entrega],
	[CodTrabajador]
) VALUES (
	@CodCaja,
	@CodFactura,
	@CodCobro,
	@Entrega,
	@CodTrabajador
)

--endregion


