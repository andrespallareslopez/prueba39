﻿

--region [dbo].[pa_UpdategesGrupo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesGrupo]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesGrupo]
	@CodGrupo int,
	@Descripcion varchar(100),
	@Activo bit
AS

SET NOCOUNT ON

UPDATE [dbo].[gesGrupo] SET
	[Descripcion] = @Descripcion,
	[Activo] = @Activo
WHERE
	[CodGrupo] = @CodGrupo

--endregion


