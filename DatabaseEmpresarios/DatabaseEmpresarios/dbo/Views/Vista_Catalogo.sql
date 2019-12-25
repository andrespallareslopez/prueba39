
CREATE VIEW dbo.Vista_Catalogo
AS
SELECT     TOP 100 PERCENT dbo.gesCatalogo.CodCatalogo, dbo.gesArticulo.Descripcion AS Articulo, dbo.gesCatalogo.Precio, dbo.gesCatalogo.CodArticulo, 
                      dbo.gesCatalogo.CodProveedor, dbo.gesCatalogo.IVA, dbo.gesCatalogo.Pedir, dbo.gesCatalogo.Importe, 
                      dbo.gesArticuloClase.Descripcion AS ArticuloClase, dbo.gesArticulo.CodClase, dbo.gesArticulo.PrecioUltimoCompra, 
                      dbo.gesArticulo.PrecioMedioCompra, dbo.gesArticulo.Debe_haber, dbo.gesArticulo.Contenido_caja, dbo.gesArticulo.Contenido_unidad, 
                      dbo.gesArticulo.Existencias, dbo.gesArticulo.Activo, dbo.gesCatalogo.Preferente, dbo.gesCatalogo.PedirCajas
FROM         dbo.gesCatalogo INNER JOIN
                      dbo.gesArticulo ON dbo.gesCatalogo.CodArticulo = dbo.gesArticulo.CodArticulo INNER JOIN
                      dbo.gesArticuloClase ON dbo.gesArticulo.CodClase = dbo.gesArticuloClase.CodClase
ORDER BY dbo.gesCatalogo.CodCatalogo

