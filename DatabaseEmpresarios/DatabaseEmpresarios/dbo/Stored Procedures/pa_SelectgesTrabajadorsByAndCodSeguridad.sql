﻿
--region [dbo].[pa_SelectgesTrabajadorsByAndCodSeguridad]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesTrabajadorsByAndCodSeguridad]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesTrabajadorsByAndCodSeguridad]
	@CodSeguridad int
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodTrabajador],
	[Nombre],
	[Apellidos],
	[Alias],
	[Activo],
	[Fijo],
	[Movil],
	[Direccion],
	[Localidad],
	[Provincia],
	[CP],
	[DNI],
	[SS],
	[Banco],
	[Clave],
	[CodEstatus],
	[CodSeguridad]
FROM
	[dbo].[gesTrabajador]
WHERE
	[CodSeguridad] = @CodSeguridad

--endregion

