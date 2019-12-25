
CREATE VIEW dbo.vs_ventas_para_trimestres
AS
SELECT     TOP 100 PERCENT *
FROM         dbo.geshistoricoFactura2010
WHERE     (abierta BETWEEN '01/10/2010' AND '01/01/2011')
ORDER BY abierta





