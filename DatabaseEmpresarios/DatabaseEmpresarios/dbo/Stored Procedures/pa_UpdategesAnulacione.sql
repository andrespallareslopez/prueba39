﻿

--region [dbo].[pa_UpdategesAnulacione]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdategesAnulacione]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdategesAnulacione]
	@CodAnulacion int,
	@CodTrabajador int,
	@Fecha datetime,
	@CodProducto int,
	@CodTipo int
AS

SET NOCOUNT ON

UPDATE [dbo].[gesAnulaciones] SET
	[CodTrabajador] = @CodTrabajador,
	[Fecha] = @Fecha,
	[CodProducto] = @CodProducto,
	[CodTipo] = @CodTipo
WHERE
	[CodAnulacion] = @CodAnulacion

--endregion


