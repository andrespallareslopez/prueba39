
CREATE VIEW dbo.Vista_Escandallo_Magnitud
AS
SELECT     dbo.gesEscandallo.CodProducto, dbo.gesEscandallo.CodClase, dbo.gesEscandallo.Clase, dbo.gesEscandallo.CodMagnitud, 
                      dbo.gesEscandallo.Cantidad, dbo.gesMagnitud.Descripcion, dbo.gesMagnitud.Conversion, dbo.gesMagnitud.Tipo, 
                      dbo.gesEscandallo.CodEscandallo
FROM         dbo.gesEscandallo INNER JOIN
                      dbo.gesMagnitud ON dbo.gesEscandallo.CodMagnitud = dbo.gesMagnitud.CodMagnitud

