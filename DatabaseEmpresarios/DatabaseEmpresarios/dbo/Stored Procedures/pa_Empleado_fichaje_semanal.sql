
CREATE PROCEDURE [dbo].[pa_Empleado_fichaje_semanal] @Mes int,@Año int AS
SELECT e.nombre + ' ' + e.apellidos as Empleado, datepart(ww,f.entrada) as Semana, 
sum(cast(datediff(mi,f.entrada,f.salida)*0.5/30 as decimal(12,2))) as Horas
FROM gesFichaje f INNER JOIN gesTrabajador e ON f.codtrabajador=e.codtrabajador
where month(f.entrada)=@mes and year(f.entrada)=@año
group by e.nombre + ' ' + e.apellidos,datepart(ww,f.entrada)
order by e.nombre + ' ' + e.apellidos;
