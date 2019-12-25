
CREATE PROCEDURE [dbo].[pa_Pedidos_Total2] @CodPedido uniqueidentifier AS
declare @total as decimal(18,2)

SELECT @total=sum(subtotal)
FROM gespedidodetalle
WHERE codpedido=@codpedido;
return @total