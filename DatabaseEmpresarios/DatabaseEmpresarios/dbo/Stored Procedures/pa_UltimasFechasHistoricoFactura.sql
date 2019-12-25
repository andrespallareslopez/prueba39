
CREATE PROCEDURE pa_UltimasFechasHistoricoFactura AS
select count(*) as N,dbo.obtenerfecha(Cobrada) as Fecha from geshistoricofactura2011  group by dbo.obtenerfecha(cobrada) order by dbo.obtenerfecha(cobrada)
