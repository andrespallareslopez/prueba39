﻿

--region [dbo].[pa_InsertUpdategesArqueoDetalle]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertUpdategesArqueoDetalle]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertUpdategesArqueoDetalle]
	@CodDetalle uniqueidentifier,
	@CodArqueo uniqueidentifier,
	@Realidad varchar(100),
	@Contado decimal(18, 2),
	@Registro varchar(100),
	@Vendido decimal(18, 2),
	@Diferencia decimal(18, 2),
	@Periodo int
AS

SET NOCOUNT ON

IF EXISTS(SELECT [CodDetalle] FROM [dbo].[gesArqueoDetalle] WHERE [CodDetalle] = @CodDetalle)
BEGIN
	UPDATE [dbo].[gesArqueoDetalle] SET
		[CodArqueo] = @CodArqueo,
		[Realidad] = @Realidad,
		[Contado] = @Contado,
		[Registro] = @Registro,
		[Vendido] = @Vendido,
		[Diferencia] = @Diferencia,
		[Periodo] = @Periodo
	WHERE
		[CodDetalle] = @CodDetalle
END
ELSE
BEGIN
	INSERT INTO [dbo].[gesArqueoDetalle] (
		[CodDetalle],
		[CodArqueo],
		[Realidad],
		[Contado],
		[Registro],
		[Vendido],
		[Diferencia],
		[Periodo]
	) VALUES (
		@CodDetalle,
		@CodArqueo,
		@Realidad,
		@Contado,
		@Registro,
		@Vendido,
		@Diferencia,
		@Periodo
	)
END

--endregion

