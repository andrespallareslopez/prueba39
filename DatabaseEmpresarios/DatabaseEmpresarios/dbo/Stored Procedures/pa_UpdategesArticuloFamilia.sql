﻿

--region [dbo].[pa_UpdategesArticuloFamilia]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesArticuloFamilia]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesArticuloFamilia]
	@CodFamilia int,
	@Descripcion char(50),
	@Activo bit,
	@CodGrupo int
AS

SET NOCOUNT ON

UPDATE [dbo].[gesArticuloFamilia] SET
	[Descripcion] = @Descripcion,
	[Activo] = @Activo,
	[CodGrupo] = @CodGrupo
WHERE
	[CodFamilia] = @CodFamilia

--endregion

