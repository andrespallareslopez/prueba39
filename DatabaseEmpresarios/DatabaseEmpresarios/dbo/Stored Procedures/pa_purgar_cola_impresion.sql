
CREATE PROCEDURE [dbo].[pa_purgar_cola_impresion] AS
SELECT * FROM gescola WHERE estado='Pendiente'
