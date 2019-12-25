
CREATE PROCEDURE [dbo].[pa_Apertura_del_cajon] @CodTrabajador int,@Trabajador varchar(100),@CodDispositivo int,@Dispositivo char(50),@CodZona int,@Zona varchar(100) AS
INSERT INTO gesfactique (detalle,codtrabajador,trabajador,suceso,operacion,fecha,coddispositivo,dispositivo,codzona,zona)
VALUES ('ABRIR CAJON',@codtrabajador,@trabajador,'Cajon abierto','Apertura de caja',GETDATE(),@coddispositivo,@Dispositivo,@Codzona,@zona);
