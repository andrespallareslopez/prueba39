
CREATE PROCEDURE pa_FechaFactique 
@Fecha datetime
AS
select * from gesfactique where dbo.obtenerfecha(fecha)=@fecha
