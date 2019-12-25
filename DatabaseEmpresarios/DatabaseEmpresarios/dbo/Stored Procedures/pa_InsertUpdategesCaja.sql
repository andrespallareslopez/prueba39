﻿

--region [dbo].[pa_InsertUpdategesCaja]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesCaja]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesCaja]
	@CodCaja int,
	@CodFactura int,
	@CodCobro int,
	@Entrega decimal(18, 2),
	@CodTrabajador int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodCaja] FROM [dbo].[gesCaja] WHERE [CodCaja] = @CodCaja)
BEGIN
	UPDATE [dbo].[gesCaja] SET
		[CodFactura] = @CodFactura,
		[CodCobro] = @CodCobro,
		[Entrega] = @Entrega,
		[CodTrabajador] = @CodTrabajador
	WHERE
		[CodCaja] = @CodCaja
END
ELSE
BEGIN
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
END

--endregion


