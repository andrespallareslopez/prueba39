﻿

--region [dbo].[pa_SelectgesCatalogosPaged]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_SelectgesCatalogosPaged]
-- Date Generated: domingo, 21 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_SelectgesCatalogosPaged]
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ COMMITTED

SELECT
	[CodCatalogo],
	[CodProveedor],
	[CodArticulo],
	[CodFormatoPedido],
	[CodEmpaquetado],
	[Precio],
	[Pedir],
	[IVA],
	[Debe_haber],
	[Importe],
	[Contenido_unidad],
	[Contenido_caja],
	[PedirCajas],
	[Preferente],
	[PrecioUltimoCompra],
	[PrecioMedioCompra]
FROM
	[dbo].[gesCatalogo]

--endregion


