﻿

--region [dbo].[pa_DeletegesFacTiquesByFecha]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFacTiquesByFecha]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFacTiquesByFecha]
	@Fecha datetime
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFacTique]
WHERE
	[Fecha] = @Fecha

--endregion

