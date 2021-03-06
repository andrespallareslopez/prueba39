﻿
--region [dbo].[pa_SelectgesTrabajador]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesTrabajador]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesTrabajador]
	@CodTrabajador uniqueidentifier
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
	[CodTrabajador] = @CodTrabajador

--endregion

