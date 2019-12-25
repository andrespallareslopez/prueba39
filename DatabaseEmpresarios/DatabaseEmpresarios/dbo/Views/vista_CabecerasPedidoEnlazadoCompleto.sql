


CREATE VIEW dbo.vista_CabecerasPedidoEnlazadoCompleto
AS
SELECT     dbo.gesTrabajador.Nombre AS Trabajador, dbo.gesProveedores.Empresa AS Proveedor, dbo.gesProveedores.TelefonoFijo AS Telefono, 
                      dbo.gesProveedores.TelefonoMovil AS Movil, dbo.gesProveedores.Email AS Email, dbo.gesPedido.CodPedido, dbo.gesPedido.CodProveedor, 
                      dbo.gesPedido.CodTrabajador, dbo.gesPedido.Pedido, dbo.gesPedido.Recibido, dbo.gesPedido.Facturado, dbo.gesPedido.Pagado, 
                      dbo.gesPedido.Orden, dbo.gesPedido.Albaran, dbo.gesPedido.Factura, dbo.gesPedido.Forma_pago, dbo.gesPedido.Total_pedido, 
                      dbo.gesPedido.Total_recibido, dbo.gesPedido.Total_pagado, dbo.gesPedido.Total, dbo.gesPedido.CodFormaPago, dbo.gesPedido.Observacion, 
                      dbo.gesPedido.FechaCreacion
FROM         dbo.gesPedido LEFT OUTER JOIN
                      dbo.gesTrabajador ON dbo.gesPedido.CodTrabajador = dbo.gesTrabajador.CodTrabajador LEFT OUTER JOIN
                      dbo.gesProveedores ON dbo.gesPedido.CodProveedor = dbo.gesProveedores.CodProveedor



