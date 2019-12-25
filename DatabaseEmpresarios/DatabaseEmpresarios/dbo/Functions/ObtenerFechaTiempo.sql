
CREATE FUNCTION [ObtenerFechaTiempo] (@Fecha datetime)  
RETURNS smalldatetime AS  
BEGIN 
 RETURN cast(cast(day(@Fecha) as nvarchar)+'/'+cast(month(@Fecha) as nvarchar)+'/'+cast(year(@Fecha) as nvarchar)+' '+cast(datepart(hh,@Fecha) as nvarchar)+':'+cast(datepart(mi,@Fecha) as nvarchar)+':00' as datetime)
END

