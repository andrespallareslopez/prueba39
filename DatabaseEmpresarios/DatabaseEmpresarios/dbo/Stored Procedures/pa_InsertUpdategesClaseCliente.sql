﻿

--region [dbo].[pa_InsertUpdategesClaseCliente]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesClaseCliente]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesClaseCliente]
	@CodClase int,
	@Descripcion varchar(100)
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodClase] FROM [dbo].[gesClaseCliente] WHERE [CodClase] = @CodClase)
BEGIN
	UPDATE [dbo].[gesClaseCliente] SET
		[Descripcion] = @Descripcion
	WHERE
		[CodClase] = @CodClase
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesClaseCliente] (
		[CodClase],
		[Descripcion]
	) VALUES (
		@CodClase,
		@Descripcion
	)
END

--endregion


