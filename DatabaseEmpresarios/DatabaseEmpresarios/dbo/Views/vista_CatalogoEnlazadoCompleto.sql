

CREATE VIEW dbo.vista_CatalogoEnlazadoCompleto
AS
SELECT     dbo.gesCatalogo.CodCatalogo, dbo.gesCatalogo.CodProveedor, UPPER(RTRIM(dbo.gesProveedores.Empresa)) AS Proveedor, 
                      dbo.gesCatalogo.CodArticulo, UPPER(RTRIM(dbo.gesArticulo.Descripcion)) AS Articulo, dbo.gesCatalogo.CodFormatoPedido, 
                      dbo.gesFormatoPedido.Descripcion AS FormatoPedido, dbo.gesCatalogo.CodEmpaquetado, 
                      dbo.gesEmpaquetado.Descripcion AS FormatoEmpaquetado, dbo.gesCatalogo.Precio, dbo.gesCatalogo.Pedir, dbo.gesCatalogo.IVA, 
                      dbo.gesCatalogo.Debe_haber, dbo.gesCatalogo.Importe, dbo.gesCatalogo.Contenido_unidad, dbo.gesCatalogo.Contenido_caja, 
                      dbo.gesCatalogo.PedirCajas, dbo.gesCatalogo.Preferente, dbo.gesCatalogo.PrecioUltimoCompra, dbo.gesCatalogo.PrecioMedioCompra, 
                      dbo.gesArticulo.Contenido_caja AS ArticuloUdsCaja, dbo.gesArticulo.Contenido_unidad AS FactorConversion, dbo.gesArticulo.Existencias, 
                      dbo.gesArticulo.Debe_haber AS ArticuloStockMinimo, dbo.gesArticulo.PrecioUltimoCompra AS ArticuloPUC, 
                      dbo.gesArticulo.PrecioMedioCompra AS ArticuloPMC, dbo.gesArticulo.CodGrupo, dbo.gesGrupo.Descripcion AS Grupo, dbo.gesArticulo.CodFamilia, 
                      dbo.gesFamilia.Descripcion AS Familia, dbo.gesArticulo.CodEnvase, dbo.gesEnvase.Descripcion AS FormatoEnvase, dbo.gesArticulo.CodMagnitud, 
                      dbo.gesMagnitud.Descripcion AS FormatoMagnitud, dbo.gesArticulo.CodClase, dbo.gesArticuloClase.Descripcion AS Clase, 
                      dbo.gesArticulo.CodGrupoCompra, dbo.gesGrupoCompra.Descripcion AS GrupoCompra, dbo.gesArticulo.CodSectorPedido, 
                      dbo.gesSectorPedido.Descripcion AS SectorPedido, dbo.gesArticulo.Activo
FROM         dbo.gesFamilia RIGHT OUTER JOIN
                      dbo.gesArticulo ON dbo.gesFamilia.CodFamilia = dbo.gesArticulo.CodFamilia RIGHT OUTER JOIN
                      dbo.gesCatalogo LEFT OUTER JOIN
                      dbo.gesEmpaquetado ON dbo.gesCatalogo.CodEmpaquetado = dbo.gesEmpaquetado.CodEmpaquetado LEFT OUTER JOIN
                      dbo.gesFormatoPedido ON dbo.gesCatalogo.CodFormatoPedido = dbo.gesFormatoPedido.CodFormatoPedido LEFT OUTER JOIN
                      dbo.gesProveedores ON dbo.gesCatalogo.CodProveedor = dbo.gesProveedores.CodProveedor ON 
                      dbo.gesArticulo.CodArticulo = dbo.gesCatalogo.CodArticulo LEFT OUTER JOIN
                      dbo.gesSectorPedido ON dbo.gesArticulo.CodSectorPedido = dbo.gesSectorPedido.CodSectorPedido LEFT OUTER JOIN
                      dbo.gesGrupoCompra ON dbo.gesArticulo.CodGrupoCompra = dbo.gesGrupoCompra.CodGrupoCompra LEFT OUTER JOIN
                      dbo.gesEnvase ON dbo.gesArticulo.CodEnvase = dbo.gesEnvase.CodEnvase LEFT OUTER JOIN
                      dbo.gesMagnitud ON dbo.gesArticulo.CodMagnitud = dbo.gesMagnitud.CodMagnitud LEFT OUTER JOIN
                      dbo.gesArticuloClase ON dbo.gesArticulo.CodClase = dbo.gesArticuloClase.CodClase LEFT OUTER JOIN
                      dbo.gesGrupo ON dbo.gesFamilia.CodGrupo = dbo.gesGrupo.CodGrupo


