
CREATE VIEW dbo.vs_Gasto_por_grupo
AS
SELECT     a.CodGrupo, SUM(dt.Subtotal) AS Expr1
FROM         dbo.gesPedidoDetalle dt INNER JOIN
                      dbo.gesArticulo a ON a.CodArticulo = dt.CodArticulo INNER JOIN
                      dbo.gesPedido p ON p.CodPedido = dt.CodPedido
WHERE     (MONTH(p.Pedido) = 6) AND (YEAR(p.Pedido) = 2007)
GROUP BY a.CodGrupo

