﻿

--region [dbo].[pa_InsertUpdategesArticuloFamilia]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesArticuloFamilia]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesArticuloFamilia]
	@CodFamilia int,
	@Descripcion char(50),
	@Activo bit,
	@CodGrupo int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodFamilia] FROM [dbo].[gesArticuloFamilia] WHERE [CodFamilia] = @CodFamilia)
BEGIN
	UPDATE [dbo].[gesArticuloFamilia] SET
		[Descripcion] = @Descripcion,
		[Activo] = @Activo,
		[CodGrupo] = @CodGrupo
	WHERE
		[CodFamilia] = @CodFamilia
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesArticuloFamilia] (
		[CodFamilia],
		[Descripcion],
		[Activo],
		[CodGrupo]
	) VALUES (
		@CodFamilia,
		@Descripcion,
		@Activo,
		@CodGrupo
	)
END

--endregion

