﻿
--region [dbo].[pa_DeletegesFactura]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_DeletegesFactura]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_DeletegesFactura]
	@CodFactura uniqueidentifier
AS

SET NOCOUNT ON

DELETE FROM [dbo].[gesFactura]
WHERE
	[CodFactura] = @CodFactura

--endregion

