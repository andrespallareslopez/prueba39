

CREATE VIEW dbo.Vista_ArticuloEnlazadoCompleto
AS
SELECT     dbo.gesArticulo.CodArticulo, dbo.gesArticulo.Descripcion, dbo.gesArticulo.CodGrupo, dbo.gesGrupo.Descripcion AS Grupo, dbo.gesArticulo.CodFamilia, 
                      dbo.gesFamilia.Descripcion AS Familia, dbo.gesArticulo.CodEnvase, dbo.gesEnvase.Descripcion AS Envase, dbo.gesArticulo.CodMagnitud, 
                      dbo.gesMagnitud.Descripcion AS Magnitud, dbo.gesArticulo.CodClase, dbo.gesArticuloClase.Descripcion AS Clase, dbo.gesArticulo.CodGrupoCompra, 
                      dbo.gesGrupoCompra.Descripcion AS GrupoCompra, dbo.gesArticulo.CodSectorPedido, dbo.gesSectorPedido.Descripcion AS SectorPedido, 
                      dbo.gesArticulo.Activo, dbo.gesArticulo.Contenido_caja, dbo.gesArticulo.Contenido_unidad, dbo.gesArticulo.Existencias, dbo.gesArticulo.Debe_haber, 
                      dbo.gesArticulo.PrecioUltimoCompra, dbo.gesArticulo.PrecioMedioCompra
FROM         dbo.gesEnvase INNER JOIN
                      dbo.gesArticulo ON dbo.gesEnvase.CodEnvase = dbo.gesArticulo.CodEnvase LEFT OUTER JOIN
                      dbo.gesSectorPedido ON dbo.gesArticulo.CodSectorPedido = dbo.gesSectorPedido.CodSectorPedido LEFT OUTER JOIN
                      dbo.gesGrupoCompra ON dbo.gesArticulo.CodGrupoCompra = dbo.gesGrupoCompra.CodGrupoCompra LEFT OUTER JOIN
                      dbo.gesArticuloClase ON dbo.gesArticulo.CodClase = dbo.gesArticuloClase.CodClase LEFT OUTER JOIN
                      dbo.gesMagnitud ON dbo.gesArticulo.CodMagnitud = dbo.gesMagnitud.CodMagnitud LEFT OUTER JOIN
                      dbo.gesFamilia INNER JOIN
                      dbo.gesGrupo ON dbo.gesFamilia.CodGrupo = dbo.gesGrupo.CodGrupo ON dbo.gesArticulo.CodGrupo = dbo.gesGrupo.CodGrupo


