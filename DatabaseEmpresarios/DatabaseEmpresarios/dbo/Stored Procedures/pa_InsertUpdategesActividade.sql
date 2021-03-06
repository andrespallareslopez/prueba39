﻿

--region [dbo].[pa_InsertUpdategesActividade]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesActividade]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesActividade]
	@CodActividad int,
	@Descripcion varchar(100),
	@Activa bit
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodActividad] FROM [dbo].[gesActividades] WHERE [CodActividad] = @CodActividad)
BEGIN
	UPDATE [dbo].[gesActividades] SET
		[Descripcion] = @Descripcion,
		[Activa] = @Activa
	WHERE
		[CodActividad] = @CodActividad
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesActividades] (
		[CodActividad],
		[Descripcion],
		[Activa]
	) VALUES (
		@CodActividad,
		@Descripcion,
		@Activa
	)
END

--endregion


