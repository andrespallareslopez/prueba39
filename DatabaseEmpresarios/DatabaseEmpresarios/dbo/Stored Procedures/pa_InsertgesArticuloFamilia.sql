﻿

--region [dbo].[pa_InsertgesArticuloFamilia]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesArticuloFamilia]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesArticuloFamilia]
	@Descripcion char(50),
	@Activo bit,
	@CodGrupo int,
	@CodFamilia int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[gesArticuloFamilia] (
	[Descripcion],
	[Activo],
	[CodGrupo]
) VALUES (
	@Descripcion,
	@Activo,
	@CodGrupo
)

SET @CodFamilia = SCOPE_IDENTITY()

--endregion


