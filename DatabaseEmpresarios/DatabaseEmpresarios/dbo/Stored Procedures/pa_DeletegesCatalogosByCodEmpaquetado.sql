﻿

--region [dbo].[pa_DeletegesCatalogosByCodEmpaquetado]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesCatalogosByCodEmpaquetado]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesCatalogosByCodEmpaquetado]
	@CodEmpaquetado int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesCatalogo]
WHERE
	[CodEmpaquetado] = @CodEmpaquetado

