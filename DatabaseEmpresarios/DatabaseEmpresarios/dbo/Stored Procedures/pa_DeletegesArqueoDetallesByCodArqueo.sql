﻿

--region [dbo].[pa_DeletegesArqueoDetallesByCodArqueo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesArqueoDetallesByCodArqueo]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesArqueoDetallesByCodArqueo]
	@CodArqueo uniqueidentifier
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesArqueoDetalle]
WHERE
	[CodArqueo] = @CodArqueo


