
CREATE VIEW dbo.vs_Dispositivos_de_productos
AS
SELECT     dbo.gesProducto.CodProducto, dbo.gesProducto.Descripcion, dbo.gesProducto.CodZona, dbo.gesZonas.CodDispositivo, dbo.gesZonas.Tipo
FROM         dbo.gesProducto INNER JOIN
                      dbo.gesZonas ON dbo.gesProducto.CodZona = dbo.gesZonas.CodZona

