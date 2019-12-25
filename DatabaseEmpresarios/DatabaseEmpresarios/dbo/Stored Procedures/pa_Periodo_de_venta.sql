
CREATE PROCEDURE [dbo].[pa_Periodo_de_venta] AS
SELECT codperiodo,descripcion
FROM gesperiodos
WHERE datepart(hour,getdate()) between datepart(hour,inicio) and datepart(hour,final)
AND datepart(minute,getdate()) between datepart(minute,inicio) and datepart(minute,final)
AND datepart(second,getdate()) between datepart(second,inicio) and datepart(second,final);
