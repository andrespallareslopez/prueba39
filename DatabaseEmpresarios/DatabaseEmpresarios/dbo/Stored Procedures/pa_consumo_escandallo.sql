


CREATE PROCEDURE [dbo].[pa_consumo_escandallo] AS
SELECT ft.detalle,e.clase, sum(ft.unidad) as 'Cantidad',sum(ft.unidad)*e.cantidad as 'Consumo',mg.descripcion as 'Magnitud',
(cat.importe*(sum(ft.unidad)*e.cantidad)) as 'Coste'
FROM gesfactique_16_2_2007 ft INNER JOIN gesescandallo e ON ft.codproducto=e.codproducto
INNER JOIN gesmagnitud mg ON e.codmagnitud=mg.codmagnitud
INNER JOIN gesarticulo art ON art.codclase=e.codclase
INNER JOIN gescatalogo cat ON cat.codarticulo=art.codarticulo
WHERE cat.pedir=1
GROUP BY ft.detalle,e.clase,e.cantidad,mg.descripcion,cat.importe
ORDER by ft.detalle,cat.importe*(sum(ft.unidad)*e.cantidad) 
COMPUTE SUM(cat.importe*(sum(ft.unidad)*e.cantidad)) BY ft.detalle
