

CREATE PROCEDURE [dbo].[pa_Fichaje_euros_hora] @codtrabajador int,@desde datetime,@hasta datetime,@euros decimal(12,2) AS
			SELECT sum(cast(datediff(mi,f.entrada,f.salida)*0.5/30 AS decimal(12,2)))*@euros AS Total,
			sum(cast(datediff(mi,f.entrada,f.salida)*0.5/30 AS decimal(12,2))) AS Horas
			FROM gesfichaje f
			WHERE f.codtrabajador=@codtrabajador
			AND f.entrada BETWEEN @desde AND @hasta

