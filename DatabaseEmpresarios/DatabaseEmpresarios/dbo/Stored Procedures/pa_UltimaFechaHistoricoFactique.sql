
CREATE PROCEDURE pa_UltimaFechaHistoricoFactique 
AS

select count(*) as N,dbo.obtenerFecha(fecha) as fecha from geshistoricofactique2011 group by dbo.obtenerFecha(fecha) order by dbo.obtenerfecha(fecha)
