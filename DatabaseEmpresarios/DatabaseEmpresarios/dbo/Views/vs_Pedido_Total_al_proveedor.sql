
CREATE VIEW dbo.vs_Pedido_Total_al_proveedor
AS
SELECT   top 200 Pedido, Recibido, Pagado, Total
FROM         dbo.gesPedido
WHERE     (CodProveedor = 13) AND (MONTH(Pedido) = 4) AND (YEAR(Pedido) = 2009)
order by pedido
