﻿

--region [dbo].[pa_DeletegesZonasByCodActividad]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesZonasByCodActividad]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesZonasByCodActividad]
	@CodActividad int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesZonas]
WHERE
	[CodActividad] = @CodActividad


