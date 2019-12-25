
CREATE FUNCTION [ObtenerTiempo] (@Fecha datetime)  
RETURNS smalldatetime AS  
BEGIN 
 RETURN cast(cast(datepart(hh,@Fecha) as nvarchar)+':'+cast(datepart(mi,@Fecha) as nvarchar)+':'+cast(datepart(ss,@Fecha) as nvarchar) as smalldatetime)
END


