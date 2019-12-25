﻿

--region [dbo].[pa_InsertUpdategesAnulacionTipo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesAnulacionTipo]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesAnulacionTipo]
	@CodTipo int,
	@Descripcion char(100),
	@Resta bit,
	@Activo bit
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodTipo] FROM [dbo].[gesAnulacionTipo] WHERE [CodTipo] = @CodTipo)
BEGIN
	UPDATE [dbo].[gesAnulacionTipo] SET
		[Descripcion] = @Descripcion,
		[Resta] = @Resta,
		[Activo] = @Activo
	WHERE
		[CodTipo] = @CodTipo
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesAnulacionTipo] (
		[CodTipo],
		[Descripcion],
		[Resta],
		[Activo]
	) VALUES (
		@CodTipo,
		@Descripcion,
		@Resta,
		@Activo
	)
END

--endregion


