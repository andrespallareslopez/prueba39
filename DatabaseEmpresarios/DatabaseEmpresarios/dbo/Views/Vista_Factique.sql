
CREATE VIEW dbo.Vista_Factique
AS
SELECT     CodDetalle, CodFactura, Detalle, Unidad, Importe, SubTotal, CodTrabajador, Suceso, Operacion, Fecha, Orden, CodDispositivo, Dispositivo, Actividad, 
                      CodZona, Zona, CodGrupo, Grupo, CodFamilia, Familia, CodActividad, Mesa, Cliente, Trabajador, CodPeriodo, Periodo, Activo, Relacion, Estadio, 
                      CodCola, CodProducto_Num
FROM         dbo.gesFacTique_Num
WHERE     (NOT (CodProducto_Num IS NULL))

