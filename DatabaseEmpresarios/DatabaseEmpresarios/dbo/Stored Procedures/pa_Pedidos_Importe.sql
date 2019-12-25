
CREATE PROCEDURE [dbo].[pa_Pedidos_Importe] @CodPedido uniqueidentifier,@Recibi bit AS
SELECT sum(subtotal)
FROM gespedidodetalle
WHERE codpedido=@codpedido
AND recibi=@recibi;
