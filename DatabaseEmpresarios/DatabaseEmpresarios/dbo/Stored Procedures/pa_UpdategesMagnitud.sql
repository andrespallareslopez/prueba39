﻿

--region [dbo].[pa_UpdategesMagnitud]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesMagnitud]
-- Date Generated: viernes, 01 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesMagnitud]
	@CodMagnitud int,
	@Descripcion varchar(100),
	@Conversion decimal(18, 4),
	@Tipo char(10)
AS

SET NOCOUNT ON

UPDATE [dbo].[gesMagnitud] SET
	[Descripcion] = @Descripcion,
	[Conversion] = @Conversion,
	[Tipo] = @Tipo
WHERE
	[CodMagnitud] = @CodMagnitud

--endregion


