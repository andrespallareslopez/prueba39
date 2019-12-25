﻿

--region [dbo].[pa_SelectTotalArqueo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectTotalArqueo]
-- Date Generated: jueves, 11 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectTotalArqueo]
	@Codigo bigint
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[Fecha],
	[Total],
	[Codigo]
FROM
	[dbo].[TotalArqueo]
WHERE
	[Codigo] = @Codigo

--endregion

