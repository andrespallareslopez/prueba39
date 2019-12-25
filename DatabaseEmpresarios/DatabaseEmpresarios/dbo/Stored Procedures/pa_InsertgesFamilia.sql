﻿

--region [dbo].[pa_InsertgesFamilia]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesFamilia]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesFamilia]
	@Descripcion varchar(100),
	@CodGrupo int,
	@Activa bit,
	@CodZona int,
	@CodFamilia int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[gesFamilia] (
	[Descripcion],
	[CodGrupo],
	[Activa],
	[CodZona]
) VALUES (
	@Descripcion,
	@CodGrupo,
	@Activa,
	@CodZona
)

SET @CodFamilia = SCOPE_IDENTITY()

--endregion

