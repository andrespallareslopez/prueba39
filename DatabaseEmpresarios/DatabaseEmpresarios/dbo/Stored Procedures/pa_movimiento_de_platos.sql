
CREATE PROCEDURE [dbo].[pa_movimiento_de_platos] @Fecha datetime AS
SELECT detalle,unidad,importe,subtotal FROM gesfactique
where day(fecha)=day(@fecha) and month(fecha)=month(@fecha) and year(fecha)=year(@fecha)
ORDER BY detalle;
