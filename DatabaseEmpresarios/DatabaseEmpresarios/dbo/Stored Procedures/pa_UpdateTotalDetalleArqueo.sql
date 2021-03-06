﻿

--region [dbo].[pa_UpdateTotalDetalleArqueo]

------------------------------------------------------------------------------------------------------------------------
-- Generated By:   andres using CodeSmith 4.0.0.0
-- Template:       StoredProcedures.cst
-- Procedure Name: [dbo].[pa_UpdateTotalDetalleArqueo]
-- Date Generated: jueves, 11 de agosto de 2011
------------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [dbo].[pa_UpdateTotalDetalleArqueo]
	@Fecha datetime,
	@Periodo nvarchar(50),
	@Detalle nvarchar(50),
	@Total decimal(18, 0),
	@Codigo bigint
AS

SET NOCOUNT ON

UPDATE [dbo].[TotalDetalleArqueo] SET
	[Total] = @Total
WHERE
	[Fecha] = @Fecha
	AND [Periodo] = @Periodo
	AND [Detalle] = @Detalle
	AND [Codigo] = @Codigo

--endregion


