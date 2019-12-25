
CREATE FUNCTION [ObtenerFecha] (@Fecha datetime)  
RETURNS smalldatetime AS  
BEGIN 
 RETURN cast(cast(day(@Fecha) as nvarchar)+'/'+cast(month(@Fecha) as nvarchar)+'/'+cast(year(@Fecha) as nvarchar) as smalldatetime)
END


