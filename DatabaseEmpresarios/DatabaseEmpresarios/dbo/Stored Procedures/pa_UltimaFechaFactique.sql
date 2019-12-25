
CREATE PROCEDURE pa_UltimaFechaFactique AS
select count(*) as N,dbo.obtenerFecha(fecha) as fecha from gesfactique group by dbo.obtenerFecha(fecha) order by dbo.obtenerfecha(fecha)
