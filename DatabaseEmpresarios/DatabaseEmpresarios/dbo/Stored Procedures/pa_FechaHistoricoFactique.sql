
CREATE PROCEDURE pa_FechaHistoricoFactique
@fecha datetime
 AS
select * from geshistoricofactique2011 where dbo.obtenerfecha(fecha)=@fecha
