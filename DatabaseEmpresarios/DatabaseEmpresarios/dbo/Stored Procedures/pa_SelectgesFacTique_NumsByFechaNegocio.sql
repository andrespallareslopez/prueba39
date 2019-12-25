﻿

--region [dbo].[pa_SelectgesFacTique_NumsByFechaNegocio]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesFacTique_NumsByFechaNegocio]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesFacTique_NumsByFechaNegocio]
	@FechaNegocio datetime
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
	[CodCola],
	[CodProducto_Num],
	[FechaNegocio]
FROM
	[dbo].[gesFacTique_Num]
WHERE
	[FechaNegocio] = @FechaNegocio

--endregion


