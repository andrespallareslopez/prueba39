
CREATE PROCEDURE [dbo].[pa_Imprimir_final] @Impresora varchar(100),@codcola int AS
UPDATE gesfactique SET actividad='Servicio' WHERE actividad='Fabricación' and codzona in
 (select codzona from geszonas where dispositivo=@impresora);
UPDATE gesfactique SET suceso='Detalle', operacion='Boleta' WHERE suceso='Comanda' and operacion='Anotación' and codzona in
 (select codzona from geszonas where dispositivo=@impresora);
UPDATE gesfactique SET estadio='Salida' WHERE estadio='Entrada' and codzona in
 (select codzona from geszonas where dispositivo=@impresora);
UPDATE gescola SET estado='Impreso' where estado='Pendiente' and codcola=@codcola;
