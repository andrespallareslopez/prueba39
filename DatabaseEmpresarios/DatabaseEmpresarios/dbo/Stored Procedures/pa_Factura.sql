
CREATE PROCEDURE [dbo].[pa_Factura] @CodFactura uniqueidentifier  AS
SELECT t.coddetalle,t.Detalle,t.Unidad,t.Importe,t.Subtotal,tr.alias as [Atendido por ...]
FROM gesfactique as t INNER JOIN gestrabajador as tr on t.codtrabajador=tr.codtrabajador
WHERE t.codfactura=@codfactura and t.suceso='Detalle'
order by t.orden asc
