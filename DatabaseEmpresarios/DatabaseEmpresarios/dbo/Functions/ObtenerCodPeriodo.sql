CREATE FUNCTION [dbo].[ObtenerCodPeriodo] (@Fecha datetime)  
RETURNS int AS  
BEGIN 
declare @CodPeriodo as int
 Select @CodPeriodo=(Select case 
when datepart(hour,@fecha) between 6 and 13 then 2
when datepart(hour,@fecha) between 14 and 19 then 3
when datepart(hour,@fecha) between 19 and 24 then 4
when datepart(hour,@fecha) between 0 and 6 then 4
end as CodPeriodo)

return @CodPeriodo
END
