
CREATE VIEW dbo.Vista_Factique_Num
AS
SELECT     dbo.gesFacTique_Num.CodDetalle, dbo.gesFacTique_Num.CodFactura, dbo.gesFacTique_Num.CodProducto, dbo.gesFacTique_Num.Detalle, 
                      dbo.gesFacTique_Num.Unidad, dbo.gesFacTique_Num.Importe, dbo.gesFacTique_Num.SubTotal, dbo.gesFacTique_Num.CodTrabajador, 
                      dbo.gesFacTique_Num.Suceso, dbo.gesFacTique_Num.Operacion, dbo.gesFacTique_Num.Fecha, dbo.gesFacTique_Num.Orden, 
                      dbo.gesFacTique_Num.CodDispositivo, dbo.gesFacTique_Num.Dispositivo, dbo.gesFacTique_Num.Actividad, dbo.gesFacTique_Num.CodZona, 
                      dbo.gesFacTique_Num.Zona, dbo.gesFacTique_Num.CodGrupo, dbo.gesFacTique_Num.Grupo, dbo.gesFacTique_Num.CodFamilia, 
                      dbo.gesFacTique_Num.Familia, dbo.gesFacTique_Num.CodActividad, dbo.gesFacTique_Num.Mesa, dbo.gesFacTique_Num.Cliente, 
                      dbo.gesFacTique_Num.Trabajador, dbo.gesFacTique_Num.CodPeriodo, dbo.gesFacTique_Num.Periodo, dbo.gesFacTique_Num.Activo, 
                      dbo.gesFacTique_Num.Relacion, dbo.gesFacTique_Num.Estadio, dbo.gesFacTique_Num.CodCola, dbo.gesFacTique_Num.CodProducto_Num, 
                      dbo.gesHistoricoFactura.Importe AS ImporteFactura, dbo.gesHistoricoFactura.Cobrada, dbo.gesHistoricoFactura.Numero
FROM         dbo.gesHistoricoFactura INNER JOIN
                      dbo.gesFacTique_Num ON dbo.gesHistoricoFactura.CodFactura = dbo.gesFacTique_Num.CodFactura
WHERE     (NOT (dbo.gesFacTique_Num.CodProducto_Num IS NULL)) AND (dbo.gesFacTique_Num.Suceso <> 'Anulacion') AND 
                      (dbo.gesHistoricoFactura.Importe <> 0)

