﻿
--region [dbo].[pa_SelectgesFacTique_NumsByAndCodTrabajador]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 5.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesFacTique_NumsByAndCodTrabajador]
-- Date Generated: miércoles, 18 de diciembre de 2013
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesFacTique_NumsByAndCodTrabajador]
	@CodTrabajador uniqueidentifier
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
	[CodActividad],
	[Relacion],
	[Estadio],
	[CodCola],
	[CodProducto_Num],
	[FechaNegocio]
FROM
	[dbo].[gesFacTique_Num]
WHERE
	[CodTrabajador] = @CodTrabajador

--endregion

