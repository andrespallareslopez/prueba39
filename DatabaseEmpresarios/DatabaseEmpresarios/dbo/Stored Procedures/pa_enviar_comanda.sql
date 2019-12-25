
CREATE PROCEDURE [dbo].[pa_enviar_comanda]
@codfactura uniqueidentifier,
@trabajador char(100) AS

declare @codcola int;

SELECT 'Se pudo enviar comanda'
UPDATE gesfactique
SET actividad='Fabricación'
WHERE actividad='Nuevo' and codfactura=@codfactura

INSERT INTO gescola (codfactura,mesa,cliente,fecha,trabajador,estado,operacion,factura,pax)
select codfactura,mesa,cliente,getdate(),@trabajador,'Pendiente','Comanda',numero,pax
from gesfactura where codfactura=@codfactura

set @codcola = (select top 1 codcola from gescola order by codcola desc)


UPDATE gesfactique
SET estadio='Salida',codcola=@codcola
WHERE estadio='Entrada' and suceso='Anulacion' and codfactura=@codfactura

update gesfactique set codcola=@codcola 
where codfactura=@codfactura and codcola is null and estadio='Entrada'
