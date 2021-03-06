﻿

--region [dbo].[pa_SelectgesClientesByCodClase]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesClientesByCodClase]
-- Date Generated: miércoles, 06 de julio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesClientesByCodClase]
	@CodClase int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodCliente],
	[Nombre],
	[Apellidos],
	[Empresa],
	[Activo],
	[CIF],
	[Direccion],
	[Localidad],
	[Provincia],
	[CP],
	[CodClase],
	[Telefono1]
FROM
	[dbo].[gesCliente]
WHERE
	[CodClase] = @CodClase

--endregion


