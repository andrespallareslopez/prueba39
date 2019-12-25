
CREATE VIEW dbo.Vista_Catalogo_Escandallo
AS
SELECT     dbo.gesProducto_Num.Descripcion AS Producto, dbo.gesProducto_Num.Precio AS Precio_Venta, dbo.gesEscandallo_Num.Cantidad, 
                      dbo.gesMagnitud.Descripcion AS Magnitud, dbo.gesEscandallo_Num.CodMagnitud, dbo.gesProducto_Num.CodProducto_Num, 
                      dbo.gesEscandallo_Num.CodClase, dbo.gesArticuloClase.Descripcion AS Clase, dbo.gesCatalogo.CodArticulo, dbo.gesCatalogo.Precio, 
                      dbo.gesCatalogo.Pedir, dbo.gesCatalogo.IVA, dbo.gesCatalogo.Importe, dbo.gesCatalogo.Contenido_unidad, dbo.gesCatalogo.Contenido_caja, 
                      dbo.gesMagnitud.Conversion, dbo.gesMagnitud.Tipo, dbo.gesArticulo.Descripcion AS NombreArticulo
FROM         dbo.gesEscandallo_Num INNER JOIN
                      dbo.gesProducto_Num ON dbo.gesEscandallo_Num.CodProducto_Num = dbo.gesProducto_Num.CodProducto_Num INNER JOIN
                      dbo.gesArticuloClase ON dbo.gesEscandallo_Num.CodClase = dbo.gesArticuloClase.CodClase INNER JOIN
                      dbo.gesMagnitud ON dbo.gesEscandallo_Num.CodMagnitud = dbo.gesMagnitud.CodMagnitud INNER JOIN
                      dbo.gesArticulo ON dbo.gesArticuloClase.CodClase = dbo.gesArticulo.CodClase AND 
                      dbo.gesMagnitud.CodMagnitud = dbo.gesArticulo.CodMagnitud INNER JOIN
                      dbo.gesCatalogo ON dbo.gesArticulo.CodArticulo = dbo.gesCatalogo.CodArticulo

