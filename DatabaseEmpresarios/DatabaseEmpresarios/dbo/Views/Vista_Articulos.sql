
CREATE VIEW dbo.Vista_Articulos
AS
SELECT     TOP 100 PERCENT dbo.gesArticulo.CodArticulo, dbo.gesArticulo.Descripcion AS Articulo, dbo.gesArticuloGrupo.Descripcion AS Grupo, 
                      dbo.gesArticuloFamilia.Descripcion AS Familia, dbo.gesArticuloClase.Descripcion AS Clase, dbo.gesEnvase.Descripcion AS Envase, 
                      dbo.gesMagnitud.Descripcion AS Magnitud
FROM         dbo.gesArticuloGrupo INNER JOIN
                      dbo.gesArticulo ON dbo.gesArticuloGrupo.CodGrupo = dbo.gesArticulo.CodGrupo INNER JOIN
                      dbo.gesArticuloFamilia ON dbo.gesArticulo.CodFamilia = dbo.gesArticuloFamilia.CodFamilia INNER JOIN
                      dbo.gesArticuloClase ON dbo.gesArticulo.CodClase = dbo.gesArticuloClase.CodClase INNER JOIN
                      dbo.gesEnvase ON dbo.gesArticulo.CodEnvase = dbo.gesEnvase.CodEnvase INNER JOIN
                      dbo.gesMagnitud ON dbo.gesArticulo.CodMagnitud = dbo.gesMagnitud.CodMagnitud
ORDER BY dbo.gesArticulo.CodArticulo

