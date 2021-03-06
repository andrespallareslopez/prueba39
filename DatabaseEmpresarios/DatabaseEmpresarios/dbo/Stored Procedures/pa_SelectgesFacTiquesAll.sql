﻿

--region [dbo].[pa_SelectgesFacTiquesAll]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesFacTiquesAll]
-- Date Generated: jueves, 30 de junio de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesFacTiquesAll]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodDetalle],
	[CodFactura],
	[CodProducto],
	[Detalle],
	[Unidad],
	[Importe],
	[SubTotal],
	[CodTrabajador],
	[Suceso],
	[Operacion],
	[Fecha],
	[Orden],
	[CodDispositivo],
	[Dispositivo],
	[Actividad],
	[CodZona],
	[Zona],
	[CodGrupo],
	[Grupo],
	[CodFamilia],
	[Familia],
	[CodActividad],
	[Mesa],
	[Cliente],
	[Trabajador],
	[CodPeriodo],
	[Periodo],
	[Activo],
	[Relacion],
	[Estadio],
	[CodCola]
FROM
	[dbo].[gesFacTique]

--endregion


