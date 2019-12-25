CREATE FUNCTION ObtenerPeriodo (@Fecha datetime)  
RETURNS nvarchar(20) AS  
BEGIN 
declare @Periodo as nvarchar(20)
 Select @Periodo=(Select case 
when datepart(hour,@fecha) between 6 and 13 then 'Desayuno'
when datepart(hour,@fecha) between 14 and 19 then 'Comida'
when datepart(hour,@fecha) between 19 and 24 then 'Cena'
when datepart(hour,@fecha) between 0 and 6 then 'Cena'
end as Periodo)

return @Periodo
END
