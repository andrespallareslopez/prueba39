﻿

--region [dbo].[pa_InsertUpdategesFamilia]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesFamilia]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesFamilia]
	@CodFamilia int,
	@Descripcion varchar(100),
	@CodGrupo int,
	@Activa bit,
	@CodZona int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodFamilia] FROM [dbo].[gesFamilia] WHERE [CodFamilia] = @CodFamilia)
BEGIN
	UPDATE [dbo].[gesFamilia] SET
		[Descripcion] = @Descripcion,
		[CodGrupo] = @CodGrupo,
		[Activa] = @Activa,
		[CodZona] = @CodZona
	WHERE
		[CodFamilia] = @CodFamilia
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesFamilia] (
		[CodFamilia],
		[Descripcion],
		[CodGrupo],
		[Activa],
		[CodZona]
	) VALUES (
		@CodFamilia,
		@Descripcion,
		@CodGrupo,
		@Activa,
		@CodZona
	)
END

--endregion


