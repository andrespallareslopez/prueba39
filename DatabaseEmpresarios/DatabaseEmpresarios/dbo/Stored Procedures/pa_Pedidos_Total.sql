
CREATE PROCEDURE [dbo].[pa_Pedidos_Total] @CodPedido uniqueidentifier AS
SELECT sum(subtotal)
FROM gespedidodetalle
WHERE codpedido=@codpedido;
