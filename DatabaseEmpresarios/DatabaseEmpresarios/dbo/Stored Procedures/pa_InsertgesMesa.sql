﻿

--region [dbo].[pa_InsertgesMesa]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesMesa]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesMesa]
	@Mesa int,
	@Pax int,
	@Activa bit,
	@CodZona int,
	@CodLocal int,
	@CodMesa int OUTPUT
AS

SET NOCOUNT ON

INSERT INTO [dbo].[gesMesa] (
	[Mesa],
	[Pax],
	[Activa],
	[CodZona],
	[CodLocal]
) VALUES (
	@Mesa,
	@Pax,
	@Activa,
	@CodZona,
	@CodLocal
)

SET @CodMesa = SCOPE_IDENTITY()

--endregion


