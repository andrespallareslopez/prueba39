﻿

--region [dbo].[pa_DeletegesAnulacione]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesAnulacione]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesAnulacione]
	@CodAnulacion int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesAnulaciones]
WHERE
	[CodAnulacion] = @CodAnulacion

--endregion


