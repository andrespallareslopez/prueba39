﻿
--region [dbo].[pa_DeletegesFacturasByAndCodPeriodo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFacturasByAndCodPeriodo]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFacturasByAndCodPeriodo]
	@CodPeriodo int
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFactura]
WHERE
	[CodPeriodo] = @CodPeriodo

