
CREATE PROCEDURE pa_UltimaFechaFactura AS

select count(*) as N,dbo.obtenerfecha(abierta) as Fecha from gesfactura  group by dbo.obtenerfecha(abierta) order by dbo.obtenerfecha(abierta)
