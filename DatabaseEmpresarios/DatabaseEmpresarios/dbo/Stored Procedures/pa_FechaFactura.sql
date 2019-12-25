
CREATE PROCEDURE pa_FechaFactura
@Fecha datetime
 AS
select * from gesFactura where dbo.obtenerfecha(abierta)=dbo.obtenerfecha(@fecha)   order by dbo.obtenerfecha(abierta)
