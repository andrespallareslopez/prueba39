

CREATE PROCEDURE [dbo].[pa_Fichaje_del_empleado] @codtrabajador int, @desde datetime,@hasta datetime AS
			SELECT	convert(char(15),f.entrada,3) AS fecha,
					datename(dw,f.entrada) AS Día,
					convert(char(9),f.entrada,8) AS Entrada,
					convert(char(9),f.salida,8) AS Salida,
					cast(datediff(mi,f.entrada,f.salida)*0.5/30 AS decimal(12,2)) AS Horas
			FROM gesfichaje f 
			WHERE f.codtrabajador=@codtrabajador
			AND f.entrada BETWEEN @desde AND @hasta
			order by convert(char(15),f.entrada,3)

