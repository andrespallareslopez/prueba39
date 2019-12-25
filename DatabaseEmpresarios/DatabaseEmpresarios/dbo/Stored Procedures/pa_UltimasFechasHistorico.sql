

CREATE PROCEDURE pa_UltimasFechasHistorico
@Fecha as datetime
 AS

select* from geshistoricofactura2011 where dbo.obtenerfecha(cobrada)=dbo.obtenerfecha(@fecha)   order by dbo.obtenerfecha(cobrada)
