﻿

--region [dbo].[pa_UpdategesArticuloGrupo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesArticuloGrupo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesArticuloGrupo]
	@CodGrupo int,
	@Descripcion char(50),
	@Activo bit
AS

SET NOCOUNT ON

UPDATE [dbo].[gesArticuloGrupo] SET
	[Descripcion] = @Descripcion,
	[Activo] = @Activo
WHERE
	[CodGrupo] = @CodGrupo

--endregion


