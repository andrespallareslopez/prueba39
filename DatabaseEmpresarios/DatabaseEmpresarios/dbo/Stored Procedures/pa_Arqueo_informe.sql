
CREATE PROCEDURE [dbo].[pa_Arqueo_informe] @codarqueo uniqueidentifier,@fecha datetime  AS
UPDATE gesarqueodetalle 
SET vendido= (select sum(t.subtotal) from gesfactique t
WHERE t.detalle=d.realidad AND t.fecha BETWEEN dateadd(hour,7,@fecha) AND dateadd(hour,28,@fecha)
AND t.suceso='Cobro' AND t.operacion='Arqueo' AND d.codarqueo=@codarqueo)
FROM gesarqueodetalle d,gesfactique t;
UPDATE gesarqueodetalle
SET diferencia=contado-(vendido+(select contado from gesarqueodetalle where codarqueo=@codarqueo and realidad='CAMBIO')-(select contado from gesarqueodetalle where codarqueo=@codarqueo and realidad='PAGOS'))
WHERE codarqueo=@codarqueo AND realidad='Efectivo';
UPDATE gesarqueodetalle
SET diferencia=contado-vendido
WHERE codarqueo=@codarqueo and realidad<>'Efectivo';
--INFORME
SELECT Realidad,Contado,Vendido,Diferencia
FROM gesarqueodetalle
WHERE codarqueo=@codarqueo;
