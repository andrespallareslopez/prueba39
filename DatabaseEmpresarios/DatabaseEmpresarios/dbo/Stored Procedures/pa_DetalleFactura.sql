
CREATE PROCEDURE [dbo].[pa_DetalleFactura] @CodFactura uniqueidentifier  AS
SELECT t.coddetalle,t.Detalle,t.Unidad,t.Importe,t.Subtotal,tr.alias as [Atendido por ...],t.orden
FROM gesfactique as t INNER JOIN gestrabajador as tr on t.codtrabajador=tr.codtrabajador
WHERE t.codfactura=@codfactura and t.suceso<>'Anulacion' and t.operacion<>'Factura'
order by t.orden;
