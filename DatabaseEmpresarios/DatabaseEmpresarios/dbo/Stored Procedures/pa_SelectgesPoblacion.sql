﻿

--region [dbo].[pa_SelectgesPoblacion]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesPoblacion]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesPoblacion]
	@CodPoblacion int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodPoblacion],
	[Descripcion]
FROM
	[dbo].[gesPoblacion]
WHERE
	[CodPoblacion] = @CodPoblacion

--endregion


