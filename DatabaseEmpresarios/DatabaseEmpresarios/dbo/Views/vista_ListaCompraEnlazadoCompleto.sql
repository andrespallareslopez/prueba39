


CREATE VIEW dbo.vista_ListaCompraEnlazadoCompleto
AS
SELECT     dbo.gesListaCompra.CodListaPedido, dbo.gesListaCompra.CodCatalogo, dbo.gesListaCompra.CodTrabajadorCrea, 
                      dbo.gesListaCompra.CodTrabajadorModifica, dbo.gesListaCompra.FechaAlta, dbo.gesListaCompra.FechaModificacion, 
                      dbo.gesListaCompra.NumeroPedido, dbo.gesListaCompra.SeleccionadoPedir, dbo.gesListaCompra.PedidoUnidades, 
                      dbo.gesListaCompra.PedidoFormato, dbo.gesListaCompra.PedidoPrecio, dbo.gesListaCompra.RealUnidades, 
                      dbo.gesListaCompra.RealTextoUnidades, dbo.gesListaCompra.RealCajas, dbo.gesListaCompra.RealTextoCajas, 
                      dbo.gesListaCompra.RealPrecioUnidad, dbo.gesListaCompra.RealPrecioCaja, dbo.gesListaCompra.RealImporte, 
                      dbo.gesListaCompra.RealObservaciones, dbo.gesCatalogo.CodProveedor, dbo.gesCatalogo.CodArticulo, dbo.gesCatalogo.CodFormatoPedido, 
                      dbo.gesCatalogo.CodEmpaquetado, dbo.gesCatalogo.Precio, dbo.gesCatalogo.Pedir, dbo.gesCatalogo.IVA, dbo.gesCatalogo.Debe_haber, 
                      dbo.gesCatalogo.Importe, dbo.gesCatalogo.Contenido_unidad, dbo.gesCatalogo.Contenido_caja, dbo.gesCatalogo.PedirCajas, 
                      dbo.gesCatalogo.Preferente, dbo.gesCatalogo.PrecioUltimoCompra, dbo.gesCatalogo.PrecioMedioCompra, 
                      gesTrabajador_1.Nombre AS TrabajadorModifica, UPPER(RTRIM(dbo.gesProveedores.Empresa)) AS Proveedor, 
                      dbo.gesEmpaquetado.Descripcion AS Empaquetado, dbo.gesArticulo.CodEnvase, dbo.gesArticulo.CodMagnitud, dbo.gesArticulo.CodClase, 
                      dbo.gesArticulo.CodGrupoCompra, dbo.gesArticulo.CodSectorPedido, UPPER(RTRIM(dbo.gesArticulo.Descripcion)) AS Articulo, 
                      dbo.gesEnvase.Descripcion AS Envase, dbo.gesMagnitud.Descripcion AS Magnitud, dbo.gesArticuloClase.Descripcion AS Clase, 
                      dbo.gesGrupoCompra.Descripcion AS GrupoCompra, dbo.gesSectorPedido.Descripcion AS SectorPedido, gesTrabajador_1.Nombre AS TrabajadorCrea, 
                      dbo.gesListaCompra.RealObservacionesGenerales, 
                      dbo.gesListaCompra.RealImporte + dbo.gesListaCompra.RealImporte * dbo.gesCatalogo.IVA / 100 AS ImporteTotal
FROM         dbo.gesListaCompra LEFT OUTER JOIN
                      dbo.gesTrabajador gesTrabajador_1 ON dbo.gesListaCompra.CodTrabajadorCrea = gesTrabajador_1.CodTrabajador LEFT OUTER JOIN
                      dbo.gesTrabajador gesTrabajador_2 ON dbo.gesListaCompra.CodTrabajadorModifica = gesTrabajador_2.CodTrabajador LEFT OUTER JOIN
                      dbo.gesCatalogo ON dbo.gesListaCompra.CodCatalogo = dbo.gesCatalogo.CodCatalogo LEFT OUTER JOIN
                      dbo.gesEmpaquetado ON dbo.gesCatalogo.CodEmpaquetado = dbo.gesEmpaquetado.CodEmpaquetado LEFT OUTER JOIN
                      dbo.gesFormatoPedido ON dbo.gesCatalogo.CodFormatoPedido = dbo.gesFormatoPedido.CodFormatoPedido LEFT OUTER JOIN
                      dbo.gesProveedores ON dbo.gesCatalogo.CodProveedor = dbo.gesProveedores.CodProveedor LEFT OUTER JOIN
                      dbo.gesArticulo ON dbo.gesCatalogo.CodArticulo = dbo.gesArticulo.CodArticulo LEFT OUTER JOIN
                      dbo.gesSectorPedido ON dbo.gesArticulo.CodSectorPedido = dbo.gesSectorPedido.CodSectorPedido LEFT OUTER JOIN
                      dbo.gesGrupoCompra ON dbo.gesArticulo.CodGrupoCompra = dbo.gesGrupoCompra.CodGrupoCompra LEFT OUTER JOIN
                      dbo.gesArticuloClase ON dbo.gesArticulo.CodClase = dbo.gesArticuloClase.CodClase LEFT OUTER JOIN
                      dbo.gesMagnitud ON dbo.gesArticulo.CodMagnitud = dbo.gesMagnitud.CodMagnitud LEFT OUTER JOIN
                      dbo.gesEnvase ON dbo.gesArticulo.CodEnvase = dbo.gesEnvase.CodEnvase



