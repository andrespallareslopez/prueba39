﻿

--region [dbo].[pa_UpdategesClaseCliente]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesClaseCliente]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesClaseCliente]
	@CodClase int,
	@Descripcion varchar(100)
AS

SET NOCOUNT ON

UPDATE [dbo].[gesClaseCliente] SET
	[Descripcion] = @Descripcion
WHERE
	[CodClase] = @CodClase

--endregion

