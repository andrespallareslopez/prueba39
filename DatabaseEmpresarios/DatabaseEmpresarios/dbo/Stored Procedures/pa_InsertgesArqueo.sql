﻿

--region [dbo].[pa_InsertgesArqueo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_InsertgesArqueo]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_InsertgesArqueo]
	@Orden int,
	@Fecha datetime,
	@CodTrabajador int,
	@Trabajador varchar(150),
	@CodLocal int,
	@Centro varchar(100),
	@CodDispositivo int,
	@Dispositivo varchar(100),
	@Comprobado bit,
	@Dia datetime,
	@CodPeriodo int,
	@Periodo char(50),
	@CodArqueo uniqueidentifier OUTPUT
AS

SET NOCOUNT ON

SET @CodArqueo = NEWID()

INSERT INTO [dbo].[gesArqueo] (
	[CodArqueo],
	[Orden],
	[Fecha],
	[CodTrabajador],
	[Trabajador],
	[CodLocal],
	[Centro],
	[CodDispositivo],
	[Dispositivo],
	[Comprobado],
	[Dia],
	[CodPeriodo],
	[Periodo]
) VALUES (
	@CodArqueo,
	@Orden,
	@Fecha,
	@CodTrabajador,
	@Trabajador,
	@CodLocal,
	@Centro,
	@CodDispositivo,
	@Dispositivo,
	@Comprobado,
	@Dia,
	@CodPeriodo,
	@Periodo
)

--endregion


