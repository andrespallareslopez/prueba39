
CREATE FUNCTION [ObtenerFechaNegocio] (@Fecha datetime)  
RETURNS datetime AS  
BEGIN 
declare @Fecha1 as datetime
  if dbo.obtenertiempo(@Fecha)>='01/01/1900 00:00:00' and dbo.obtenertiempo(@Fecha)<='01/01/1900 04:00:00'
      begin
             set @Fecha1= cast(cast(day(dateadd(day,-1,@Fecha)) as nvarchar)+'/'+cast(month(dateadd(day,-1,@Fecha)) as nvarchar)+'/'+cast(year(dateadd(day,-1,@Fecha)) as nvarchar) as smalldatetime)
      end
      else
      begin
            set @Fecha1= cast(cast(day(@Fecha) as nvarchar)+'/'+cast(month(@Fecha) as nvarchar)+'/'+cast(year(@Fecha) as nvarchar) as smalldatetime)
      end
 return @Fecha1
END



