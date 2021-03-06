﻿
--region [dbo].[pa_SelectgesTrabajadorsByAndCodEstatus]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesTrabajadorsByAndCodEstatus]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesTrabajadorsByAndCodEstatus]
	@CodEstatus int
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
	[CodEstatus] = @CodEstatus

--endregion

