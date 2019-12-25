

CREATE PROCEDURE [dbo].[pa_consumo_de_productos] @Desde datetime,@Hasta datetime,@Grupo char(100) AS
SELECT ft.detalle, count(ft.detalle) as 'Cantidad' 
from geshistoricofactique2008 as ft
where   ft.grupo=@grupo and ft.fecha between @desde and @hasta
group by ft.detalle
order by ft.detalle
compute sum(count(ft.detalle));
SELECT ft.detalle, CONVERT(char(15), ft.fecha, 3) AS Fecha, DATENAME(dw, ft.fecha) as Dia,
count(ft.detalle) as Cantidad
FROM geshistoricofactique2008 ft
where  ft.grupo=@grupo and ft.fecha between @desde and @hasta
group by CONVERT(char(15), ft.fecha, 3),ft.detalle,DATENAME(dw, ft.fecha)
order by ft.detalle,CONVERT(char(15), ft.fecha, 3),DATENAME(dw, ft.fecha)
compute sum(count(ft.detalle));

