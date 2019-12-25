
CREATE PROCEDURE [dbo].[pa_Empleado_ficheje] @CodTrabajador int,@Euros_Hora decimal(12,2),@desde datetime,@hasta datetime AS
SELECT e.nombre + ' ' + e.apellidos as Empleado, convert(char(15),f.entrada,3) as Fecha, 
	datename(dw,f.entrada) as Dia,convert(char(9),f.entrada,8) as 'Entrada',convert(char(9),f.salida,8) as 'Salida', cast(datediff(mi,f.entrada,f.salida)*0.5/30 as decimal(12,2)) as Horas, cast(datediff(mi,f.entrada,f.salida)*0.5/30 as decimal(12,2)) * @Euros_hora as Sueldo
FROM gesFichaje f INNER JOIN gesTrabajador e ON f.codtrabajador=e.codtrabajador
WHERE f.codtrabajador=@codtrabajador and f.entrada between @desde and @hasta
ORDER BY fecha,'Entrada','Sueldo'
COMPUTE SUM(cast(datediff(mi,f.entrada,f.salida)*0.5/30 as decimal(12,2)) * @Euros_hora);
