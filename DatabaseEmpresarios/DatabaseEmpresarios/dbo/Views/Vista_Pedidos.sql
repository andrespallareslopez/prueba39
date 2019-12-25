
CREATE VIEW dbo.Vista_Pedidos
AS
SELECT     dbo.gesPedidoDetalle.CodArticulo, dbo.gesArticulo.Descripcion AS NombreArticulo, dbo.gesArticulo.CodGrupo, 
                      dbo.gesArticuloGrupo.Descripcion AS NombreGrupo, dbo.gesArticulo.CodFamilia, dbo.gesArticuloFamilia.Descripcion AS NombreFamilia, 
                      dbo.gesArticulo.CodClase, dbo.gesArticuloClase.Descripcion AS NombreClase, dbo.gesPedidoDetalle.Pedimos, dbo.gesPedidoDetalle.Pedido, 
                      dbo.gesPedidoDetalle.Precio, dbo.gesPedidoDetalle.Subtotal, dbo.gesPedidoDetalle.IVA, dbo.gesPedidoDetalle.CodPedido, 
                      dbo.gesPedido.CodPedido AS CodPedido_Gespedido, dbo.gesPedido.Total, dbo.gesProveedores.Empresa AS NombreProveedor
FROM         dbo.gesPedido INNER JOIN
                      dbo.gesPedidoDetalle ON dbo.gesPedido.CodPedido = dbo.gesPedidoDetalle.CodPedido LEFT OUTER JOIN
                      dbo.gesProveedores ON dbo.gesPedido.CodProveedor = dbo.gesProveedores.CodProveedor LEFT OUTER JOIN
                      dbo.gesArticulo INNER JOIN
                      dbo.gesArticuloClase ON dbo.gesArticulo.CodClase = dbo.gesArticuloClase.CodClase LEFT OUTER JOIN
                      dbo.gesArticuloGrupo ON dbo.gesArticulo.CodGrupo = dbo.gesArticuloGrupo.CodGrupo LEFT OUTER JOIN
                      dbo.gesArticuloFamilia ON dbo.gesArticulo.CodFamilia = dbo.gesArticuloFamilia.CodFamilia ON 
                      dbo.gesPedidoDetalle.CodArticulo = dbo.gesArticulo.CodArticulo

