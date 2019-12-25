
CREATE PROCEDURE [dbo].[pa_Arqueo_permiso] @fecha datetime,@codperiodo int AS
IF EXISTS(SELECT estado FROM gesfactura WHERE estado<>'Cobrada' and codperiodo=@codperiodo)
	BEGIN
		SELECT 'Arqueo no permitido' as Permiso,numero,mesa,cliente,importe FROM gesfactura WHERE estado<>'Cobrada' AND abierta BETWEEN dateadd(hour,7,@fecha) AND dateadd(hour,28,@fecha)  and codperiodo=@codperiodo
	END
ELSE
	BEGIN
		SELECT 'Arqueo permitido' as Permiso,detalle AS Cobro,sum(subtotal) as Importe
		FROM gesfactique
		WHERE fecha BETWEEN dateadd(hour,7,@fecha) AND dateadd(hour,28,@fecha)
		AND suceso='Cobro' AND operacion='Arqueo' and codperiodo=@codperiodo
		GROUP BY detalle;
	END
