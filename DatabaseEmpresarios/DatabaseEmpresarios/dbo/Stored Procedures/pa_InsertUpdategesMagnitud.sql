﻿

--region [dbo].[pa_InsertUpdategesMagnitud]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesMagnitud]
-- Date Generated: viernes, 01 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesMagnitud]
	@CodMagnitud int,
	@Descripcion varchar(100),
	@Conversion decimal(18, 4),
	@Tipo char(10)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodMagnitud] FROM [dbo].[gesMagnitud] WHERE [CodMagnitud] = @CodMagnitud)
BEGIN
	UPDATE [dbo].[gesMagnitud] SET
		[Descripcion] = @Descripcion,
		[Conversion] = @Conversion,
		[Tipo] = @Tipo
	WHERE
		[CodMagnitud] = @CodMagnitud
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesMagnitud] (
		[CodMagnitud],
		[Descripcion],
		[Conversion],
		[Tipo]
	) VALUES (
		@CodMagnitud,
		@Descripcion,
		@Conversion,
		@Tipo
	)
END

--endregion


