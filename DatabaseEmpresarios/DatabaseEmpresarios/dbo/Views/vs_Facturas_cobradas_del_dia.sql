
CREATE VIEW dbo.vs_Facturas_cobradas_del_dia
AS
SELECT     TOP 100 PERCENT Cliente, Mesa, Abierta, Facturada, Cobrada, Importe
FROM         dbo.gesFactura
WHERE     (DAY(Abierta) = DAY(GETDATE())) AND (MONTH(Abierta) = MONTH(GETDATE())) AND (YEAR(Abierta) = YEAR(GETDATE())) AND (Cobrada IS NOT NULL)
ORDER BY Abierta

